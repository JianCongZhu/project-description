#include <stdio.h>
#include <time.h>
#include <assert.h>
#include <stdlib.h>
#include <math.h>
#include <sys/time.h>
#include <string.h>
#include "3dHLS.h"


void buffer_load(float *dest, ap_uint<LARGE_BUS> *source)
{

  memcpy_wide_bus_read_float(dest, source, 0 * sizeof(float), GRID_COLS * GRID_ROWS * sizeof(float));
}

void compute(float result_buf[GRID_ROWS * GRID_COLS], float center_buf[GRID_ROWS * GRID_COLS], float top_buf[GRID_ROWS * GRID_COLS], float bottom_buf[GRID_ROWS * GRID_COLS],
             float power_buf[GRID_ROWS * GRID_COLS], float cc, float cn, float cs, float ce, float cw, float ct, float cb, float Cap, float dt, float amb_temp, int iteration)
{

  int x, y, z;
  int c, w, e, n, s, b, t;
  int i, j, k, ii;


  float temp_w[PARA_FACTOR], temp_e[PARA_FACTOR], temp_s[PARA_FACTOR], temp_n[PARA_FACTOR], temp_center[PARA_FACTOR], power_center[PARA_FACTOR], temp_b[PARA_FACTOR], temp_t[PARA_FACTOR];

  float temp_rf1[PARA_FACTOR][GRID_COLS * 2 / PARA_FACTOR + 1];
  float temp_rf2[PARA_FACTOR][GRID_COLS * 2 / PARA_FACTOR + 1];
  float temp_rf3[PARA_FACTOR][GRID_COLS * 2 / PARA_FACTOR + 1];

#pragma HLS array_partition variable = temp_rf1 complete dim = 0
#pragma HLS array_partition variable = temp_rf2 complete dim = 0
#pragma HLS array_partition variable = temp_rf3 complete dim = 0

  for (i = 0; i < GRID_COLS * 2 / PARA_FACTOR + 1; i++)
  {
#pragma HLS pipeline II = 1
    for (j = 0; j < PARA_FACTOR; j++)
    {
#pragma HLS unroll
      temp_rf1[j][i] = center_buf[i * PARA_FACTOR + j];
      temp_rf2[j][i] = top_buf[i * PARA_FACTOR + j];
      temp_rf3[j][i] = bottom_buf[i * PARA_FACTOR + j];
    }
  }

  for (i = 0; i < GRID_COLS / PARA_FACTOR * GRID_ROWS; i++)
  {
#pragma HLS pipeline II = 1
    for (k = 0; k < PARA_FACTOR; k++)
    {
#pragma HLS unroll

      temp_center[k] = temp_rf1[k][GRID_COLS / PARA_FACTOR];
      temp_t[k] = temp_rf2[k][GRID_COLS / PARA_FACTOR];
      temp_b[k] = temp_rf3[k][GRID_COLS / PARA_FACTOR];

      temp_w[k] = ((i % (GRID_COLS / PARA_FACTOR)) == 0 && k == 0) ? temp_center[k] : temp_rf1[(k - 1 + PARA_FACTOR) % PARA_FACTOR][GRID_COLS / PARA_FACTOR - (k == 0)];
      temp_e[k] = ((i % (GRID_COLS / PARA_FACTOR)) == (GRID_COLS / PARA_FACTOR - 1) && k == PARA_FACTOR - 1) ? temp_center[k] : temp_rf1[(k + 1 + PARA_FACTOR) % PARA_FACTOR][GRID_COLS / PARA_FACTOR + (k == (PARA_FACTOR - 1))];
      temp_n[k] = (i < GRID_COLS / PARA_FACTOR) ? temp_center[k] : temp_rf1[k][0];
      temp_s[k] = (i >= GRID_COLS / PARA_FACTOR * (GRID_ROWS - 1)) ? temp_center[k] : temp_rf1[k][GRID_COLS / PARA_FACTOR * 2];

      power_center[k] = power_buf[i * PARA_FACTOR + k];

      result_buf[i * PARA_FACTOR + k] = temp_center[k] * cc + temp_n[k] * cn + temp_s[k] * cs + temp_e[k] * ce + temp_w[k] * cw + temp_t[k] * ct + temp_b[k] * cb + (dt / Cap) * power_center[k] + ct * amb_temp;
    }
  }

  for (k = 0; k < PARA_FACTOR; k++)
  {
#pragma hls unroll
    for (j = 0; j < GRID_COLS * 2 / PARA_FACTOR; j++)
    {
#pragma hls unroll
      temp_rf1[k][j] = temp_rf1[k][j + 1];
      temp_rf2[k][j] = temp_rf2[k][j + 1];
      temp_rf3[k][j] = temp_rf3[k][j + 1];
    }
    temp_rf1[k][GRID_COLS * 2 / PARA_FACTOR] = center_buf[GRID_COLS * 2 + (i + 1) * PARA_FACTOR + k];
    temp_rf2[k][GRID_COLS * 2 / PARA_FACTOR] = top_buf[GRID_COLS * 2 + (i + 1) * PARA_FACTOR + k];
    temp_rf3[k][GRID_COLS * 2 / PARA_FACTOR] = bottom_buf[GRID_COLS * 2 + (i + 1) * PARA_FACTOR + k];
  }
}

