#include <stdio.h>
#include <time.h>
#include <assert.h>
#include <stdlib.h>
#include <math.h>
#include <sys/time.h>
#include <string.h>

#define BUFFER_SIZE 16
#define STR_SIZE (256)
#define MAX_PD (3.0e6)
/* required precision in degrees	*/
#define PRECISION 0.001
#define SPEC_HEAT_SI 1.75e6
#define K_SI 100
/* capacitance fitting factor	*/
#define FACTOR_CHIP 0.5

/* chip parameters	*/
float t_chip = 0.0005;
float chip_height = 0.016;
float chip_width = 0.016;
/* ambient temperature, assuming no package at all	*/
float amb_temp = 80.0;

void fatal(char *s)
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

float accuracy(float *arr1, float *arr2, int len)
{
    float err = 0.0;
    int i;
    for (i = 0; i < len; i++)
    {
        err += (arr1[i] - arr2[i]) * (arr1[i] - arr2[i]);
    }

    return (float)sqrt(err / len);
}
//////////////// LOAD STORE COMPUTE FUNCTIONS ///////////////////

// Load function to fetch a tile from tIn
void load_tIn_tile(float *tIn, float tIn_tile[BUFFER_SIZE][BUFFER_SIZE][BUFFER_SIZE], int x, int y, int z, int nx, int ny, int nz)
{
    for (int dz = 0; dz < BUFFER_SIZE && z + dz < nz; ++dz)
    {
        for (int dy = 0; dy < BUFFER_SIZE && y + dy < ny; ++dy)
        {
            for (int dx = 0; dx < BUFFER_SIZE && x + dx < nx; ++dx)
            {
                int src_index = (x + dx) + (y + dy) * nx + (z + dz) * nx * ny;
                tIn_tile[dx][dy][dz] = tIn[src_index];
            }
        }
    }
}

// Load function to fetch a tile from pIn
void load_pIn_tile(float *pIn, float pIn_tile[BUFFER_SIZE][BUFFER_SIZE][BUFFER_SIZE], int x, int y, int z, int nx, int ny, int nz)
{
    for (int dz = 0; dz < BUFFER_SIZE && z + dz < nz; ++dz)
    {
        for (int dy = 0; dy < BUFFER_SIZE && y + dy < ny; ++dy)
        {
            for (int dx = 0; dx < BUFFER_SIZE && x + dx < nx; ++dx)
            {
                int src_index = (x + dx) + (y + dy) * nx + (z + dz) * nx * ny;
                pIn_tile[dx][dy][dz] = pIn[src_index];
            }
        }
    }
}

void compute_tile(float pIn_tile[BUFFER_SIZE][BUFFER_SIZE][BUFFER_SIZE], float tIn_tile[BUFFER_SIZE][BUFFER_SIZE][BUFFER_SIZE], float tOut_tile[BUFFER_SIZE][BUFFER_SIZE][BUFFER_SIZE], int nx, int ny, int nz,
                  float Cap, float Rx, float Ry, float Rz, float dt)
{
    float ce, cw, cn, cs, ct, cb, cc;
    float stepDivCap = dt / Cap;
    ce = cw = stepDivCap / Rx;
    cn = cs = stepDivCap / Ry;
    ct = cb = stepDivCap / Rz;
    cc = 1.0 - (2.0 * ce + 2.0 * cn + 3.0 * ct);

    for (int dz = 0; dz < BUFFER_SIZE; ++dz)
    {
        for (int dy = 0; dy < BUFFER_SIZE; ++dy)
        {
            for (int dx = 0; dx < BUFFER_SIZE; ++dx)
            {
                if (dx < nx && dy < ny && dz < nz)
                {
                    int c = dx + dy * BUFFER_SIZE + dz * BUFFER_SIZE * BUFFER_SIZE;
                    int x = dx, y = dy, z = dz;
                    int w = (x == 0) ? c : c - 1;
                    int e = (x == nx - 1) ? c : c + 1;
                    int n = (y == 0) ? c : c - BUFFER_SIZE;
                    int s = (y == ny - 1) ? c : c + BUFFER_SIZE;
                    int b = (z == 0) ? c : c - BUFFER_SIZE * BUFFER_SIZE;
                    int t = (z == nz - 1) ? c : c + BUFFER_SIZE * BUFFER_SIZE;

                    tOut_tile[dx][dy][dz] = tIn_tile[dx][dy][dz] * cc + tIn_tile[n][dy][dz] * cn + tIn_tile[s][dy][dz] * cs +
                                            tIn_tile[e][dy][dz] * ce + tIn_tile[w][dy][dz] * cw + tIn_tile[t][dy][dz] * ct +
                                            tIn_tile[b][dy][dz] * cb + (dt / Cap) * pIn_tile[dx][dy][dz] + ct * amb_temp;
                }
            }
        }
    }
}

