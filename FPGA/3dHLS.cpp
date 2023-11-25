#include <stdio.h>
#include <time.h>
#include <assert.h>
#include <stdlib.h>
#include <math.h>
#include <sys/time.h>
#include <string.h>
#include "3dHLS.h"
#define PARA_FACTOR 16
// float t_chip = 0.0005;
// float chip_height = 0.016;
// float chip_width = 0.016;
// /* ambient temperature, assuming no package at all	*/
// float amb_temp = 80.0;

void buffer_load(float *dest, float *source)
{
  memcpy(dest, source, sizeof(float) * GRID_ROWS * GRID_COLS);
}

void compute(float result_buf[GRID_ROWS * GRID_COLS], float center_buf[GRID_ROWS * GRID_COLS], float top_buf[GRID_ROWS * GRID_COLS], float bottom_buf[GRID_ROWS * GRID_COLS],
             float power_buf[GRID_ROWS * GRID_COLS], float cc, float cn, float cs, float ce, float cw, float ct, float cb, float Cap, float dt, float amb_temp, int iteration)
{

  int x, y, z;
  int c, w, e, n, s, b, t;
  int i, j, k, ii;
  #pragma HLS array_partition variable=center_buf cyclic factor=16 dim=0
  #pragma HLS array_partition variable=top_buf cyclic factor=16 dim=0
  #pragma HLS array_partition variable=bottom_buf cyclic factor=16 dim=0
  #pragma HLS array_partition variable=result_buf cyclic factor=16 dim=0
  #pragma HLS array_partition variable=power_buf cyclic factor=16 dim=0
  
  for (y = 0; y < GRID_COLS; y++)
  #pragma HLS pipeline II=1
    for (x = 0; x < GRID_ROWS; x++)
    {
      #pragma HLS unroll
      // c = x + y * GRID_ROWS + z * GRID_ROWS * GRID_COLS;
      c = x + y * GRID_ROWS;

      w = (x == 0) ? c : c - 1;
      e = (x == GRID_ROWS - 1) ? c : c + 1;
      n = (y == 0) ? c : c - GRID_ROWS;
      s = (y == GRID_COLS - 1) ? c : c + GRID_ROWS;
      // b = (z == 0) ? c : c - GRID_ROWS * GRID_COLS;
      // t = (z == LAYERS - 1) ? c : c + GRID_ROWS * GRID_COLS;

      result_buf[c] = center_buf[c] * cc + center_buf[n] * cn + center_buf[s] * cs + center_buf[e] * ce + center_buf[w] * cw + top_buf[c] * ct + bottom_buf[c] * cb + (dt / Cap) * power_buf[c] + ct * amb_temp;
      
        
    }
    /*
    float temp_w[PARA_FACTOR], temp_e[PARA_FACTOR], temp_s[PARA_FACTOR], temp_n[PARA_FACTOR], temp_center[PARA_FACTOR], power_center[PARA_FACTOR], temp_b[PARA_FACTOR], temp_t[PARA_FACTOR] ;

    float temp_rf1 [PARA_FACTOR][GRID_COLS * 2 / PARA_FACTOR + 1];
    float temp_rf2 [PARA_FACTOR][GRID_COLS * 2 / PARA_FACTOR + 1];
    float temp_rf3 [PARA_FACTOR][GRID_COLS * 2 / PARA_FACTOR + 1];

    #pragma HLS array_partition variable=temp_rf1 complete dim=0
    #pragma HLS array_partition variable=temp_rf2 complete dim=0
    #pragma HLS array_partition variable=temp_rf3 complete dim=0

    for (i = 0 ; i < GRID_COLS * 2 / PARA_FACTOR + 1; i++) {
        #pragma HLS pipeline II=1
        for (j = 0; j < PARA_FACTOR; j++) {
            #pragma HLS unroll
            temp_rf1[j][i] = center_buf[i*PARA_FACTOR + j];
            temp_rf2[j][i] = top_buf[i*PARA_FACTOR + j];
            temp_rf3[j][i] = bottom_buf[i*PARA_FACTOR + j];
        }
    }

    for (i = 0; i < GRID_COLS / PARA_FACTOR * GRID_ROWS ; i++) {
      #pragma HLS pipeline II=1
      for (k = 0; k < PARA_FACTOR; k++) {
        #pragma HLS unroll
        //c = x + y * GRID_ROWS;
        temp_center[k] = temp_rf1[k][GRID_COLS / PARA_FACTOR];
        temp_t[k] = temp_rf2[k][GRID_COLS / PARA_FACTOR];
        temp_b[k] = temp_rf3[k][GRID_COLS / PARA_FACTOR];

        temp_w[k] = ((i % (GRID_COLS / PARA_FACTOR)) == 0 && k == 0) ? temp_center[k] : temp_rf1[(k - 1 + PARA_FACTOR) % PARA_FACTOR][GRID_COLS / PARA_FACTOR - (k == 0) ];
        temp_e[k] = ((i % (GRID_COLS / PARA_FACTOR)) == (GRID_COLS / PARA_FACTOR - 1) && k == PARA_FACTOR - 1) ? temp_center[k] : temp_rf1[(k + 1 + PARA_FACTOR) % PARA_FACTOR][GRID_COLS / PARA_FACTOR + (k == (PARA_FACTOR - 1)) ];
        temp_n[k] = (i < GRID_COLS / PARA_FACTOR) ? temp_center[k] : temp_rf1[k][0];
        temp_s[k] = (i >= GRID_COLS / PARA_FACTOR * (GRID_ROWS - 1)) ? temp_center[k] : temp_rf1[k][GRID_COLS / PARA_FACTOR * 2];
        // w = (x == 0) ? c : c - 1;
        // e = (x == GRID_ROWS - 1) ? c : c + 1;
        // n = (y == 0) ? c : c - GRID_ROWS;
        // s = (y == GRID_COLS - 1) ? c : c + GRID_ROWS;
        power_center[k] = power_buf[i * PARA_FACTOR + k];
        // temp_b[k] = bottom_buf[i * PARA_FACTOR + k];
        // temp_t[k] = top_buf[i * PARA_FACTOR + k];

        result_buf[i * PARA_FACTOR + k] = temp_center[k] * cc + temp_n[k] * cn + temp_s[k] * cs \
         + temp_e[k] * ce + temp_w[k] * cw + temp_t[k] * ct + temp_b[k] * cb \
          + (dt / Cap) * power_center[k] + ct * amb_temp;
        
      }
    }

      for (k = 0; k < PARA_FACTOR; k++) {
            #pragma hls unroll
            for (j = 0; j < GRID_COLS * 2 / PARA_FACTOR; j++) {
                #pragma hls unroll
                temp_rf1[k][j] = temp_rf1[k][j + 1];
                temp_rf2[k][j] = temp_rf2[k][j + 1];
                temp_rf3[k][j] = temp_rf3[k][j + 1];
            }
            temp_rf1[k][GRID_COLS * 2 / PARA_FACTOR] = center_buf[GRID_COLS * 2 + (i + 1) * PARA_FACTOR + k];
            temp_rf2[k][GRID_COLS * 2 / PARA_FACTOR] = top_buf[GRID_COLS * 2 + (i + 1) * PARA_FACTOR + k];
            temp_rf3[k][GRID_COLS * 2 / PARA_FACTOR] = bottom_buf[GRID_COLS * 2 + (i + 1) * PARA_FACTOR + k];
        }*/
}

