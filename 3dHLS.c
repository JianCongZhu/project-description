#include "hotspot.h"
#include "3dHLS.h"

void buffer_load(float *dest, float *source)
{
    memcpy(dest, source, sizeof(float) * 3 * GRID_ROWS * GRID_COLS);
}

void compute(float result_buf[GRID_ROWS * GRID_COLS], float temp_buf[GRID_ROWS * GRID_COLS], float power_buf[GRID_ROWS * GRID_COLS], float Cap_1, float Rx_1, float Ry_1, float Rz_1, int which_boundary)
{
    for (z = 0; z < nz; z++)
        for (y = 0; y < ny; y++)
            for (x = 0; x < nx; x++)
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

void store(float *dest, float *source)
{
    memcpy(source, dest, sizeof(float) * GRID_ROWS * GRID_COLS);
}

void hotspot(float result[GRID_ROWS * GRID_COLS], float temp[GRID_ROWS * GRID_COLS], float power[GRID_ROWS * GRID_COLS])
{
    float grid_height = CHIP_HEIGHT / GRID_ROWS;
    float grid_width = CHIP_WIDTH / GRID_COLS;

    float Cap = FACTOR_CHIP * SPEC_HEAT_SI * T_CHIP * grid_width * grid_height;
    float Rx = grid_width / (2.0 * K_SI * T_CHIP * grid_height);
    float Ry = grid_height / (2.0 * K_SI * T_CHIP * grid_width);
    float Rz = T_CHIP / (K_SI * grid_height * grid_width);

    float max_slope = MAX_PD / (FACTOR_CHIP * T_CHIP * SPEC_HEAT_SI);
    float step = PRECISION / max_slope / 1000.0;

    float Rx_1 = 1.f / Rx;
    float Ry_1 = 1.f / Ry;
    float Rz_1 = 1.f / Rz;
    float Cap_1 = step / Cap;


    float temp_buf[3 * GRID_ROWS * GRID_COLS];
    float power_buf[3 * GRID_ROWS * GRID_COLS];
    float result_buf[GRID_ROWS * GRID_COLS];

    int i, j, k;

    for (i = 0; i < SIM_TIME; i++)
    {
        for (j = 0; j < GRID_DEPTH; j++)
        {
            buffer_load(temp_buf, temp + 3 * GRID_ROWS * GRID_COLS * j);
            buffer_load(power_buf, power + 3 * GRID_ROWS * GRID_COLS * j);
            compute(result_buf, temp_buf, power_buf, Cap_1, Rx_1, Ry_1, Rz_1);
            buffer_store(temp + GRID_ROWS * GRID_COLS * j, result_buf)
        }
    }

    return;
}