void store_tOut_tile(float tOut_tile[BUFFER_SIZE][BUFFER_SIZE][BUFFER_SIZE], float *tOut, int x, int y, int z, int nx, int ny, int nz)
{
    for (int dz = 0; dz < BUFFER_SIZE && z + dz < nz; ++dz)
    {
        for (int dy = 0; dy < BUFFER_SIZE && y + dy < ny; ++dy)
        {
            for (int dx = 0; dx < BUFFER_SIZE && x + dx < nx; ++dx)
            {
                int src_index = dx + dy * BUFFER_SIZE + dz * BUFFER_SIZE * BUFFER_SIZE;
                int dst_index = (x + dx) + (y + dy) * nx + (z + dz) * nx * ny;
                tOut[dst_index] = tOut_tile[dx][dy][dz];
            }
        }
    }
}

// The tile compatible computeTempCPU Code
void computeTempCPU(float *pIn, float *tIn, float *tOut,
                    int nx, int ny, int nz, float Cap,
                    float Rx, float Ry, float Rz,
                    float dt, int numiter)
{
    float ce, cw, cn, cs, ct, cb, cc;
    float stepDivCap = dt / Cap;
    ce = cw = stepDivCap / Rx;
    cn = cs = stepDivCap / Ry;
    ct = cb = stepDivCap / Rz;

    cc = 1.0 - (2.0 * ce + 2.0 * cn + 3.0 * ct);

    int c, w, e, n, s, b, t;
    int x, y, z;

    // Iterate over the grid in tiles
    for (int iter = 0; iter < numiter; ++iter)
    {
        for (z = 0; z < nz; z += BUFFER_SIZE)
        {
            for (y = 0; y < ny; y += BUFFER_SIZE)
            {
                for (int x = 0; x < nx; x += BUFFER_SIZE)
                {
                    // Create buffers for tIn_tile, tOut_tile, and pIn_tile
                    float tIn_tile[BUFFER_SIZE][BUFFER_SIZE][BUFFER_SIZE];
                    float tOut_tile[BUFFER_SIZE][BUFFER_SIZE][BUFFER_SIZE];
                    float pIn_tile[BUFFER_SIZE][BUFFER_SIZE][BUFFER_SIZE];

                    // Load tile from tIn into tIn_tile
                    load_tIn_tile(tIn, tIn_tile, x, y, z, nx, ny, nz);
                    load_pIn_tile(pIn, pIn_tile, x, y, z, nx, ny, nz);

                    // Compute the tile using the loaded data
                    compute_tile(pIn_tile, tIn_tile, tOut_tile, nx, ny, nz, Cap, Rx, Ry, Rz, dt);

                    // Store the computed tile back to tOut
                    store_tOut_tile(tOut_tile, tOut, x, y, z, nx, ny, nz);
                }
            }
        }

        // Swap tIn and tOut pointers after processing a set of tiles
        float *temp = tIn;
        tIn = tOut;
        tOut = temp;
    }
}

//////////////// END OF LOAD STORE COMPUTE  /////////////////////
/*
void computeTempCPU(float *pIn, float *tIn, float *tOut,
                    int nx, int ny, int nz, float Cap,
                    float Rx, float Ry, float Rz,
                    float dt, int numiter)
{
    float ce, cw, cn, cs, ct, cb, cc;
    float stepDivCap = dt / Cap;
    ce = cw = stepDivCap / Rx;
    cn = cs = stepDivCap / Ry;
    ct = cb = stepDivCap / Rz;

    cc = 1.0 - (2.0 * ce + 2.0 * cn + 3.0 * ct);

    int c, w, e, n, s, b, t;
    int x, y, z;
    int i = 0;
    do
    {
        for (z = 0; z < nz; z++)
            for (y = 1; y < ny; y++)
                for (x = 0; x < nx; x++)
                {
                    c = x + y * nx + z * nx * ny;

                    w = (x == 0) ? c : c - 1;
                    e = (x == nx - 1) ? c : c + 1;
                    n = (y == 0) ? c : c - nx;
                    s = (y == ny - 1) ? c : c + nx;
                    b = (z == 0) ? c : c - nx * ny;
                    t = (z == nz - 1) ? c : c + nx * ny;

                    tOut[c] = tIn[c] * cc + tIn[n] * cn + tIn[s] * cs + tIn[e] * ce + tIn[w] * cw + tIn[t] * ct + tIn[b] * cb + (dt / Cap) * pIn[c] + ct * amb_temp;
                }
        float *temp = tIn;
        tIn = tOut;
        tOut = temp;
        i++;
    } while (i < numiter);
}
*/
void computeTempOMP(float *pIn, float *tIn, float *tOut,
                    int nx, int ny, int nz, float Cap,
                    float Rx, float Ry, float Rz,
                    float dt, int numiter)
{

    float ce, cw, cn, cs, ct, cb, cc;

    float stepDivCap = dt / Cap;
    ce = cw = stepDivCap / Rx;
    cn = cs = stepDivCap / Ry;
    ct = cb = stepDivCap / Rz;

    cc = 1.0 - (2.0 * ce + 2.0 * cn + 3.0 * ct);

#pragma omp parallel
    {
        int count = 0;
        float *tIn_t = tIn;
        float *tOut_t = tOut;

#pragma omp master
        printf("%d threads running\n", omp_get_num_threads());

        do
        {
            int z;
#pragma omp for
            for (z = 0; z < nz; z++)
            {
                int y;
                for (y = 0; y < ny; y++)
                {
                    int x;
                    for (x = 0; x < nx; x++)
                    {
                        int c, w, e, n, s, b, t;
                        c = x + y * nx + z * nx * ny;
                        w = (x == 0) ? c : c - 1;
                        e = (x == nx - 1) ? c : c + 1;
                        n = (y == 0) ? c : c - nx;
                        s = (y == ny - 1) ? c : c + nx;
                        b = (z == 0) ? c : c - nx * ny;
                        t = (z == nz - 1) ? c : c + nx * ny;
                        tOut_t[c] = cc * tIn_t[c] + cw * tIn_t[w] + ce * tIn_t[e] + cs * tIn_t[s] + cn * tIn_t[n] + cb * tIn_t[b] + ct * tIn_t[t] + (dt / Cap) * pIn[c] + ct * amb_temp;
                    }
                }
            }
            float *t = tIn_t;
            tIn_t = tOut_t;
            tOut_t = t;
            count++;
        } while (count < numiter);
    }
    return;
}

