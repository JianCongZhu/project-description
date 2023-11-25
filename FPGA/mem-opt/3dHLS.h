#ifndef _3DHLS_H
#define _3DHLS_H

#define GRID_ROWS 16
#define GRID_COLS 16
#define LAYERS 3
#define ITERATIONS 10
#define PARA_FACTOR 16

#define STR_SIZE (256)
#define MAX_PD	(3.0e6)
/* required precision in degrees	*/
#define PRECISION	0.001
#define SPEC_HEAT_SI 1.75e6
#define K_SI 100
/* capacitance fitting factor	*/
#define FACTOR_CHIP	0.5

#include "mc.h"

void usage(int argc, char **argv);
void readinput(float *p, int row, int col, int layer, char *file);
void buffer_load(float *dest, class ap_uint<LARGE_BUS> source);
void buffer_store(class ap_uint<LARGE_BUS> dest, float *source);
void compute(float result_buf[GRID_ROWS * GRID_COLS], float center_buf[GRID_ROWS * GRID_COLS], float top_buf[GRID_ROWS * GRID_COLS], float bottom_buf[GRID_ROWS * GRID_COLS],
             float power_buf[GRID_ROWS * GRID_COLS], float cc, float cn, float cs, float ce, float cw, float ct, float cb, float Cap, float dt, float amb_temp, int iteration);
void hotspot_HW(class ap_uint<LARGE_BUS> result[GRID_ROWS* GRID_COLS * LAYERS], class ap_uint<LARGE_BUS> temp[GRID_ROWS * GRID_COLS * LAYERS], class ap_uint<LARGE_BUS> power[GRID_ROWS * GRID_COLS * LAYERS], float Cap, float Rx, float Ry, float Rz, float dt, float amb_temp);
void fatal(char *s);
void readinput(float *vect, int grid_rows, int grid_cols, int layers, char *file);
void writeoutputHW(float *vect, int grid_rows, int grid_cols, int layers);
void computeTempCPU(float *pIn, float *tIn, float *tOut, int nx, int ny, int nz, float Cap, float Rx, float Ry, float Rz, float dt, int numiter);
float accuracy(float *arr1, float *arr2, int len);
void computeTempOMP(float *pIn, float *tIn, float *tOut, int nx, int ny, int nz, float Cap, float Rx, float Ry, float Rz, float dt, int numiter);
void usage(int argc, char **argv);

struct bench_args_t {
    float temp[GRID_ROWS * GRID_COLS];
    float power[GRID_ROWS * GRID_COLS];
};

#endif // _3DHLS_H
