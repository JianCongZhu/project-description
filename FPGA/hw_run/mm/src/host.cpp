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
#include <vector>

// Array Size to access
#define DATA_SIZE 32
#define NI 32
#define NJ 32
#define NK 32
// Maximum Array Size
#define MAX_SIZE 1024

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

void kernel_gemm_sw(std::vector<float, aligned_allocator<float>> &C, 
std::vector<float, aligned_allocator<float>> &A, 
std::vector<float, aligned_allocator<float>> &B, 
float alpha, float beta) {              // SOFTWARE VERSION
    int i, j, k, ii, jj, kk;


 for (i = 0; i < NI; i+=16) {
    for (j = 0; j < NJ; j+=16) {
	    for(ii = i; ii < i + 16; ii++){
	   
	       for(jj = j; jj < j + 16; jj++){
	          C[ii*NJ+jj] *= beta;
	         // local_sum += C[ii*NJ+jj];
	       }
	    }
      
    }

    for (j = 0; j < NJ; j+=16) {
      for (k = 0; k < NK; k+=16) {
	    for(ii = i; ii < i + 16; ii++){
           
	       for(jj = j; jj < j + 16; jj++){
	          for(kk = k; kk < k + 16; kk++){
	             C[ii*NJ+jj] += alpha * A[ii*NK+kk] * B[kk*NJ+jj];
	          }
	       }
	    }
      }
    }
  }
}

int main(int argc, char** argv) {
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
        return EXIT_FAILURE;
    }

    std::string binaryFile = argv[1];

    // Allocate Memory in Host Memory
    if (DATA_SIZE > MAX_SIZE) {
        std::cout << "Size is bigger than internal buffer size,"
                  << " please use a size smaller than " << MAX_SIZE << "!" << std::endl;
        return EXIT_FAILURE;
    }

    size_t matrix_size_bytes = sizeof(float) * DATA_SIZE * DATA_SIZE;
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

    std::vector<float, aligned_allocator<float> > C(matrix_size_bytes);
    std::vector<float, aligned_allocator<float> > A(matrix_size_bytes);
    std::vector<float, aligned_allocator<float> > B(matrix_size_bytes);
    std::vector<float, aligned_allocator<float> > source_hw_results(matrix_size_bytes);
    std::vector<float, aligned_allocator<float> > C_sw(matrix_size_bytes);
    std::vector<float, aligned_allocator<float> > A_sw(matrix_size_bytes);
    std::vector<float, aligned_allocator<float> > B_sw(matrix_size_bytes);

    for (int i = 0; i < NI; i++){
        for (int j = 0; j < NJ; j++){
        C[i*NJ+j] = (float)((i*j+1) % NI) / NI;
        //std::cout << "C result is " << C[i*NJ+j] << std::endl;
        }
    }
  
    for (int i = 0; i < NI; i++)
        for (int j = 0; j < NK; j++)
        A[i*NK+j] = (float)(i*(j+1) % NK) / NK;
    for (int i = 0; i < NK; i++)
        for (int j = 0; j < NJ; j++)
        B[i*NJ+j] = (float)(i*(j+2) % NJ) / NJ;

    for (int i = 0; i < NI; i++)
        for (int j = 0; j < NJ; j++)
        C_sw[i*NJ+j] = (float)((i*j+1) % NI) / NI;
    for (int i = 0; i < NI; i++)
        for (int j = 0; j < NK; j++)
        A_sw[i*NK+j] = (float)(i*(j+1) % NK) / NK;
    for (int i = 0; i < NK; i++)
        for (int j = 0; j < NJ; j++)
        B_sw[i*NJ+j] = (float)(i*(j+2) % NJ) / NJ;
    // for (int i = 0; i < NI; i++){
    //     for (int j = 0; j < NJ; j++){
    //         source_hw_results[i*NJ+j] = C[i*NJ+j];
    //         std::cout << "source result is " << source_hw_results[i*NJ+j] << std::endl;
    //         std::cout << "C result is " << C[i*NJ+j] << std::endl;
    //     }
    // }
    // OPENCL HOST CODE AREA START
    auto devices = xcl::get_xil_devices();
    // read_binary_file() is a utility API which will load the binaryFile
    // and will return the pointer to file buffer.
    auto fileBuf = xcl::read_binary_file(binaryFile);
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
            OCL_CHECK(err, krnl_mmult = cl::Kernel(program, "kernel_gemm_hw", &err));
            valid_device = true;
            break; // we break because we found a valid device
        }
    }
    if (!valid_device) {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }


    // Allocate Buffer in Global Memory 
    OCL_CHECK(err, cl::Buffer buffer_in1(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, matrix_size_bytes,
                                         A.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_in2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, matrix_size_bytes,
                                         B.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_output(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, matrix_size_bytes,
                                            C.data(), &err));

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
    float alpha = 1.5;
    float beta = 2.5;

    OCL_CHECK(err, err = krnl_mmult.setArg(0, buffer_output));
    OCL_CHECK(err, err = krnl_mmult.setArg(1, buffer_in1));
    OCL_CHECK(err, err = krnl_mmult.setArg(2, buffer_in2));
    OCL_CHECK(err, err = krnl_mmult.setArg(3, alpha));
    OCL_CHECK(err, err = krnl_mmult.setArg(4, beta));

    // Copy input data to device global memory (host to fpga)
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_output, buffer_in1, buffer_in2}, 0 /* 0 means from host*/));
    q.finish();
    timespec timer = tic(); // start a timer

    // Launch the Kernel
    OCL_CHECK(err, err = q.enqueueTask(krnl_mmult));
    q.finish();
    toc(&timer, "kernel execution");

    // Copy Result from Device Global Memory to Host Local Memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_output}, CL_MIGRATE_MEM_OBJECT_HOST));
    q.finish();

    // OPENCL HOST CODE AREA END

    // Compute Software Results
    kernel_gemm_sw(C_sw, A_sw, B_sw, 1.5, 2.5);
    //m_softwareGold(source_in1, source_in2, source_sw_results);

    // Compare the results of the Device to the simulation
    int match = 0;
    for (int i = 0; i < DATA_SIZE * DATA_SIZE; i++) {
        if (C_sw[i] != C[i]) {
            std::cout << "Error: Result mismatch" << std::endl;
            std::cout << "i = " << i << " C_sw = " << C_sw[i]
                      << " C = " << C[i] << std::endl;
            match = 1;
            break;
        }
    }

    std::cout << "TEST " << (match ? "FAILED" : "PASSED") << std::endl;
    return (match ? EXIT_FAILURE : EXIT_SUCCESS);
}
