#include <stdio.h>
#include <time.h>
#include <assert.h>
#include <stdlib.h>
#include <math.h>
#include <sys/time.h>
#include <string.h>
#include "3dHLS.h"

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
             float power_buf[GRID_ROWS * GRID_COLS], float cc, float cn, float cs, float ce, float cw, float ct, float cb, float Cap, float dt, float amb_temp)
{

  int x, y, z;
  int c, w, e, n, s, b, t;

  for (y = 0; y < GRID_COLS; y++)
    for (x = 0; x < GRID_ROWS; x++)
    {
      // c = x + y * GRID_ROWS + z * GRID_ROWS * GRID_COLS;
      c = x + y * GRID_ROWS;

      w = (x == 0) ? c : c - 1;
      e = (x == GRID_ROWS - 1) ? c : c + 1;
      n = (y == 0) ? c : c - GRID_ROWS;
      s = (y == GRID_COLS - 1) ? c : c + GRID_ROWS;
      // b = (z == 0) ? c : c - GRID_ROWS * GRID_COLS;
      // t = (z == LAYERS - 1) ? c : c + GRID_ROWS * GRID_COLS;


      
      //result_buf[c] = center_buf[c] * cc + center_buf[n] * cn + center_buf[s] * cs + center_buf[e] * ce + center_buf[w] * cw + top_buf[c] * ct + bottom_buf[c] * cb + (dt / Cap) * power_buf[c] + ct * amb_temp;
      
      //       printf("result[%d] = %f\n", c, result_buf[c]);
    }
}

void buffer_store(float *dest, float *source)
{
  memcpy(dest, source, sizeof(float) * GRID_ROWS * GRID_COLS);
}

void hotspot_HW(float *result, float *temp, float *power, int layers, float Cap, float Rx, float Ry, float Rz, float dt, int numCols, int numRows, int iterations, float dx, float dy, float dz, float t_chip, float chip_height, float chip_width, float amb_temp)
{

  
  int size = numCols * numRows * layers;


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

  printf("iterations is %d\n", iterations);
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
//      compute(result_buf, center_buf, top_buf, bottom_buf, power_buf, cc, cn, cs, ce, cw, ct, cb, stepDivCap, dt, amb_temp);

for(int i = 0; i< GRID_ROWS*GRID_COLS;i++){
result_buf[i]=center_buf[i];
}      // printf("here after compute\n");
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
      

	for (int i = 0; i < GRID_ROWS * GRID_COLS; i++){
		result_buf[i] = center_buf[i];
}
// printf("here after load 2\n");
      //compute(result_buf, center_buf, top_buf, bottom_buf, power_buf, cc, cn, cs, ce, cw, ct, cb, stepDivCap, dt, amb_temp);
      // printf("here after compute\n");
      buffer_store(temp + GRID_ROWS * GRID_COLS * j, result_buf);
      // printf("here after store\n");
    }
    
  }
  

  return;
}
