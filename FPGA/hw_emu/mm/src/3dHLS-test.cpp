#include <stdio.h>
#include <time.h>
#include <assert.h>
#include <stdlib.h> 
#include <math.h> 
#include <sys/time.h>
#include <string.h>
#include "3dHLS.h"
#include <unistd.h>

float t_chip = 0.0005;
float chip_height = 0.016;
float chip_width = 0.016;
/* ambient temperature, assuming no package at all	*/
float amb_temp = 80.0;

void fatal(char *s)
{
    fprintf(stderr, "Error: %s\n", s);
    
    
}

void readinput(float *vect, int grid_rows, int grid_cols, int layers, char *file) {
    int i,j,k;
    FILE *fp;
    char str[STR_SIZE];
    float val;

    if( (fp  = fopen(file, "r" )) ==0 )
      fatal( "The file was not opened\n" );
      
    


    for (i=0; i <= grid_rows-1; i++) 
      for (j=0; j <= grid_cols-1; j++)
        for (k=0; k <= layers-1; k++)
          {
            
            if (fgets(str, STR_SIZE, fp) == NULL) {
            fatal("Error reading file\n");
            }
            
            if (feof(fp)){
              fatal("not enough lines in file\n");
            }
            

            if ((sscanf(str, "%f", &val) != 1)){
              fatal("invalid file format\n");
            }
            
              
            vect[i*grid_cols+j+k*grid_rows*grid_cols] = val;
          }

    fclose(fp);	

}

void writeoutput(float *vect, int grid_rows, int grid_cols, int layers, char *file) {

    int i,j,k, index=0;
    FILE *fp;
    char str[STR_SIZE];

    if( (fp = fopen(file, "w" )) == 0 )
      printf( "The file was not opened\n" );

    for (i=0; i < grid_rows; i++) 
      for (j=0; j < grid_cols; j++)
        for (k=0; k < layers; k++)
          {
            sprintf(str, "%d\t%g\n", index, vect[i*grid_cols+j+k*grid_rows*grid_cols]);
            fputs(str,fp);
            index++;
          }

    fclose(fp);	
}


void computeTempCPU(float *pIn, float* tIn, float *tOut, 
        int nx, int ny, int nz, float Cap, 
        float Rx, float Ry, float Rz, 
        float dt, int numiter) 
{   float ce, cw, cn, cs, ct, cb, cc;
    float stepDivCap = dt / Cap;
    ce = cw =stepDivCap/ Rx;
    cn = cs =stepDivCap/ Ry;
    ct = cb =stepDivCap/ Rz;

    cc = 1.0 - (2.0*ce + 2.0*cn + 3.0*ct);

    int c,w,e,n,s,b,t;
    int x,y,z;
    int i = 0;
    do{
        for(z = 0; z < nz; z++)
            for(y = 0; y < ny; y++)
                for(x = 0; x < nx; x++)
                {
                    c = x + y * nx + z * nx * ny;

                    w = (x == 0) ? c      : c - 1;
                    e = (x == nx - 1) ? c : c + 1;
                    n = (y == 0) ? c      : c - nx;
                    s = (y == ny - 1) ? c : c + nx;
                    b = (z == 0) ? c      : c - nx * ny;
                    t = (z == nz - 1) ? c : c + nx * ny;


                    tOut[c] = tIn[c]*cc + tIn[n]*cn + tIn[s]*cs + tIn[e]*ce + tIn[w]*cw + tIn[t]*ct + tIn[b]*cb + (dt/Cap) * pIn[c] + ct*amb_temp;

                    // if(c == 0 && z == 0 && i == 0){
                    //     printf("c tIn[%d] = %f\n", c, tIn[c]);
                    //     printf("n tIn[%d] = %f\n", n, tIn[n]);
                    //     printf("s tIn[%d] = %f\n", s, tIn[s]);
                    //     printf("e tIn[%d] = %f\n", e, tIn[e]);
                    //     printf("w tIn[%d] = %f\n", w, tIn[w]);
                    //     printf("c tIn[%d] = %f\n", t, tIn[t]);
                    //     printf("c tIn[%d] = %f\n", b, tIn[b]);
                    //     printf("c dt = %f\n", c, dt);
                    //     printf("c Cap = %f\n", c, Cap);
                    //     printf("c dt/Cap = %f\n", c, dt/Cap);
                    //     printf("c pIn[%d] = %f\n", c, pIn[c]);
                    //     printf("c ct = %f\n", ct);
                    //     printf("c amb_temp = %f\n", amb_temp);
                    //     printf("c tOut[%d] = %f\n", c, tOut[c]);
                    // }
                }
        float *temp = tIn;
        tIn = tOut;
        tOut = temp; 
        i++;
    }
    while(i < numiter);

}