void buffer_store(ap_uint<LARGE_BUS> *dest, float *source)
{
  memcpy_wide_bus_write_float(dest, source, 0 * sizeof(float), GRID_COLS * GRID_ROWS * sizeof(float));
}

void hotspot_HW(ap_uint<LARGE_BUS> result[GRID_COLS * GRID_ROWS * LAYERS], ap_uint<LARGE_BUS> temp[GRID_COLS * GRID_ROWS * LAYERS], ap_uint<LARGE_BUS> power[GRID_ROWS * GRID_COLS * LAYERS], float Cap, float Rx, float Ry, float Rz, float dt, float amb_temp)
{

  printf("start hotspot\n");

  int i, j, k;

  float cc, cn, cs, ce, cw, ct, cb;
  float stepDivCap = dt / Cap;
  ce = cw = stepDivCap / Rx;
  cn = cs = stepDivCap / Ry;
  ct = cb = stepDivCap / Rz;

  cc = 1.0 - (2.0 * ce + 2.0 * cn + 3.0 * ct);

  float top_buf0[GRID_ROWS * GRID_COLS];
    #pragma HLS array_partition variable=top_buf0 cyclic factor=16
  float center_buf0[GRID_ROWS * GRID_COLS];
    #pragma HLS array_partition variable=center_buf0 cyclic factor=16
  float bottom_buf0[GRID_ROWS * GRID_COLS];
    #pragma HLS array_partition variable=bottom_buf0 cyclic factor=16
  float power_buf0[GRID_ROWS * GRID_COLS];
    #pragma HLS array_partition variable=power_buf0 cyclic factor=16
  float result_buf0[GRID_ROWS * GRID_COLS];
    #pragma HLS array_partition variable=result_buf0 cyclic factor=16

  float top_buf1[GRID_ROWS * GRID_COLS];
      #pragma HLS array_partition variable=top_buf1 cyclic factor=16
  float center_buf1[GRID_ROWS * GRID_COLS];
      #pragma HLS array_partition variable=center_buf1 cyclic factor=16
  float bottom_buf1[GRID_ROWS * GRID_COLS];
    #pragma HLS array_partition variable=bottom_buf1 cyclic factor=16
  float power_buf1[GRID_ROWS * GRID_COLS];
    #pragma HLS array_partition variable=power_buf1 cyclic factor=16
  float result_buf1[GRID_ROWS * GRID_COLS];
    #pragma HLS array_partition variable=result_buf1 cyclic factor=16

  float top_buf2[GRID_ROWS * GRID_COLS];
      #pragma HLS array_partition variable=top_buf2 cyclic factor=16
  float center_buf2[GRID_ROWS * GRID_COLS];
      #pragma HLS array_partition variable=center_buf2 cyclic factor=16
  float bottom_buf2[GRID_ROWS * GRID_COLS];
      #pragma HLS array_partition variable=bottom_buf2 cyclic factor=16
  float power_buf2[GRID_ROWS * GRID_COLS];
    #pragma HLS array_partition variable=power_buf2 cyclic factor=16
  float result_buf2[GRID_ROWS * GRID_COLS];
      #pragma HLS array_partition variable=result_buf2 cyclic factor=16


  for (i = 0; i < ITERATIONS / 2; i++)
  {

    for (j = 0; j < LAYERS; j++)
    {

      for (k = 0; k < 3; k++)
      {

        if (k == 0)
        {
          flowA(result, temp, power, center_buf0, top_buf0, bottom_buf0, power_buf0, result_buf0,
                cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i, j);
        }

        else if (k == 1)
        {
          flowA(result, temp, power, center_buf1, top_buf1, bottom_buf1, power_buf1, result_buf1,
                cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i, j);
        }

        else
        {
          flowA(result, temp, power, center_buf2, top_buf2, bottom_buf2, power_buf2, result_buf2,
                cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i, j);
        }
      }
    }

    for (j = 0; j < LAYERS; j++)
    {
      for (k = 0; k < 3; k++)
      {

        if (k == 0)
        {
          flowA(result, temp, power, center_buf0, top_buf0, bottom_buf0, power_buf0, result_buf0,
                cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i, j);
        }

        else if (k == 1)
        {
          flowA(result, temp, power, center_buf1, top_buf1, bottom_buf1, power_buf1, result_buf1,
                cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i, j);
        }

        else
        {
          flowA(result, temp, power, center_buf2, top_buf2, bottom_buf2, power_buf2, result_buf2,
                cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i, j);
        }
      }
    }
  }

  return;
}

