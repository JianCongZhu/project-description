#ifndef _3DHLS_H
#define _3DHLS_H

#define GRID_ROWS 512
#define GRID_COLS 512
#define LAYERS 64
#define ITERATIONS 100

void usage(int argc, char **argv);
void readinput(float *p, int row, int col, int layer, char *file);
void buffer_load(float *dest, float *source, int rows, int cols);
void buffer_store(float *dest, float *source, int rows, int cols);
void compute(float result_buf[GRID_ROWS * GRID_COLS], float temp_buf[GRID_ROWS * GRID_COLS], float power_buf[GRID_ROWS * GRID_COLS], float cc, float cn, float cs, float ce, float cw, float ct, float cb, float Cap, float dt);
void hotspot(float *result, float *temp, float *power, int layers, float Cap, float Rx, float Ry, float Rz, float dt);

#endif // _3DHLS_H