void buffer_store(float *dest, float *source)
{
  memcpy(dest, source, sizeof(float) * GRID_ROWS * GRID_COLS);
}

void hotspot_HW(float *result, float *temp, float *power, float Cap, float Rx, float Ry, float Rz, float dt, float amb_temp)
{

  printf("start hotspot\n");
  // if (argc != 7)
  // {
  //   usage(argc, argv);
  // }

  // char *pfile, *tfile, *ofile; // *testFile;
  // int iterations = atoi(argv[3]);

  // pfile = argv[4];
  // tfile = argv[5];
  // ofile = argv[6];
  // // testFile = argv[7];
  // int numCols = atoi(argv[1]);
  // int numRows = atoi(argv[1]);
  // int layers = atoi(argv[2]);

  // float dx = chip_height / numRows;
  // float dy = chip_width / numCols;
  // float dz = t_chip / layers;

  // float Cap = FACTOR_CHIP * SPEC_HEAT_SI * t_chip * dx * dy;
  // float Rx = dy / (2.0 * K_SI * t_chip * dx);
  // float Ry = dx / (2.0 * K_SI * t_chip * dy);
  // float Rz = dz / (K_SI * dx * dy);

  // cout << Rx << " " << Ry << " " << Rz << endl;
  // float max_slope = MAX_PD / (FACTOR_CHIP * t_chip * SPEC_HEAT_SI);
  // float dt = PRECISION / max_slope;

  //float *powerIn, *tempOut, *tempIn, *tempCopy; // *pCopy;
  //    float *d_powerIn, *d_tempIn, *d_tempOut;
  //int size = numCols * numRows * layers;

  // powerIn = (float *)calloc(size, sizeof(float));
  // tempCopy = (float *)malloc(size * sizeof(float));
  // tempIn = (float *)calloc(size, sizeof(float));
  // tempOut = (float *)calloc(size, sizeof(float));
  // pCopy = (float*)calloc(size,sizeof(float));
  // float *answer = (float *)calloc(size, sizeof(float));

  // outCopy = (float*)calloc(size, sizeof(float));
  // readinput(powerIn, numRows, numCols, layers, pfile);
  // readinput(tempIn, numRows, numCols, layers, tfile);

  // memcpy(tempCopy, tempIn, size * sizeof(float));

  int i, j;
  float cc, cn, cs, ce, cw, ct, cb;
  float stepDivCap = dt / Cap;
  ce = cw = stepDivCap / Rx;
  cn = cs = stepDivCap / Ry;
  ct = cb = stepDivCap / Rz;

  cc = 1.0 - (2.0 * ce + 2.0 * cn + 3.0 * ct);

  // float temp_buf[3 * GRID_ROWS * GRID_COLS];
  float top_buf[GRID_ROWS * GRID_COLS];
  float center_buf[GRID_ROWS * GRID_COLS];
  float bottom_buf[GRID_ROWS * GRID_COLS];
  float power_buf[GRID_ROWS * GRID_COLS];
  float result_buf[GRID_ROWS * GRID_COLS];

  // make 3 buffers
  // float centerBuf[GRID_ROWS * GRID_COLS];
  // float topBuf[GRID_ROWS * GRID_COLS];
  // float bottomBuf[GRID_ROWS * GRID_COLS];

  printf("# of iterations is %d\n", ITERATIONS);
  for (i = 0; i < ITERATIONS / 2; i++)
  {
    for (j = 0; j < LAYERS; j++)
    {
      // printf("layer = %d\n", j);
      // buffer_load(temp_buf, temp + 1 * GRID_ROWS * GRID_COLS * j);
      if (j == 0) // bottom case
      {
        
        buffer_load(center_buf, temp + GRID_ROWS * GRID_COLS * j);    // load for center layer
        buffer_load(top_buf, temp + GRID_ROWS * GRID_COLS * (j + 1)); // load for top layer
        buffer_load(bottom_buf, temp + GRID_ROWS * GRID_COLS * (j));  // load for bottom layer
      }
      else if (j == LAYERS - 1) // top case
      {
        buffer_load(center_buf, temp + GRID_ROWS * GRID_COLS * j);       // load for center layer
        buffer_load(top_buf, temp + GRID_ROWS * GRID_COLS * (j));        // load for top layer
        buffer_load(bottom_buf, temp + GRID_ROWS * GRID_COLS * (j - 1)); // load for bottom layer
      }
      else
      {
        buffer_load(center_buf, temp + GRID_ROWS * GRID_COLS * j);       // load for center layer
        buffer_load(top_buf, temp + GRID_ROWS * GRID_COLS * (j + 1));    // load for top layer
        buffer_load(bottom_buf, temp + GRID_ROWS * GRID_COLS * (j - 1)); // load for bottom layer
      }
      
      buffer_load(power_buf, power + GRID_ROWS * GRID_COLS * j);
      // printf("here after load 2\n");
      compute(result_buf, center_buf, top_buf, bottom_buf, power_buf, cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i);
      // printf("here after compute\n");
      buffer_store(result + GRID_ROWS * GRID_COLS * j, result_buf);
      // printf("here after store\n");
    }
    for (j = 0; j < LAYERS; j++)
    {
      // printf("layer = %d\n", j);
      // buffer_load(temp_buf, temp + 1 * GRID_ROWS * GRID_COLS * j);
      if (j == 0) // bottom case
      {
        buffer_load(center_buf, result + GRID_ROWS * GRID_COLS * j);    // load for center layer
        buffer_load(top_buf, result + GRID_ROWS * GRID_COLS * (j + 1)); // load for top layer
        buffer_load(bottom_buf, result + GRID_ROWS * GRID_COLS * (j));  // load for bottom layer
      }
      else if (j == LAYERS - 1) // top case
      {
        buffer_load(center_buf, result + GRID_ROWS * GRID_COLS * j);       // load for center layer
        buffer_load(top_buf, result + GRID_ROWS * GRID_COLS * (j));        // load for top layer
        buffer_load(bottom_buf, result + GRID_ROWS * GRID_COLS * (j - 1)); // load for bottom layer
      }
      else
      {
        buffer_load(center_buf, result + GRID_ROWS * GRID_COLS * j);       // load for center layer
        buffer_load(top_buf, result + GRID_ROWS * GRID_COLS * (j + 1));    // load for top layer
        buffer_load(bottom_buf, result + GRID_ROWS * GRID_COLS * (j - 1)); // load for bottom layer
      }

      buffer_load(power_buf, power + GRID_ROWS * GRID_COLS * j);
      // printf("here after load 2\n");
      compute(result_buf, center_buf, top_buf, bottom_buf, power_buf, cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i);
      // printf("here after compute\n");
      buffer_store(temp + GRID_ROWS * GRID_COLS * j, result_buf);
      // printf("here after store\n");
    }
    
  }
  

  return;
}

