
## HotSpot3D 

A temporary repository for ENSC 453.

### Execution

* Run 3D.c with
```
./3D 512 8 1000 ./data/power_512x8 ./data/temp_512x8 output.txt
```
You can change the number of OpenMP threads prior to execution with the prefix ```OMP_NUM_THREADS=<your_desired_thread_count>``` before your run statement.

* Refer to 3D.c functions for the order of parameters.

### Miscellaneous
* The C kernel implementation is synthesized with Vivado HLS and utilizes the OpenCL API to build and run on an Alveo U50 FPGA. Hardware-run kernel execution clocks in at under 2 seconds. All related directories can be found in `` FPGA ``
  ** The directory `` buffer `` contains a basic transformation of the original kernel into a load-compute-store structure.
  ** `` comp-opt `` contains the optimizations within `` buffer `` with a restructuring of the `` compute `` function, along with array partitioning and loop unrolling directives.
  ** `` mem-opt `` contains the optimizations within `` comp-opt `` and `` buffer `` while also implementing memory coalescing and bursting for larger off-chip memory bandwidth.
  ** `` ping-pong `` contains all the previous optimizations along with a restructuring of the top-level kernel to explicitly implement a double-buffer for overlapping of loads and stores.
  A tcl script is provided. All 4 of the above directories can be run on HLS with the command
  ``` vitis_hls -f run_hls.tcl ``` 

  ** The remaining two directories `` hw-emu `` and `` hw-run `` can be built in subdirectory `` mm `` using make.
  Build using
  `` make build TARGET=hw_emu `` and `` make build TARGET=hw `` respectively. Replace `` build `` with `` run `` to execute after the build completes.
  Data paths are already specified in `` makefile_us_alveo.mk `` with `` POWER_PATH `` and `` TEMP_PATH ``, but they can be modified to read different input files.

  ** All input data for the FPGA implementations can be found in `` data ``.
  
* A CUDA C implementation is provided with various optimizations. Kernel execution including data transfer clocks in at ~0.6 seconds on an NVIDIA RTX A4000.
