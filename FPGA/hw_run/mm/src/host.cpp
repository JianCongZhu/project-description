/**
* Copyright (C) 2019-2021 Xilinx, Inc
*
* Licensed under the Apache License, Version 2.0 (the "License"). You may
* not use this file except in compliance with the License. A copy of the
* License is located at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
* License for the specific language governing permissions and limitations
* under the License.
*/

/*******************************************************************************

Description:

    Vitis matrix multiply example which showcases how the host code works.

*******************************************************************************/
// OpenCL utility layer include
#include "xcl2.hpp"
#include "mc.h"
#include "my_timer.h"
#include "stdlib.h"
#include "stdio.h"
#include <unistd.h>
#include <vector>
#include <algorithm> 

#define GRID_ROWS 64
#define GRID_COLS 64
#define LAYERS 8
#define ITERATIONS 30000
#define PARA_FACTOR 16

#define STR_SIZE (256)
#define MAX_PD	(3.0e6)
/* required precision in degrees	*/
#define PRECISION	0.001
#define SPEC_HEAT_SI 1.75e6
#define K_SI 100
/* capacitance fitting factor	*/
#define FACTOR_CHIP	0.5

// Maximum Array Size
#define MAX_SIZE 1024

float t_chip = 0.0005;
float chip_height = 0.016;
float chip_width = 0.016;
/* ambient temperature, assuming no package at all	*/
float amb_temp = 80.0;

// Software implementation of Matrix Multiplication
// The inputs are of the size (DATA_SIZE x DATA_SIZE)
/*void m_softwareGold(std::vector<int, aligned_allocator<int> >& in1, // Input Matrix 1
                    std::vector<int, aligned_allocator<int> >& in2, // Input Matrix 2
                    std::vector<int, aligned_allocator<int> >& out  // Output Matrix
                    ) {
    // Perform Matrix multiply Out = In1 x In2
    for (int i = 0; i < DATA_SIZE; i++) {
        for (int j = 0; j < DATA_SIZE; j++) {
            for (int k = 0; k < DATA_SIZE; k++) {
                out[i * DATA_SIZE + j] += in1[i * DATA_SIZE + k] * in2[k * DATA_SIZE + j];
            }
        }
    }
}*/

void fatal(char *s)
{
    fprintf(stderr, "Error: %s\n", s);
    
    
}

void readinput(std::vector<float, aligned_allocator<float>> &vect, int grid_rows, int grid_cols, int layers, char *file) {
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

void computeTempCPU(std::vector<float, aligned_allocator<float>> &pIn, std::vector<float, aligned_allocator<float>> &tIn, std::vector<float, aligned_allocator<float>> &tOut, 
        int nx, int ny, int nz, float Cap, 
        float Rx, float Ry, float Rz, 
        float dt, int numiter) 
{   float ce, cw, cn, cs, ct, cb, cc;
    float stepDivCap = dt / Cap;
    std::vector<float, aligned_allocator<float>> temp;
    ce = cw =stepDivCap/ Rx;
    cn = cs =stepDivCap/ Ry;
    ct = cb =stepDivCap/ Rz;

    cc = 1.0 - (2.0*ce + 2.0*cn + 3.0*ct);
    int size = GRID_COLS * GRID_ROWS * LAYERS;
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
        // = tIn;
        //printf("copying values in software sum\n");
        // tIn = tOut;
        // tOut = temp; 
        temp.assign(tIn.begin(), tIn.end());
        tIn.assign(tOut.begin(), tOut.end());
        tOut.assign(temp.begin(), temp.end());
        // temp = tIn;
        // tIn = tOut;
        // tOut = temp;
        //printf("after copying values in software sum\n");
        // memcpy(temp,tIn.data(), size * sizeof(float));
        // memcpy(tIn,tOut.data(), size * sizeof(float));
        // memcpy(tOut,temp.data(), size * sizeof(float));
        //temp.clear();
        // copy all values of tIn to temp
        // for (int i = 0; i < nx*ny*nz; i++){
        //     temp[i] = tIn[i];
        // }
        // for (int i = 0; i < nx*ny*nz; i++){
        //     tIn[i] = tOut[i];
        // }
        // for (int i = 0; i < nx*ny*nz; i++){
        //     tOut[i] = temp[i];
        // }
        i++;
    }
    while(i < numiter);

}

