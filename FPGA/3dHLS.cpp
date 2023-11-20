#include <stdio.h>
#include <time.h>
#include <assert.h>
#include <stdlib.h>
#include <math.h>
#include <sys/time.h>
#include <string.h>
#include "3dHLS.h"

#define STR_SIZE (256)
#define MAX_PD (3.0e6)
/* required precision in degrees	*/
#define PRECISION 0.001
#define SPEC_HEAT_SI 1.75e6
#define K_SI 100
/* capacitance fitting factor	*/
#define FACTOR_CHIP 0.5

float t_chip = 0.0005;
float chip_height = 0.016;
float chip_width = 0.016;
/* ambient temperature, assuming no package at all	*/
float amb_temp = 80.0;

void buffer_load(float *dest, float *source)
{
    memcpy(dest, source, sizeof(float) * 3 * GRID_ROWS * GRID_COLS);
}

void compute(float result_buf[GRID_ROWS * GRID_COLS], float temp_buf[GRID_ROWS * GRID_COLS], float power_buf[GRID_ROWS * GRID_COLS], float cn, float cs, float ce, float cw, float ct, float cb)
{

    int x, y, z;
    int c, w, e, n, s, b, t;

    for (y = 0; y < GRID_COLS; y++)
        for (x = 0; x < GRID_ROWS; x++)
        {
            c = x + y * nx + z * nx * ny;

            w = (x == 0) ? c : c - 1;
            e = (x == nx - 1) ? c : c + 1;
            n = (y == 0) ? c : c - nx;
            s = (y == ny - 1) ? c : c + nx;
            b = (z == 0) ? c : c - nx * ny;
            t = (z == nz - 1) ? c : c + nx * ny;

            result_buf[c] = temp_buf[c] * cc + temp_buf[n] * cn + temp_buf[s] * cs + temp_buf[e] * ce + temp_buf[w] * cw + temp_buf[t] * ct + temp_buf[b] * cb + (dt / Cap) * power_buf[c] + ct * amb_temp;
        }
}

void buffer_store(float *dest, float *source, int GRID_ROWS, int GRID_COLS)
{
    memcpy(source, dest, sizeof(float) * GRID_ROWS * GRID_COLS);
}

void hotspot(float *result, float *temp, float *power, int layers, float Cap, float Rx, float Ry, float Rz, float dt)
{

    int i, j;
    int cc, cn, cs, ce, cw, ct, cb,
        float stepDivCap = dt / Cap;
    ce = cw = stepDivCap / Rx;
    cn = cs = stepDivCap / Ry;
    ct = cb = stepDivCap / Rz;

    cc = 1.0 - (2.0 * ce + 2.0 * cn + 3.0 * ct);

    float temp_buf[3 * GRID_ROWS * GRID_COLS];
    float power_buf[3 * GRID_ROWS * GRID_COLS];
    float result_buf[GRID_ROWS * GRID_COLS];

    for (i = 0; i < ITERATIONS; i++)
    {
        for (j = 0; j < LAYERS; j++)
        {
            buffer_load(temp_buf, temp + 3 * GRID_ROWS * GRID_COLS * j, GRID_ROWS, GRID_COLS);
            buffer_load(power_buf, power + 3 * GRID_ROWS * GRID_COLS * j, GRID_ROWS, GRID_COLS);
            compute(result_buf, temp_buf, power_buf, cn, cs, ce, cw, ct, cb);
            buffer_store(temp + GRID_ROWS * GRID_COLS * j, result_buf, GRID_ROWS, GRID_COLS);
        }
    }

    return;
}

int main(int argc, char **argv)
{

    if (argc != 7)
    {
        usage(argc, argv);
    }

    char *pfile, *tfile, *ofile; // *testFile;
    int iterations = atoi(argv[3]);

    pfile = argv[4];
    tfile = argv[5];
    ofile = argv[6];
    // testFile = argv[7];
    int numCols = atoi(argv[1]);
    int numRows = atoi(argv[1]);
    int layers = atoi(argv[2]);

    float dx = chip_height / numRows;
    float dy = chip_width / numCols;
    float dz = t_chip / layers;

    float Cap = FACTOR_CHIP * SPEC_HEAT_SI * t_chip * dx * dy;
    float Rx = dy / (2.0 * K_SI * t_chip * dx);
    float Ry = dx / (2.0 * K_SI * t_chip * dy);
    float Rz = dz / (K_SI * dx * dy);

    // cout << Rx << " " << Ry << " " << Rz << endl;
    float max_slope = MAX_PD / (FACTOR_CHIP * t_chip * SPEC_HEAT_SI);
    float dt = PRECISION / max_slope;

    float *powerIn, *tempOut, *tempIn, *tempCopy; // *pCopy;
    //    float *d_powerIn, *d_tempIn, *d_tempOut;
    int size = numCols * numRows * layers;

    powerIn = (float *)calloc(size, sizeof(float));
    tempCopy = (float *)malloc(size * sizeof(float));
    tempIn = (float *)calloc(size, sizeof(float));
    tempOut = (float *)calloc(size, sizeof(float));
    // pCopy = (float*)calloc(size,sizeof(float));
    float *answer = (float *)calloc(size, sizeof(float));

    // outCopy = (float*)calloc(size, sizeof(float));
    readinput(powerIn, numRows, numCols, layers, pfile);
    readinput(tempIn, numRows, numCols, layers, tfile);

    memcpy(tempCopy, tempIn, size * sizeof(float));

    // Invoke the top-level-entity
    hotspot(tempOut, tempIn, powerIn, layers, Cap, Rx, Ry, Rz, dt);
    printf("Top-Level Entity has ran\n");

    return 0;
}