void flowA(ap_uint<LARGE_BUS> result[GRID_COLS * GRID_ROWS * LAYERS],
           ap_uint<LARGE_BUS> temp[GRID_COLS * GRID_ROWS * LAYERS],
           ap_uint<LARGE_BUS> power[GRID_ROWS * GRID_COLS * LAYERS],
           float center_buf[GRID_ROWS * GRID_COLS],
           float top_buf[GRID_ROWS * GRID_COLS],
           float bottom_buf[GRID_ROWS * GRID_COLS],
           float power_buf[GRID_ROWS * GRID_COLS],
           float result_buf[GRID_ROWS * GRID_COLS],
           float cc, float cn, float cs, float ce, float cw, float ct, float cb, float Cap, float dt, float amb_temp, int i, int j)
{

  if (j == 0) // bottom case
  {
    buffer_load(center_buf, temp + (GRID_ROWS * GRID_COLS * j) / 16);    // load for center layer
    buffer_load(top_buf, temp + (GRID_ROWS * GRID_COLS * (j + 1) / 16)); // load for top layer
    buffer_load(bottom_buf, (temp + GRID_ROWS * GRID_COLS * j / 16));    // load for bottom layer
  }
  else if (j == LAYERS - 1) // top case
  {
    buffer_load(center_buf, temp + (GRID_ROWS * GRID_COLS * j) / 16);       // load for center layer
    buffer_load(top_buf, temp + (GRID_ROWS * GRID_COLS * j) / 16);          // load for top layer
    buffer_load(bottom_buf, temp + (GRID_ROWS * GRID_COLS * (j - 1) / 16)); // load for bottom layer
  }
  else
  {
    buffer_load(center_buf, temp + (GRID_ROWS * GRID_COLS * j) / 16);     // load for center layer
    buffer_load(top_buf, temp + GRID_ROWS * GRID_COLS * (j + 1) / 16);    // load for top layer
    buffer_load(bottom_buf, temp + GRID_ROWS * GRID_COLS * (j - 1) / 16); // load for bottom layer
  }

  buffer_load(power_buf, power + GRID_ROWS * GRID_COLS * j / 16);
  compute(result_buf, center_buf, top_buf, bottom_buf, power_buf, cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i);
  buffer_store(result + GRID_ROWS * GRID_COLS * j / 16, result_buf);
}

void flowB(ap_uint<LARGE_BUS> result[GRID_COLS * GRID_ROWS * LAYERS],
           ap_uint<LARGE_BUS> temp[GRID_COLS * GRID_ROWS * LAYERS],
           ap_uint<LARGE_BUS> power[GRID_ROWS * GRID_COLS * LAYERS],
           float center_buf[GRID_ROWS * GRID_COLS],
           float top_buf[GRID_ROWS * GRID_COLS],
           float bottom_buf[GRID_ROWS * GRID_COLS],
           float power_buf[GRID_ROWS * GRID_COLS],
           float result_buf[GRID_ROWS * GRID_COLS],
           float cc, float cn, float cs, float ce, float cw, float ct, float cb, float Cap, float dt, float amb_temp, int i, int j)
{

  if (j == 0) // bottom case
  {
    buffer_load(center_buf, result + GRID_ROWS * GRID_COLS * j / 16);    // load for center layer
    buffer_load(top_buf, result + GRID_ROWS * GRID_COLS * (j + 1 / 16)); // load for top layer
    buffer_load(bottom_buf, result + GRID_ROWS * GRID_COLS * (j) / 16);  // load for bottom layer
  }
  else if (j == LAYERS - 1) // top case
  {
    buffer_load(center_buf, result + GRID_ROWS * GRID_COLS * j / 16);       // load for center layer
    buffer_load(top_buf, result + GRID_ROWS * GRID_COLS * (j) / 16);        // load for top layer
    buffer_load(bottom_buf, result + GRID_ROWS * GRID_COLS * (j - 1) / 16); // load for bottom layer
  }
  else
  {
    buffer_load(center_buf, result + GRID_ROWS * GRID_COLS * j / 16);       // load for center layer
    buffer_load(top_buf, result + GRID_ROWS * GRID_COLS * (j + 1) / 16);    // load for top layer
    buffer_load(bottom_buf, result + GRID_ROWS * GRID_COLS * (j - 1) / 16); // load for bottom layer
  }

  buffer_load(power_buf, power + GRID_ROWS * GRID_COLS * j / 16);
  compute(result_buf, center_buf, top_buf, bottom_buf, power_buf, cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i);
  buffer_store(temp + GRID_ROWS * GRID_COLS * j / 16, result_buf);
}
