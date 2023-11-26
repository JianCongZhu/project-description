#include <stdio.h>
#include <time.h>
#include <assert.h>
#include <stdlib.h>
#include <math.h>
#include <sys/time.h>
#include <string.h>
#include "3dHLS.h"

void buffer_load(int load_flag, float *dest, ap_uint<LARGE_BUS> *source)
{
  if load_flag
    memcpy_wide_bus_read_float(dest, source, 0 * sizeof(float), GRID_COLS * GRID_ROWS * sizeof(float));
}

void compute(int compute_flag, float result_buf[GRID_ROWS * GRID_COLS], float center_buf[GRID_ROWS * GRID_COLS], float top_buf[GRID_ROWS * GRID_COLS], float bottom_buf[GRID_ROWS * GRID_COLS],
             float power_buf[GRID_ROWS * GRID_COLS], float cc, float cn, float cs, float ce, float cw, float ct, float cb, float Cap, float dt, float amb_temp, int iteration)
{
  if compute_flag
  {
    int x, y, z;
    int c, w, e, n, s, b, t;
    int i, j, k, ii;
#pragma HLS array_partition variable = center_buf cyclic factor = 16 dim = 0
#pragma HLS array_partition variable = top_buf cyclic factor = 16 dim = 0
#pragma HLS array_partition variable = bottom_buf cyclic factor = 16 dim = 0
#pragma HLS array_partition variable = result_buf cyclic factor = 16 dim = 0
#pragma HLS array_partition variable = power_buf cyclic factor = 16 dim = 0

    for (y = 0; y < GRID_COLS; y++)
#pragma HLS pipeline II = 1
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
  }
}

void buffer_store(int store_flag, ap_uint<LARGE_BUS> *dest, float *source)
{
  if store_flag
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
#pragma HLS array_partition variable = top_buf0 cyclic factor = 16
  float center_buf0[GRID_ROWS * GRID_COLS];
#pragma HLS array_partition variable = center_buf0 cyclic factor = 16
  float bottom_buf0[GRID_ROWS * GRID_COLS];
#pragma HLS array_partition variable = bottom_buf0 cyclic factor = 16
  float power_buf0[GRID_ROWS * GRID_COLS];
#pragma HLS array_partition variable = power_buf0 cyclic factor = 16
  float result_buf0[GRID_ROWS * GRID_COLS];
#pragma HLS array_partition variable = result_buf0 cyclic factor = 16

  float top_buf1[GRID_ROWS * GRID_COLS];
#pragma HLS array_partition variable = top_buf1 cyclic factor = 16
  float center_buf1[GRID_ROWS * GRID_COLS];
#pragma HLS array_partition variable = center_buf1 cyclic factor = 16
  float bottom_buf1[GRID_ROWS * GRID_COLS];
#pragma HLS array_partition variable = bottom_buf1 cyclic factor = 16
  float power_buf1[GRID_ROWS * GRID_COLS];
#pragma HLS array_partition variable = power_buf1 cyclic factor = 16
  float result_buf1[GRID_ROWS * GRID_COLS];
#pragma HLS array_partition variable = result_buf1 cyclic factor = 16

  float top_buf2[GRID_ROWS * GRID_COLS];
#pragma HLS array_partition variable = top_buf2 cyclic factor = 16
  float center_buf2[GRID_ROWS * GRID_COLS];
#pragma HLS array_partition variable = center_buf2 cyclic factor = 16
  float bottom_buf2[GRID_ROWS * GRID_COLS];
#pragma HLS array_partition variable = bottom_buf2 cyclic factor = 16
  float power_buf2[GRID_ROWS * GRID_COLS];
#pragma HLS array_partition variable = power_buf2 cyclic factor = 16
  float result_buf2[GRID_ROWS * GRID_COLS];
#pragma HLS array_partition variable = result_buf2 cyclic factor = 16

  for (i = 0; i < ITERATIONS / 2; i++)
  {

    for (j = 0; j < LAYERS + 2; j++)
    {
      int load_flag = j >= 0 && k < LAYERS;
      int compute_flag = k >= 1 && k < LAYERS + 1;
      int store_flag = k >= 2 && k < LAYERS + 2;

      if (j % 3 == 0)
      {
        flowA(load_flag, compute_flag, store_flag, result, temp, power, center_buf0, top_buf0, bottom_buf0, power_buf0, power_buf2, result_buf2, result_buf1,
              cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i, j);
      }
      else if (j % 3 == 1)
      {
        flowA(load_flag, compute_flag, store_flag, result, temp, power, center_buf1, top_buf1, bottom_buf1, power_buf1, power_buf0, result_buf0, result_buf2,
              cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i, j);
      }
      else
      {
        flowA(load_flag, compute_flag, store_flag, result, temp, power, center_buf2, top_buf2, bottom_buf2, power_buf2, power_buf1, result_buf1, result_buf0,
              cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i, j);
      }
    }

    for (j = 0; j < LAYERS + 2; j++)
    {
      int load_flag = j >= 0 && k < LAYERS;
      int compute_flag = k >= 1 && k < LAYERS + 1;
      int store_flag = k >= 2 && k < LAYERS + 2;

      if (j % 3 == 0)
      {
        flowB(load_flag, compute_flag, store_flag, result, temp, power, center_buf0,
              top_buf0, bottom_buf0, power_buf0, power_buf2, result_buf2, result_buf1,
              cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i, j);
      }
      else if (j % 3 == 1)
      {
        flowB(load_flag, compute_flag, store_flag, result, temp, power, center_buf1,
              top_buf1, bottom_buf1, power_buf1, power_buf0, result_buf0, result_buf2,
              cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i, j);
      }
      else
      {
        flowB(load_flag, compute_flag, store_flag, result, temp, power, center_buf2,
              top_buf2, bottom_buf2, power_buf2, power_buf1, result_buf1, result_buf0,
              cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i, j);
      }
    }
  }

  return;
}

