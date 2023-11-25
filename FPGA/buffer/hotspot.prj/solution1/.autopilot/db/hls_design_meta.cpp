#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("result", 32, hls_out, 0, "ap_vld", "out_data", 1),
	Port_Property("result_ap_vld", 1, hls_out, 0, "ap_vld", "out_vld", 1),
	Port_Property("temp_i", 32, hls_in, 1, "ap_ovld", "in_data", 1),
	Port_Property("temp_o", 32, hls_out, 1, "ap_ovld", "out_data", 1),
	Port_Property("temp_o_ap_vld", 1, hls_out, 1, "ap_ovld", "out_vld", 1),
	Port_Property("power", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("Cap", 32, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("Rx", 32, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("Ry", 32, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("Rz", 32, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("dt", 32, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("amb_temp", 32, hls_in, 8, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "hotspot_HW";