// void fatal(char *s)

// {

//   fprintf(stderr, "Error: %s\n", s);
// }

// void readinput(float *vect, int grid_rows, int grid_cols, int layers, char *file)
// {

//   int i, j, k;

//   FILE *fp;

//   char str[STR_SIZE];

//   float val;

//   if ((fp = fopen(file, "r")) == 0)

//     fatal("The file was not opened");

//   for (i = 0; i <= grid_rows - 1; i++)

//     for (j = 0; j <= grid_cols - 1; j++)

//       for (k = 0; k <= layers - 1; k++)

//       {

//         if (fgets(str, STR_SIZE, fp) == NULL)
//           fatal("Error reading file\n");

//         if (feof(fp))

//           fatal("not enough lines in file");

//         if ((sscanf(str, "%f", &val) != 1))

//           fatal("invalid file format");

//         vect[i * grid_cols + j + k * grid_rows * grid_cols] = val;
//       }

//   fclose(fp);
// }

// void writeoutputHW(float *vect, int grid_rows, int grid_cols, int layers, char *file)
// {

//   int i, j, k, index = 0;
//   FILE *fp;
//   char str[STR_SIZE];

//   if ((fp = fopen(file, "w")) == 0)
//     printf("The file was not opened\n");

//   for (i = 0; i < grid_rows; i++)
//     for (j = 0; j < grid_cols; j++)
//       for (k = 0; k < layers; k++)
//       {
//         sprintf(str, "%d\t%g\n", index, vect[i * grid_cols + j + k * grid_rows * grid_cols]);
//         fputs(str, fp);
//         index++;
//       }

