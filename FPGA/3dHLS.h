#ifndef _3DHLS_H
#define _3DHLS_H

#define GRID_ROWS 64// Define the number of rows
#define GRID_COLS 64// Define the number of columns
#define LAYERS    8
#define ITERATIONS 20
// Function prototypes

void hotspot(float *result, float *temp, float *power, int numCols, int numRows, int layers, float Rx, float Ry, float Rz, float dt, int numiter);
void usage(int argc, char **argv);  // You need to define this function
void readinput(float *data, int numRows, int numCols, int layers, char *filename);  // You need to define this function

#endif  // _3DHLS_H
