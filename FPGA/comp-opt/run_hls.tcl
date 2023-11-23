#===================================
# run_hls.tcl for FIR
#===================================
# open the HLS project fir.prj
open_project hotspot.prj -reset
# set the top-level function of the design to be fir
set_top hotspot_HW
# add design files
add_files 3dHLS.cpp
add_files -tb 3dHLS-test.cpp

# open HLS solution solution1
open_solution "solution1"
# set target FPGA device: Alveo U50 in this example
set_part {xcu50-fsvh2104-2-e}
# target clock period is 5 ns, i.e., 200MHz
create_clock -period 3.33

# do a c simulation
csim_design -O -argv "../../../../../../data/power_64x8 ../../../../../../data/temp_64x8"
# synthesize the design
csynth_design
# do a co-simulation
cosim_design -O -argv "../../../../../../data/power_64x8 ../../../../../../data/temp_64x8"
# close project and quit
close_project
# exit Vivado HLS
quit
