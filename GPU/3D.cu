#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <math.h>
#include <cuda_runtime.h>
#include <sys/time.h>

#define BLOCK_SIZE 16
#define STR_SIZE 256

#define MAX_PD (3.0e6)
/* required precision in degrees */
#define PRECISION 0.001
#define SPEC_HEAT_SI 1.75e6
#define K_SI 100
/* capacitance fitting factor */
#define FACTOR_CHIP 0.5

/* chip parameters */
float t_chip = 0.0005;
float chip_height = 0.016;
float chip_width = 0.016;
/* ambient temperature, assuming no package at all */
float amb_temp = 80.0;

void fatal(const char *s)
{
  fprintf(stderr, "Error: %s\n", s);
}

void readinput(float *vect, int grid_rows, int grid_cols, int layers, char *file)
{
  int i, j, k;
  FILE *fp;
  char str[STR_SIZE];
  float val;

  if ((fp = fopen(file, "r")) == 0)
    fatal("The file was not opened");

  for (i = 0; i <= grid_rows - 1; i++)
    for (j = 0; j <= grid_cols - 1; j++)
      for (k = 0; k <= layers - 1; k++)
      {
        if (fgets(str, STR_SIZE, fp) == NULL)
          fatal("Error reading file\n");
        if (feof(fp))
          fatal("not enough lines in file");
        if ((sscanf(str, "%f", &val) != 1))
          fatal("invalid file format");
        vect[i * grid_cols + j + k * grid_rows * grid_cols] = val;
      }

  fclose(fp);
}

void writeoutput(float *vect, int grid_rows, int grid_cols, int layers, char *file)
{
  int i, j, k, index = 0;
  FILE *fp;
  char str[STR_SIZE];

  if ((fp = fopen(file, "w")) == 0)
    printf("The file was not opened\n");

  for (i = 0; i < grid_rows; i++)
    for (j = 0; j < grid_cols; j++)
      for (k = 0; k < layers; k++)
      {
        sprintf(str, "%d\t%g\n", index, vect[i * grid_cols + j + k * grid_rows * grid_cols]);
        fputs(str, fp);
        index++;
      }

  fclose(fp);
}

__global__ void computeTempGPU(float *pIn, float *tIn, float *tOut,
                               int nx, int ny, int nz, float Cap,
                               float Rx, float Ry, float Rz,
                               float dt, int numiter)
{
  extern __shared__ float shared_mem[];

  int x = blockIdx.x * blockDim.x + threadIdx.x;
  int y = blockIdx.y * blockDim.y + threadIdx.y;
  int z = blockIdx.z * blockDim.z + threadIdx.z;

  int local_x = threadIdx.x;
  int local_y = threadIdx.y;
  int local_z = threadIdx.z;

  int shared_size_x = blockDim.x + 2;
  int shared_size_y = blockDim.y + 2;
  int shared_size_z = blockDim.z + 2;

  int shared_index = local_x + local_y * shared_size_x + local_z * shared_size_x * shared_size_y;

  if (x < nx && y < ny && z < nz)
  {
    int c = x + y * nx + z * nx * ny;

    float ce, cw, cn, cs, ct, cb, cc;
    float stepDivCap = dt / Cap;
    ce = cw = stepDivCap / Rx;
    cn = cs = stepDivCap / Ry;
    ct = cb = stepDivCap / Rz;

    cc = 1.0 - (2.0 * ce + 2.0 * cn + 3.0 * ct);

    for (int iter = 0; iter < numiter; ++iter)
    {
      shared_mem[shared_index] = tIn[c];

      __syncthreads();

      int w = local_x > 0 ? shared_index - 1 : c;
      int e = local_x < blockDim.x - 1 ? shared_index + 1 : c;
      int n = local_y > 0 ? shared_index - shared_size_x : c;
      int s = local_y < blockDim.y - 1 ? shared_index + shared_size_x : c;
      int b = local_z > 0 ? shared_index - shared_size_x * shared_size_y : c;
      int t = local_z < blockDim.z - 1 ? shared_index + shared_size_x * shared_size_y : c;

      tOut[c] = cc * shared_mem[shared_index] +
                cw * shared_mem[w] +
                ce * shared_mem[e] +
                cs * shared_mem[s] +
                cn * shared_mem[n] +
                cb * shared_mem[b] +
                ct * shared_mem[t] +
                (dt / Cap) * pIn[c] +
                ct * amb_temp;

      // Swap pointers for the next iteration
      float *temp = tIn;
      tIn = tOut;
      tOut = temp;

      __syncthreads();
    }
  }
}