void flowA(int load_flag, int compute_flag, int store_flag,
           ap_uint<LARGE_BUS> result[GRID_COLS * GRID_ROWS * LAYERS],
           ap_uint<LARGE_BUS> temp[GRID_COLS * GRID_ROWS * LAYERS],
           ap_uint<LARGE_BUS> power[GRID_ROWS * GRID_COLS * LAYERS],
           float center_buf[GRID_ROWS * GRID_COLS],
           float top_buf[GRID_ROWS * GRID_COLS],
           float bottom_buf[GRID_ROWS * GRID_COLS],
           float power_buf0[GRID_ROWS * GRID_COLS],
           float power_buf1[GRID_ROWS * GRID_COLS],
           float result_buf0[GRID_ROWS * GRID_COLS],
           float result_buf1[GRID_ROWS * GRID_COLS],
           float cc, float cn, float cs, float ce, float cw, float ct, float cb, float Cap, float dt, float amb_temp, int i, int j)
{

  if (j == 0) // bottom case
  {
    buffer_load(load_flag, center_buf, temp + (GRID_ROWS * GRID_COLS * j) / 16);    // load for center layer
    buffer_load(load_flag, top_buf, temp + (GRID_ROWS * GRID_COLS * (j + 1) / 16)); // load for top layer
    buffer_load(load_flag, bottom_buf, (temp + GRID_ROWS * GRID_COLS * j / 16));    // load for bottom layer
  }
  else if (j == LAYERS - 1) // top case
  {
    buffer_load(load_flag, center_buf, temp + (GRID_ROWS * GRID_COLS * j) / 16);       // load for center layer
    buffer_load(load_flag, top_buf, temp + (GRID_ROWS * GRID_COLS * j) / 16);          // load for top layer
    buffer_load(load_flag, bottom_buf, temp + (GRID_ROWS * GRID_COLS * (j - 1) / 16)); // load for bottom layer
  }
  else
  {
    buffer_load(load_flag, center_buf, temp + (GRID_ROWS * GRID_COLS * j) / 16);     // load for center layer
    buffer_load(load_flag, top_buf, temp + GRID_ROWS * GRID_COLS * (j + 1) / 16);    // load for top layer
    buffer_load(load_flag, bottom_buf, temp + GRID_ROWS * GRID_COLS * (j - 1) / 16); // load for bottom layer
  }

  buffer_load(load_flag, power_buf0, power + GRID_ROWS * GRID_COLS * j / 16);
  compute(result_flag, result_buf0, center_buf, top_buf, bottom_buf, power_buf1, cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i);
  buffer_store(store_flag, result + GRID_ROWS * GRID_COLS * j / 16, result_buf1);
}

void flowB(int load_flag, int compute_flag, int store_flag,
           ap_uint<LARGE_BUS> result[GRID_COLS * GRID_ROWS * LAYERS],
           ap_uint<LARGE_BUS> temp[GRID_COLS * GRID_ROWS * LAYERS],
           ap_uint<LARGE_BUS> power[GRID_ROWS * GRID_COLS * LAYERS],
           float center_buf[GRID_ROWS * GRID_COLS],
           float top_buf[GRID_ROWS * GRID_COLS],
           float bottom_buf[GRID_ROWS * GRID_COLS],
           float power_buf0[GRID_ROWS * GRID_COLS],
           float power_buf1[GRID_ROWS * GRID_COLS],
           float result_buf0[GRID_ROWS * GRID_COLS],
           float result_buf1[GRID_ROWS * GRID_COLS],
           float cc, float cn, float cs, float ce, float cw, float ct, float cb, float Cap, float dt, float amb_temp, int i, int j)
{

  if (j == 0) // bottom case
  {
    buffer_load(load_flag, center_buf, result + GRID_ROWS * GRID_COLS * j / 16);    // load for center layer
    buffer_load(loag_flag, top_buf, result + GRID_ROWS * GRID_COLS * (j + 1 / 16)); // load for top layer
    buffer_load(load_flag, bottom_buf, result + GRID_ROWS * GRID_COLS * (j) / 16);  // load for bottom layer
  }
  else if (j == LAYERS - 1) // top case
  {
    buffer_load(load_flag, center_buf, result + GRID_ROWS * GRID_COLS * j / 16);       // load for center layer
    buffer_load(load_flag, top_buf, result + GRID_ROWS * GRID_COLS * (j) / 16);        // load for top layer
    buffer_load(load_flag, bottom_buf, result + GRID_ROWS * GRID_COLS * (j - 1) / 16); // load for bottom layer
  }
  else
  {
    buffer_load(load_flag, center_buf, result + GRID_ROWS * GRID_COLS * j / 16);       // load for center layer
    buffer_load(load_flag, top_buf, result + GRID_ROWS * GRID_COLS * (j + 1) / 16);    // load for top layer
    buffer_load(load_flag, bottom_buf, result + GRID_ROWS * GRID_COLS * (j - 1) / 16); // load for bottom layer
  }

  buffer_load(load_flag, power_buf0, power + GRID_ROWS * GRID_COLS * j / 16);
  compute(compute_flag, result_buf0, center_buf, top_buf, bottom_buf, power_buf1, cc, cn, cs, ce, cw, ct, cb, Cap, dt, amb_temp, i);
  buffer_store(store_flag, temp + GRID_ROWS * GRID_COLS * j / 16, result_buf1);
}