//   fclose(fp);
// }

// void usage(int argc, char **argv)

// {

//   fprintf(stderr, "Usage: %s <rows/cols> <layers> <iterations> <powerFile> <tempFile> <outputFile>\n", argv[0]);

//   fprintf(stderr, "\t<rows/cols>  - number of rows/cols in the grid (positive integer)\n");

//   fprintf(stderr, "\t<layers>  - number of layers in the grid (positive integer)\n");

//   fprintf(stderr, "\t<iteration> - number of iterations\n");

//   fprintf(stderr, "\t<powerFile>  - name of the file containing the initial power values of each cell\n");

//   fprintf(stderr, "\t<tempFile>  - name of the file containing the initial temperature values of each cell\n");

//   fprintf(stderr, "\t<outputFile - output file\n");

//   exit(1);
// }

// int main(int argc, char **argv)
// {

  

//   // Invoke the top-level-entity

  

//   int i, j, k;
//   int index = 0;
//   for (i = 0; i < 64; i++)

//     for (j = 0; j < 64; j++)

//       for (k = 0; k < 8; k++)

//       {

// //        printf("%d\t%f\n", index, tempIn[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS]);
//       }

//   free(powerIn);
//   free(tempIn);
//   free(tempCopy);
//   free(answer);
//   free(tempOut);
//   printf("Top-Level Entity has ran\n");

//   return 0;
// }
