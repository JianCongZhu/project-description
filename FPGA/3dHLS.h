#ifndef _3DHLS_H
#define _3DHLS_H

#define GRID_ROWS 64
#define GRID_COLS 64
#define LAYERS 8
#define ITERATIONS 100

void usage(int argc, char **argv);
void readinput(float *p, int row, int col, int layer, char *file);
void buffer_load(float *dest, float *source);
void buffer_store(float *dest, float *source);
void compute(float result_buf[GRID_ROWS * GRID_COLS], float temp_buf[GRID_ROWS * GRID_COLS], float power_buf[GRID_ROWS * GRID_COLS], float cc, float cn, float cs, float ce, float cw, float ct, float cb, float Cap, float dt);
void hotspot(float *result, float *temp, float *power, int layers, float Cap, float Rx, float Ry, float Rz, float dt);

void fatal(char *s);
void readinput(float *vect, int grid_rows, int grid_cols, int layers, char *file);
void writeoutput(float *vect, int grid_rows, int grid_cols, int layers, char *file);
void computeTempCPU(float *pIn, float *tIn, float *tOut, int nx, int ny, int nz, float Cap, float Rx, float Ry, float Rz, float dt, int numiter);
float accuracy(float *arr1, float *arr2, int len);
void computeTempOMP(float *pIn, float *tIn, float *tOut, int nx, int ny, int nz, float Cap, float Rx, float Ry, float Rz, float dt, int numiter);
void usage(int argc, char **argv);

struct bench_args_t {
    float temp[GRID_ROWS * GRID_COLS];
    float power[GRID_ROWS * GRID_COLS];
};

#endif // _3DHLS_H