float accuracy(float *arr1, float *arr2, int len)
{
    float err = 0.0; 
    int i;
    for(i = 0; i < len; i++)
    {
        err += (arr1[i]-arr2[i]) * (arr1[i]-arr2[i]);
    }

    return (float)sqrt(err/len);


}

// void computeTempOMP(float *pIn, float* tIn, float *tOut, 
//         int nx, int ny, int nz, float Cap, 
//         float Rx, float Ry, float Rz, 
//         float dt, int numiter) 
// {  

//     float ce, cw, cn, cs, ct, cb, cc;

//     float stepDivCap = dt / Cap;
//     ce = cw =stepDivCap/ Rx;
//     cn = cs =stepDivCap/ Ry;
//     ct = cb =stepDivCap/ Rz;

//     cc = 1.0 - (2.0*ce + 2.0*cn + 3.0*ct);


// #pragma omp parallel
//     {
//         int count = 0;
//         float *tIn_t = tIn;
//         float *tOut_t = tOut;

// #pragma omp master
//         printf("%d threads running\n", omp_get_num_threads());

//         do {
//             int z; 
// #pragma omp for 
//             for (z = 0; z < nz; z++) {
//                 int y;
//                 for (y = 0; y < ny; y++) {
//                     int x;
//                     for (x = 0; x < nx; x++) {
//                         int c, w, e, n, s, b, t;
//                         c =  x + y * nx + z * nx * ny;
//                         w = (x == 0)    ? c : c - 1;
//                         e = (x == nx-1) ? c : c + 1;
//                         n = (y == 0)    ? c : c - nx;
//                         s = (y == ny-1) ? c : c + nx;
//                         b = (z == 0)    ? c : c - nx * ny;
//                         t = (z == nz-1) ? c : c + nx * ny;
//                         tOut_t[c] = cc * tIn_t[c] + cw * tIn_t[w] + ce * tIn_t[e]
//                             + cs * tIn_t[s] + cn * tIn_t[n] + cb * tIn_t[b] + ct * tIn_t[t]+(dt/Cap) * pIn[c] + ct*amb_temp;
//                     }
//                 }
//             }
//             float *t = tIn_t;
//             tIn_t = tOut_t;
//             tOut_t = t; 
//             count++;
//         } while (count < numiter);
//     } 
//     return; 
// } 

void usage(int argc, char **argv)
{
    fprintf(stderr, "Usage: %s <rows/cols> <layers> <iterations> <powerFile> <tempFile> <outputFile>\n", argv[0]);
    fprintf(stderr, "\t<rows/cols>  - number of rows/cols in the grid (positive integer)\n");
    fprintf(stderr, "\t<layers>  - number of layers in the grid (positive integer)\n");

    fprintf(stderr, "\t<iteration> - number of iterations\n");
    fprintf(stderr, "\t<powerFile>  - name of the file containing the initial power values of each cell\n");
    fprintf(stderr, "\t<tempFile>  - name of the file containing the initial temperature values of each cell\n");
    fprintf(stderr, "\t<outputFile - output file\n");
    exit(1);
}

