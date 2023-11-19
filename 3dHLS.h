#ifndef _3DHLS_H
#define _3DHLS_H

#define GRID_ROWS  // Define the number of rows
#define GRID_COLS  // Define the number of columns

// Function prototypes
void buffer_load(float *dest, float *source);
void compute(float result_buf[GRID_ROWS * GRID_COLS], float temp_buf[GRID_ROWS * GRID_COLS], float cn, float cs, float ce, float cw, float ct, float cb);
void store(float *dest, float *source);
void hotspot(float *result, float *temp, float *power, int numCols, int numRows, int layers, float Rx, float Ry, float Rz, float dt, int numiter);
void usage(int argc, char **argv);  // You need to define this function
void readinput(float *data, int numRows, int numCols, int layers, char *filename);  // You need to define this function

#endif  // _3DHLS_H