int main(int argc, char **argv)
{
  if (argc != 7)
  {
    fprintf(stderr, "Usage: %s <rows/cols> <layers> <iterations> <powerFile> <tempFile> <outputFile>\n", argv[0]);
    exit(1);
  }

  char *pfile, *tfile, *ofile;
  int iterations = atoi(argv[3]);

  pfile = argv[4];
  tfile = argv[5];
  ofile = argv[6];
  int numCols = atoi(argv[1]);
  int numRows = atoi(argv[1]);
  int layers = atoi(argv[2]);

  /* calculating parameters */

  float dx = chip_height / numRows;
  float dy = chip_width / numCols;
  float dz = t_chip / layers;

  float Cap = FACTOR_CHIP * SPEC_HEAT_SI * t_chip * dx * dy;
  float Rx = dy / (2.0 * K_SI * t_chip * dx);
  float Ry = dx / (2.0 * K_SI * t_chip * dy);
  float Rz = dz / (K_SI * dx * dy);

  float max_slope = MAX_PD / (FACTOR_CHIP * t_chip * SPEC_HEAT_SI);
  float dt = PRECISION / max_slope;

  float *powerIn, *tempOut, *tempIn;
  int size = numCols * numRows * layers;

  powerIn = (float *)calloc(size, sizeof(float));
  tempIn = (float *)calloc(size, sizeof(float));
  tempOut = (float *)calloc(size, sizeof(float));

  readinput(powerIn, numRows, numCols, layers, pfile);
  readinput(tempIn, numRows, numCols, layers, tfile);

  // Device memory
  float *d_powerIn, *d_tempIn, *d_tempOut;

  cudaMalloc((void **)&d_powerIn, size * sizeof(float));
  cudaMalloc((void **)&d_tempIn, size * sizeof(float));
  cudaMalloc((void **)&d_tempOut, size * sizeof(float));

  // Copy input data to device
  cudaMemcpy(d_powerIn, powerIn, size * sizeof(float), cudaMemcpyHostToDevice);
  cudaMemcpy(d_tempIn, tempIn, size * sizeof(float), cudaMemcpyHostToDevice);

  dim3 block_dim(BLOCK_SIZE, BLOCK_SIZE, BLOCK_SIZE);
  dim3 grid_dim((numCols + BLOCK_SIZE - 1) / BLOCK_SIZE, (numRows + BLOCK_SIZE - 1) / BLOCK_SIZE, (layers + BLOCK_SIZE - 1) / BLOCK_SIZE);

  size_t shared_mem_size = (BLOCK_SIZE + 2) * (BLOCK_SIZE + 2) * (BLOCK_SIZE + 2) * sizeof(float);

  // Launch GPU kernel
  computeTempGPU<<<grid_dim, block_dim, shared_mem_size>>>(d_powerIn, d_tempIn, d_tempOut, numCols, numRows, layers, Cap, Rx, Ry, Rz, dt, iterations);

  // Copy result back to host
  cudaMemcpy(tempOut, d_tempOut, size * sizeof(float), cudaMemcpyDeviceToHost);

  // Write output to file
  writeoutput(tempOut, numRows, numCols, layers, ofile);

  // Cleanup
  cudaFree(d_powerIn);
  cudaFree(d_tempIn);
  cudaFree(d_tempOut);
  free(powerIn);
  free(tempIn);
  free(tempOut);

  return 0;
}
