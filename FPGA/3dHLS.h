#ifndef _3DHLS_H
#define _3DHLS_H

#define GRID_ROWS 64
#define GRID_COLS 64
#define LAYERS 8
#define ITERATIONS 1000

#define STR_SIZE (256)
#define MAX_PD	(3.0e6)
/* required precision in degrees	*/
#define PRECISION	0.001
#define SPEC_HEAT_SI 1.75e6
#define K_SI 100
/* capacitance fitting factor	*/
#define FACTOR_CHIP	0.5



void usage(int argc, char **argv);
void readinput(float *p, int row, int col, int layer, char *file);
void buffer_load(float *dest, float *source);
void buffer_store(float *dest, float *source);
void compute(float result_buf[GRID_ROWS * GRID_COLS], float center_buf[GRID_ROWS * GRID_COLS], float top_buf[GRID_ROWS * GRID_COLS], float bottom_buf[GRID_ROWS * GRID_COLS],
             float power_buf[GRID_ROWS * GRID_COLS], float cc, float cn, float cs, float ce, float cw, float ct, float cb, float Cap, float dt, float amb_temp);
void hotspot_HW(float *result, float *temp, float *power, int layers, float Cap, float Rx, float Ry, float Rz, float dt, int numCols, int numRows, int iterations, float dx, float dy, float dz, float t_chip, float chip_height, float chip_width, float amb_temp);
void fatal(char *s);
void readinput(float *vect, int grid_rows, int grid_cols, int layers, char *file);
void writeoutputHW(float *vect, int grid_rows, int grid_cols, int layers, char *file);
void computeTempCPU(float *pIn, float *tIn, float *tOut, int nx, int ny, int nz, float Cap, float Rx, float Ry, float Rz, float dt, int numiter);
float accuracy(float *arr1, float *arr2, int len);
void computeTempOMP(float *pIn, float *tIn, float *tOut, int nx, int ny, int nz, float Cap, float Rx, float Ry, float Rz, float dt, int numiter);
void usage(int argc, char **argv);

struct bench_args_t {
    float temp[GRID_ROWS * GRID_COLS];
    float power[GRID_ROWS * GRID_COLS];
};

#endif // _3DHLS_H