int main(int argc, char** argv)
{
    // if (argc != 7)
    // {
    //     usage(argc,argv);
    // }
    fprintf(stderr, "Starting...\n");
    char cwd[1024];
    if (getcwd(cwd, sizeof(cwd)) != NULL) {
        fprintf(stderr, "Current working directory: %s\n", cwd);
    } else {
        perror("getcwd() error");
        return 1;
    }
    char *pfile, *tfile; //*ofile; *testFile;
    // char powerFilePath[18] = "../data/power_64x8";
    // char tempFilePath[17] = "../data/temp_64x8";
    
    int iterations = ITERATIONS;

    pfile = argv[1];
    fprintf(stderr, "pfile is %s\n", pfile);
    // // instead of using argv, have pfile point to the path ./data/power_64x8
    // FILE* pfile = fopen(powerFilePath,"r");
    // // tfile refers to the path ./data/temp_64x8

    tfile = argv[2];
    fprintf(stderr, "tfile is %s\n", tfile);
    // FILE* tfile = fopen(tempFilePath,"r");
    //ofile = argv[6];
    //testFile = argv[7];
    int numCols = GRID_COLS;
    int numRows = GRID_ROWS;
    int layers = LAYERS;

    /* calculating parameters*/

    float dx = chip_height/numRows;
    float dy = chip_width/numCols;
    float dz = t_chip/layers;

    float Cap = FACTOR_CHIP * SPEC_HEAT_SI * t_chip * dx * dy;
    float Rx = dy / (2.0 * K_SI * t_chip * dx);
    float Ry = dx / (2.0 * K_SI * t_chip * dy);
    float Rz = dz / (K_SI * dx * dy);

    // cout << Rx << " " << Ry << " " << Rz << endl;
    float max_slope = MAX_PD / (FACTOR_CHIP * t_chip * SPEC_HEAT_SI);
    float dt = PRECISION / max_slope;


    float *powerIn, *tempOut, *tempIn, *tempCopy;// *pCopy;
    //    float *d_powerIn, *d_tempIn, *d_tempOut;
    int size = numCols * numRows * layers;
    
    powerIn = (float*)calloc(size, sizeof(float));
    tempCopy = (float*)malloc(size * sizeof(float));
    tempIn = (float*)calloc(size,sizeof(float));
    tempOut = (float*)calloc(size, sizeof(float));
    //tempOutHW = (float*)calloc(size, sizeof(float));
    //pCopy = (float*)calloc(size,sizeof(float));
    float* answer = (float*)calloc(size, sizeof(float));

    // outCopy = (float*)calloc(size, sizeof(float));
    readinput(powerIn,numRows, numCols, layers, pfile);
    readinput(tempIn, numRows, numCols, layers, tfile);
    // print out all of tempIn 
    
    
    printf("number of cols is %d\n", GRID_COLS);
    printf("number of rows is %d\n", GRID_ROWS);
    printf("number of layers is %d\n", LAYERS);
    printf("size is %d\n", size);
    memcpy(tempCopy,tempIn, size * sizeof(float));

    struct timeval start, stop;
    float time;
    gettimeofday(&start,NULL);
    //computeTempOMP(powerIn, tempIn, tempOut, numCols, numRows, layers, Cap, Rx, Ry, Rz, dt,iterations);
    gettimeofday(&stop,NULL);
    time = (stop.tv_usec-start.tv_usec)*1.0e-6 + stop.tv_sec - start.tv_sec;
    computeTempCPU(powerIn, tempCopy, answer, numCols, numRows, layers, Cap, Rx, Ry, Rz, dt,iterations);
    //float acc1 = accuracy(tempOut,answer,numRows*numCols*layers);

    //printf("Cap is %f\n", Cap);
    //print out all of tempIn
    for (int i = 0; i < GRID_COLS*GRID_ROWS*LAYERS; i++)
    {
//        printf("tempIn toplevel[%d] = %f\n", i, tempIn[i]);
    }
    printf("tempIn pointer top level refers to %p\n", tempIn);
    hotspot_HW(tempOut, tempIn, powerIn, Cap, Rx, Ry, Rz, dt, amb_temp);
    //writeoutputHW(tempIn,numRows, numCols, layers);
    //float acc2 = accuracy(tempOut,answer,numRows*numCols*layers);

    for (int k = 0; k < LAYERS; k++)

    for (int i = 0; i < GRID_COLS; i++)

      for (int j = 0; j < GRID_ROWS; j++)

      {
        // check if the hardware and software outputs match, not the accuracies
        //if (tempIn[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS] != answer[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS])
        //if the percentage error between tempIn and answer is greater than 1%, then print out the error
        if (fabs(tempIn[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS] - answer[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS]) > 0.01 * fabs(answer[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS]))
        {
          printf("Test failed. Results not matching at index %d: sw = %f, hw = %f\n",i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS , answer[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS], tempIn[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS]);
          return -1;
        }
        
        
        //{
          
          //printf("Test failed. Results not matching at index %d: sw = %f, hw = %f\n",i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS , answer[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS], tempIn[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS]);
          //return -1;
        //}

        

      }
    printf("TEST PASSED!\n");
    // if (acc1 != acc2){
    //   printf("Test failed. Results not matching: acc_sw = %e, acc_hw = %e\n", acc1, acc2);
    //   return -1;
    // }
    // else{
    //   printf("TEST PASSED!\n");
    // }

    // printf("Time: %.3f (s)\n",time);
    // printf("Accuracy: %e\n",acc);
    // writeoutput(tempOut,numRows, numCols, layers, ofile);
    
    

    free(tempIn);
    free(tempOut); free(powerIn);
    free(answer);
    return 0;
}	