void usage(int argc, char **argv)
{
    fprintf(stderr, "Usage: %s <rows/cols> <layers> <iterations> <powerFile> <tempFile> <outputFile>\n", argv[0]);
    fprintf(stderr, "\t<rows/cols>  - number of rows/cols in the grid (positive integer)\n");
    fprintf(stderr, "\t<layers>  - number of layers in the grid (positive integer)\n");

    fprintf(stderr, "\t<iteration> - number of iterations\n");
    fprintf(stderr, "\t<powerFile>  - name of the file containing the initial power values of each cell\n");
    fprintf(stderr, "\t<tempFile>  - name of the file containing the initial temperature values of each cell\n");
    fprintf(stderr, "\t<outputFile - output file\n");
    exit(1);
}

int main(int argc, char **argv)
{
    if (argc != 7)
    {
        usage(argc, argv);
    }

    char *pfile, *tfile, *ofile; // *testFile;
    int iterations = atoi(argv[3]);

    pfile = argv[4];
    tfile = argv[5];
    ofile = argv[6];
    // testFile = argv[7];
    int numCols = atoi(argv[1]);
    int numRows = atoi(argv[1]);
    int layers = atoi(argv[2]);

    /* calculating parameters*/

    float dx = chip_height / numRows;
    float dy = chip_width / numCols;
    float dz = t_chip / layers;

    float Cap = FACTOR_CHIP * SPEC_HEAT_SI * t_chip * dx * dy;
    float Rx = dy / (2.0 * K_SI * t_chip * dx);
    float Ry = dx / (2.0 * K_SI * t_chip * dy);
    float Rz = dz / (K_SI * dx * dy);

    // cout << Rx << " " << Ry << " " << Rz << endl;
    float max_slope = MAX_PD / (FACTOR_CHIP * t_chip * SPEC_HEAT_SI);
    float dt = PRECISION / max_slope;

    float *powerIn, *tempOut, *tempIn, *tempCopy; // *pCopy;
    //    float *d_powerIn, *d_tempIn, *d_tempOut;
    int size = numCols * numRows * layers;

    powerIn = (float *)calloc(size, sizeof(float));
    tempCopy = (float *)malloc(size * sizeof(float));
    tempIn = (float *)calloc(size, sizeof(float));
    tempOut = (float *)calloc(size, sizeof(float));
    // pCopy = (float*)calloc(size,sizeof(float));
    float *answer = (float *)calloc(size, sizeof(float));

    // outCopy = (float*)calloc(size, sizeof(float));
    readinput(powerIn, numRows, numCols, layers, pfile);
    readinput(tempIn, numRows, numCols, layers, tfile);

    memcpy(tempCopy, tempIn, size * sizeof(float));

    struct timeval start, stop;
    float time;
    gettimeofday(&start, NULL);
    computeTempOMP(powerIn, tempIn, tempOut, numCols, numRows, layers, Cap, Rx, Ry, Rz, dt, iterations);
    gettimeofday(&stop, NULL);
    time = (stop.tv_usec - start.tv_usec) * 1.0e-6 + stop.tv_sec - start.tv_sec;
    computeTempCPU(powerIn, tempCopy, answer, numCols, numRows, layers, Cap, Rx, Ry, Rz, dt, iterations);

    float acc = accuracy(tempOut, answer, numRows * numCols * layers);
    printf("Time: %.3f (s)\n", time);
    printf("Accuracy: %e\n", acc);
    writeoutput(tempOut, numRows, numCols, layers, ofile);
    free(tempIn);
    free(tempOut);
    free(powerIn);
    return 0;
}