// void kernel_gemm_sw(std::vector<float, aligned_allocator<float>> &C, 
// std::vector<float, aligned_allocator<float>> &A, 
// std::vector<float, aligned_allocator<float>> &B, 
// float alpha, float beta) {              // SOFTWARE VERSION
//     int i, j, k, ii, jj, kk;


//  for (i = 0; i < NI; i+=16) {
//     for (j = 0; j < NJ; j+=16) {
// 	    for(ii = i; ii < i + 16; ii++){
	   
// 	       for(jj = j; jj < j + 16; jj++){
// 	          C[ii*NJ+jj] *= beta;
// 	         // local_sum += C[ii*NJ+jj];
// 	       }
// 	    }
      
//     }

//     for (j = 0; j < NJ; j+=16) {
//       for (k = 0; k < NK; k+=16) {
// 	    for(ii = i; ii < i + 16; ii++){
           
// 	       for(jj = j; jj < j + 16; jj++){
// 	          for(kk = k; kk < k + 16; kk++){
// 	             C[ii*NJ+jj] += alpha * A[ii*NK+kk] * B[kk*NJ+jj];
// 	          }
// 	       }
// 	    }
//       }
//     }
//   }
// }

int main(int argc, char** argv) {
    // if (argc != 2) {
    //     std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
    //     return EXIT_FAILURE;
    // }

    std::string binaryFile = argv[1];

    // Allocate Memory in Host Memory
    // if (GRID_COLS > MAX_SIZE) {
    //     std::cout << "Size is bigger than internal buffer size,"
    //               << " please use a size smaller than " << MAX_SIZE << "!" << std::endl;
    //     return EXIT_FAILURE;
    // }

    size_t matrix_size_bytes = sizeof(float) * GRID_COLS * GRID_ROWS * LAYERS;
    cl_int err;
    cl::CommandQueue q;
    cl::Context context;
    cl::Kernel krnl_mmult;
    /*
    std::vector<int, aligned_allocator<int> > source_in1(matrix_size_bytes);
    std::vector<int, aligned_allocator<int> > source_in2(matrix_size_bytes);
    std::vector<int, aligned_allocator<int> > source_hw_results(matrix_size_bytes);
    std::vector<int, aligned_allocator<int> > source_sw_results(matrix_size_bytes);

    // Create the test data and Software Result
    for (int i = 0; i < DATA_SIZE * DATA_SIZE; i++) {
        source_in1[i] = i;
        source_in2[i] = i * i;
        source_sw_results[i] = 0;
        source_hw_results[i] = 0;
    }
    */


    std::vector<float, aligned_allocator<float> > tempOut(matrix_size_bytes);
    std::vector<float, aligned_allocator<float> > tempIn(matrix_size_bytes);
    std::vector<float, aligned_allocator<float> > powerIn(matrix_size_bytes);
    std::vector<float, aligned_allocator<float> > tempCopy(matrix_size_bytes);
    std::vector<float, aligned_allocator<float> > answer(matrix_size_bytes);
    //std::vector<float, aligned_allocator<float> > A_sw(matrix_size_bytes);
    //std::vector<float, aligned_allocator<float> > B_sw(matrix_size_bytes);

    fprintf(stderr, "Starting...\n");
    auto devices = xcl::get_xil_devices();
    std::cout << "Trying to program device: " << devices[0].getInfo<CL_DEVICE_NAME>() << std::endl;
    auto fileBuf = xcl::read_binary_file(binaryFile);
    printf("after read binary file\n");
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    bool valid_device = false;

    for (unsigned int i = 0; i < devices.size(); i++) {
        auto device = devices[i];
        // Creating Context and Command Queue for selected Device
        OCL_CHECK(err, context = cl::Context(device, nullptr, nullptr, nullptr, &err));
        OCL_CHECK(err, q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &err));

        std::cout << "Trying to program device[" << i << "]: " << device.getInfo<CL_DEVICE_NAME>() << std::endl;
        cl::Program program(context, {device}, bins, nullptr, &err);
        if (err != CL_SUCCESS) {
            std::cout << "Failed to program device[" << i << "] with xclbin file!\n";
        } else {
            std::cout << "Device[" << i << "]: program successful!\n";
            OCL_CHECK(err, krnl_mmult = cl::Kernel(program, "hotspot_HW", &err));
            valid_device = true;
            break; // we break because we found a valid device
        }
    }
    if (!valid_device) {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }
    
    printf("before getcwd\n");
    char cwd[1024];
    if (getcwd(cwd, sizeof(cwd)) != NULL) {
        fprintf(stderr, "Current working directory: %s\n", cwd);
    } else {
        perror("getcwd() error");
        return 1;
    }
    char *pfile, *tfile;
    
    int iterations = ITERATIONS;
    for (int i = 0; i < 10; i++){
        fprintf(stderr, "argv[%d] is %s\n", i, argv[i]);
    }

    pfile = argv[2];
    fprintf(stderr, "pfile is %s\n", pfile);
    tfile = argv[3];
    fprintf(stderr, "tfile is %s\n", tfile);
    fprintf(stderr, "argc is %d\n", argc);
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

    int size = numCols * numRows * layers;
    
    printf("before reading input\n");
    readinput(powerIn,numRows, numCols, layers, pfile);
    printf("after reading input\n");
    readinput(tempIn, numRows, numCols, layers, tfile);
    printf("after reading input 2\n");
    readinput(tempCopy, numRows, numCols, layers, tfile);
    //memcpy(&tempCopy,&tempIn, size * sizeof(float));
    printf("after memcpy\n");
    
    // for (int i = 0; i < NI; i++){
    //     for (int j = 0; j < NJ; j++){
    //     C[i*NJ+j] = (float)((i*j+1) % NI) / NI;
    //     //std::cout << "C result is " << C[i*NJ+j] << std::endl;
    //     }
    // }
  
    // for (int i = 0; i < NI; i++)
    //     for (int j = 0; j < NK; j++)
    //     A[i*NK+j] = (float)(i*(j+1) % NK) / NK;
    // for (int i = 0; i < NK; i++)
    //     for (int j = 0; j < NJ; j++)
    //     B[i*NJ+j] = (float)(i*(j+2) % NJ) / NJ;

    // for (int i = 0; i < NI; i++)
    //     for (int j = 0; j < NJ; j++)
    //     C_sw[i*NJ+j] = (float)((i*j+1) % NI) / NI;
    // for (int i = 0; i < NI; i++)
    //     for (int j = 0; j < NK; j++)
    //     A_sw[i*NK+j] = (float)(i*(j+1) % NK) / NK;
    // for (int i = 0; i < NK; i++)
    //     for (int j = 0; j < NJ; j++)
    //     B_sw[i*NJ+j] = (float)(i*(j+2) % NJ) / NJ;
    // for (int i = 0; i < NI; i++){
    //     for (int j = 0; j < NJ; j++){
    //         source_hw_results[i*NJ+j] = C[i*NJ+j];
    //         std::cout << "source result is " << source_hw_results[i*NJ+j] << std::endl;
    //         std::cout << "C result is " << C[i*NJ+j] << std::endl;
    //     }
    // }
    // OPENCL HOST CODE AREA START
    printf("openCL check stuff\n");
    
    
    // read_binary_file() is a utility API which will load the binaryFile
    // and will return the pointer to file buffer.
    
    
    
    
    


    // Allocate Buffer in Global Memory 
    OCL_CHECK(err, cl::Buffer tempOut_buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, matrix_size_bytes,
                                         tempOut.data(), &err));
    OCL_CHECK(err, cl::Buffer tempIn_buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, matrix_size_bytes,
                                         tempIn.data(), &err));
    OCL_CHECK(err, cl::Buffer powerIn_buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, matrix_size_bytes,
                                            powerIn.data(), &err));

    /*
    // Allocate Buffer in Global Memory
    OCL_CHECK(err, cl::Buffer buffer_in1(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, matrix_size_bytes,
                                         source_in1.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_in2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, matrix_size_bytes,
                                         source_in2.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_output(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, matrix_size_bytes,
                                            source_hw_results.data(), &err));
    */
    //int size = DATA_SIZE;

    OCL_CHECK(err, err = krnl_mmult.setArg(0, tempOut_buffer));
    OCL_CHECK(err, err = krnl_mmult.setArg(1, tempIn_buffer));
    OCL_CHECK(err, err = krnl_mmult.setArg(2, powerIn_buffer));
    OCL_CHECK(err, err = krnl_mmult.setArg(3, Cap));
    OCL_CHECK(err, err = krnl_mmult.setArg(4, Rx));
    OCL_CHECK(err, err = krnl_mmult.setArg(5, Ry));
    OCL_CHECK(err, err = krnl_mmult.setArg(6, Rz));
    OCL_CHECK(err, err = krnl_mmult.setArg(7, dt));
    OCL_CHECK(err, err = krnl_mmult.setArg(8, amb_temp));

    // Copy input data to device global memory (host to fpga)
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({tempOut_buffer, tempIn_buffer, powerIn_buffer}, 0 /* 0 means from host*/));
    q.finish();
    timespec timer = tic(); // start a timer

    // Launch the Kernel
    OCL_CHECK(err, err = q.enqueueTask(krnl_mmult));
    q.finish();
    toc(&timer, "kernel execution");

    // Copy Result from Device Global Memory to Host Local Memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({tempIn_buffer}, CL_MIGRATE_MEM_OBJECT_HOST));
    q.finish();

    // OPENCL HOST CODE AREA END

    // Compute Software Results
    // kernel_gemm_sw(C_sw, A_sw, B_sw, 1.5, 2.5);
    
    //m_softwareGold(source_in1, source_in2, source_sw_results);

    // Compare the results of the Device to the simulation
    // int match = 0;
    // for (int i = 0; i < DATA_SIZE * DATA_SIZE; i++) {
    //     if (C_sw[i] != C[i]) {
    //         std::cout << "Error: Result mismatch" << std::endl;
    //         std::cout << "i = " << i << " C_sw = " << C_sw[i]
    //                   << " C = " << C[i] << std::endl;
    //         match = 1;
    //         break;
    //     }
    // }
    printf("computing software sum\n");
    computeTempCPU(powerIn, tempCopy, answer, numCols, numRows, layers, Cap, Rx, Ry, Rz, dt,iterations);
    printf("after computing software sum\n");

    //print out all of the answer values 
    //for (int i = 0; i < size; i++){
    //    std::cout << "answer[" << i << "] = " << answer[i] << std::endl;
    //}
    // print out all of the tempIn values
    //for (int i = 0; i < size; i++){
    //    std::cout << "tempIn[" << i << "] = " << tempIn[i] << std::endl;
    //}
    // std::cout << "TEST " << (match ? "FAILED" : "PASSED") << std::endl;
    // return (match ? EXIT_FAILURE : EXIT_SUCCESS);
    for (int k = 0; k < LAYERS; k++)

    for (int i = 0; i < GRID_COLS; i++)

      for (int j = 0; j < GRID_ROWS; j++)

      {
        //printf("starting correctness check ...\n");
        // check if the hardware and software outputs match, not the accuracies
        //if (tempIn[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS] != answer[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS])
        //if the percentage error between tempIn and answer is greater than 1%, then print out the error
        if (fabs(tempIn[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS] - answer[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS]) > 0.001 * fabs(answer[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS]))
        {
          printf("Test failed. Results not matching at index %d: sw = %f, hw = %f\n", i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS , answer[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS], tempIn[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS]);
          tempOut.clear();
          tempIn.clear();
          powerIn.clear();
          tempCopy.clear();
          answer.clear();
          return -1;
        }
        
        
        //{
          
          //printf("Test failed. Results not matching at index %d: sw = %f, hw = %f\n",i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS , answer[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS], tempIn[i * GRID_COLS + j + k * GRID_ROWS * GRID_COLS]);
          //return -1;
        //}

        

      }
    printf("tempIn[%d] is %f\n",size-1, tempIn[size-1]);
    printf("answer[%d] is %f\n", size-1, answer[size-1]);
    printf("TEST PASSED!\n");

    // clear all vectors
    printf("clearing all vectors ...\n");
    tempOut.clear();
    tempIn.clear();
    powerIn.clear();
    tempCopy.clear();
    answer.clear();
    printf("finished cleaning up!\n");

    return -1;
}
