set moduleName compute
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {compute}
set C_modelType { void 0 }
set C_modelArgList {
	{ compute_flag int 1 regular  }
	{ result_buf_0 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ result_buf_1 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ result_buf_2 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ result_buf_3 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ result_buf_4 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ result_buf_5 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ result_buf_6 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ result_buf_7 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ result_buf_8 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ result_buf_9 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ result_buf_10 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ result_buf_11 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ result_buf_12 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ result_buf_13 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ result_buf_14 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ result_buf_15 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ center_buf_0 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ center_buf_1 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ center_buf_2 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ center_buf_3 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ center_buf_4 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ center_buf_5 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ center_buf_6 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ center_buf_7 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ center_buf_8 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ center_buf_9 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ center_buf_10 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ center_buf_11 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ center_buf_12 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ center_buf_13 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ center_buf_14 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ center_buf_15 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ top_buf_0 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ top_buf_1 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ top_buf_2 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ top_buf_3 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ top_buf_4 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ top_buf_5 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ top_buf_6 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ top_buf_7 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ top_buf_8 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ top_buf_9 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ top_buf_10 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ top_buf_11 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ top_buf_12 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ top_buf_13 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ top_buf_14 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ top_buf_15 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ bottom_buf_0 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ bottom_buf_1 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ bottom_buf_2 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ bottom_buf_3 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ bottom_buf_4 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ bottom_buf_5 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ bottom_buf_6 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ bottom_buf_7 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ bottom_buf_8 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ bottom_buf_9 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ bottom_buf_10 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ bottom_buf_11 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ bottom_buf_12 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ bottom_buf_13 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ bottom_buf_14 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ bottom_buf_15 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ power_buf_0 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ power_buf_1 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ power_buf_2 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ power_buf_3 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ power_buf_4 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ power_buf_5 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ power_buf_6 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ power_buf_7 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ power_buf_8 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ power_buf_9 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ power_buf_10 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ power_buf_11 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ power_buf_12 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ power_buf_13 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ power_buf_14 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ power_buf_15 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ cc float 32 regular  }
	{ cn float 32 regular  }
	{ cs float 32 regular  }
	{ ce_r float 32 regular  }
	{ cw float 32 regular  }
	{ ct float 32 regular  }
	{ cb float 32 regular  }
	{ Cap float 32 regular  }
	{ dt float 32 regular  }
	{ amb_temp float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "compute_flag", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "result_buf_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_buf_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_buf_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_buf_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_buf_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_buf_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_buf_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_buf_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_buf_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_buf_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_buf_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_buf_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_buf_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_buf_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_buf_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_buf_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "center_buf_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "center_buf_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "center_buf_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "center_buf_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "center_buf_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "center_buf_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "center_buf_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "center_buf_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "center_buf_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "center_buf_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "center_buf_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "center_buf_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "center_buf_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "center_buf_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "center_buf_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "center_buf_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_buf_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_buf_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_buf_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_buf_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_buf_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_buf_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_buf_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_buf_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_buf_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_buf_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_buf_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_buf_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_buf_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_buf_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_buf_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_buf_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_buf_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_buf_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_buf_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_buf_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_buf_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_buf_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_buf_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_buf_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_buf_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_buf_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_buf_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_buf_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_buf_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_buf_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_buf_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_buf_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "power_buf_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "power_buf_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "power_buf_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "power_buf_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "power_buf_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "power_buf_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "power_buf_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "power_buf_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "power_buf_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "power_buf_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "power_buf_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "power_buf_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "power_buf_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "power_buf_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "power_buf_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "power_buf_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cc", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cn", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cs", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ce_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cw", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ct", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Cap", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dt", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "amb_temp", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 513
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ compute_flag sc_in sc_lv 1 signal 0 } 
	{ result_buf_0_address0 sc_out sc_lv 8 signal 1 } 
	{ result_buf_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ result_buf_0_we0 sc_out sc_logic 1 signal 1 } 
	{ result_buf_0_d0 sc_out sc_lv 32 signal 1 } 
	{ result_buf_1_address0 sc_out sc_lv 8 signal 2 } 
	{ result_buf_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ result_buf_1_we0 sc_out sc_logic 1 signal 2 } 
	{ result_buf_1_d0 sc_out sc_lv 32 signal 2 } 
	{ result_buf_2_address0 sc_out sc_lv 8 signal 3 } 
	{ result_buf_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ result_buf_2_we0 sc_out sc_logic 1 signal 3 } 
	{ result_buf_2_d0 sc_out sc_lv 32 signal 3 } 
	{ result_buf_2_address1 sc_out sc_lv 8 signal 3 } 
	{ result_buf_2_ce1 sc_out sc_logic 1 signal 3 } 
	{ result_buf_2_we1 sc_out sc_logic 1 signal 3 } 
	{ result_buf_2_d1 sc_out sc_lv 32 signal 3 } 
	{ result_buf_3_address0 sc_out sc_lv 8 signal 4 } 
	{ result_buf_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ result_buf_3_we0 sc_out sc_logic 1 signal 4 } 
	{ result_buf_3_d0 sc_out sc_lv 32 signal 4 } 
	{ result_buf_3_address1 sc_out sc_lv 8 signal 4 } 
	{ result_buf_3_ce1 sc_out sc_logic 1 signal 4 } 
	{ result_buf_3_we1 sc_out sc_logic 1 signal 4 } 
	{ result_buf_3_d1 sc_out sc_lv 32 signal 4 } 
	{ result_buf_4_address0 sc_out sc_lv 8 signal 5 } 
	{ result_buf_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ result_buf_4_we0 sc_out sc_logic 1 signal 5 } 
	{ result_buf_4_d0 sc_out sc_lv 32 signal 5 } 
	{ result_buf_4_address1 sc_out sc_lv 8 signal 5 } 
	{ result_buf_4_ce1 sc_out sc_logic 1 signal 5 } 
	{ result_buf_4_we1 sc_out sc_logic 1 signal 5 } 
	{ result_buf_4_d1 sc_out sc_lv 32 signal 5 } 
	{ result_buf_5_address0 sc_out sc_lv 8 signal 6 } 
	{ result_buf_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ result_buf_5_we0 sc_out sc_logic 1 signal 6 } 
	{ result_buf_5_d0 sc_out sc_lv 32 signal 6 } 
	{ result_buf_5_address1 sc_out sc_lv 8 signal 6 } 
	{ result_buf_5_ce1 sc_out sc_logic 1 signal 6 } 
	{ result_buf_5_we1 sc_out sc_logic 1 signal 6 } 
	{ result_buf_5_d1 sc_out sc_lv 32 signal 6 } 
	{ result_buf_6_address0 sc_out sc_lv 8 signal 7 } 
	{ result_buf_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ result_buf_6_we0 sc_out sc_logic 1 signal 7 } 
	{ result_buf_6_d0 sc_out sc_lv 32 signal 7 } 
	{ result_buf_6_address1 sc_out sc_lv 8 signal 7 } 
	{ result_buf_6_ce1 sc_out sc_logic 1 signal 7 } 
	{ result_buf_6_we1 sc_out sc_logic 1 signal 7 } 
	{ result_buf_6_d1 sc_out sc_lv 32 signal 7 } 
	{ result_buf_7_address0 sc_out sc_lv 8 signal 8 } 
	{ result_buf_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ result_buf_7_we0 sc_out sc_logic 1 signal 8 } 
	{ result_buf_7_d0 sc_out sc_lv 32 signal 8 } 
	{ result_buf_7_address1 sc_out sc_lv 8 signal 8 } 
	{ result_buf_7_ce1 sc_out sc_logic 1 signal 8 } 
	{ result_buf_7_we1 sc_out sc_logic 1 signal 8 } 
	{ result_buf_7_d1 sc_out sc_lv 32 signal 8 } 
	{ result_buf_8_address0 sc_out sc_lv 8 signal 9 } 
	{ result_buf_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ result_buf_8_we0 sc_out sc_logic 1 signal 9 } 
	{ result_buf_8_d0 sc_out sc_lv 32 signal 9 } 
	{ result_buf_8_address1 sc_out sc_lv 8 signal 9 } 
	{ result_buf_8_ce1 sc_out sc_logic 1 signal 9 } 
	{ result_buf_8_we1 sc_out sc_logic 1 signal 9 } 
	{ result_buf_8_d1 sc_out sc_lv 32 signal 9 } 
	{ result_buf_9_address0 sc_out sc_lv 8 signal 10 } 
	{ result_buf_9_ce0 sc_out sc_logic 1 signal 10 } 
	{ result_buf_9_we0 sc_out sc_logic 1 signal 10 } 
	{ result_buf_9_d0 sc_out sc_lv 32 signal 10 } 
	{ result_buf_9_address1 sc_out sc_lv 8 signal 10 } 
	{ result_buf_9_ce1 sc_out sc_logic 1 signal 10 } 
	{ result_buf_9_we1 sc_out sc_logic 1 signal 10 } 
	{ result_buf_9_d1 sc_out sc_lv 32 signal 10 } 
	{ result_buf_10_address0 sc_out sc_lv 8 signal 11 } 
	{ result_buf_10_ce0 sc_out sc_logic 1 signal 11 } 
	{ result_buf_10_we0 sc_out sc_logic 1 signal 11 } 
	{ result_buf_10_d0 sc_out sc_lv 32 signal 11 } 
	{ result_buf_10_address1 sc_out sc_lv 8 signal 11 } 
	{ result_buf_10_ce1 sc_out sc_logic 1 signal 11 } 
	{ result_buf_10_we1 sc_out sc_logic 1 signal 11 } 
	{ result_buf_10_d1 sc_out sc_lv 32 signal 11 } 
	{ result_buf_11_address0 sc_out sc_lv 8 signal 12 } 
	{ result_buf_11_ce0 sc_out sc_logic 1 signal 12 } 
	{ result_buf_11_we0 sc_out sc_logic 1 signal 12 } 
	{ result_buf_11_d0 sc_out sc_lv 32 signal 12 } 
	{ result_buf_11_address1 sc_out sc_lv 8 signal 12 } 
	{ result_buf_11_ce1 sc_out sc_logic 1 signal 12 } 
	{ result_buf_11_we1 sc_out sc_logic 1 signal 12 } 
	{ result_buf_11_d1 sc_out sc_lv 32 signal 12 } 
	{ result_buf_12_address0 sc_out sc_lv 8 signal 13 } 
	{ result_buf_12_ce0 sc_out sc_logic 1 signal 13 } 
	{ result_buf_12_we0 sc_out sc_logic 1 signal 13 } 
	{ result_buf_12_d0 sc_out sc_lv 32 signal 13 } 
	{ result_buf_12_address1 sc_out sc_lv 8 signal 13 } 
	{ result_buf_12_ce1 sc_out sc_logic 1 signal 13 } 
	{ result_buf_12_we1 sc_out sc_logic 1 signal 13 } 
	{ result_buf_12_d1 sc_out sc_lv 32 signal 13 } 
	{ result_buf_13_address0 sc_out sc_lv 8 signal 14 } 
	{ result_buf_13_ce0 sc_out sc_logic 1 signal 14 } 
	{ result_buf_13_we0 sc_out sc_logic 1 signal 14 } 
	{ result_buf_13_d0 sc_out sc_lv 32 signal 14 } 
	{ result_buf_13_address1 sc_out sc_lv 8 signal 14 } 
	{ result_buf_13_ce1 sc_out sc_logic 1 signal 14 } 
	{ result_buf_13_we1 sc_out sc_logic 1 signal 14 } 
	{ result_buf_13_d1 sc_out sc_lv 32 signal 14 } 
	{ result_buf_14_address0 sc_out sc_lv 8 signal 15 } 
	{ result_buf_14_ce0 sc_out sc_logic 1 signal 15 } 
	{ result_buf_14_we0 sc_out sc_logic 1 signal 15 } 
	{ result_buf_14_d0 sc_out sc_lv 32 signal 15 } 
	{ result_buf_15_address0 sc_out sc_lv 8 signal 16 } 
	{ result_buf_15_ce0 sc_out sc_logic 1 signal 16 } 
	{ result_buf_15_we0 sc_out sc_logic 1 signal 16 } 
	{ result_buf_15_d0 sc_out sc_lv 32 signal 16 } 
	{ center_buf_0_address0 sc_out sc_lv 8 signal 17 } 
	{ center_buf_0_ce0 sc_out sc_logic 1 signal 17 } 
	{ center_buf_0_q0 sc_in sc_lv 32 signal 17 } 
	{ center_buf_0_address1 sc_out sc_lv 8 signal 17 } 
	{ center_buf_0_ce1 sc_out sc_logic 1 signal 17 } 
	{ center_buf_0_q1 sc_in sc_lv 32 signal 17 } 
	{ center_buf_1_address0 sc_out sc_lv 8 signal 18 } 
	{ center_buf_1_ce0 sc_out sc_logic 1 signal 18 } 
	{ center_buf_1_q0 sc_in sc_lv 32 signal 18 } 
	{ center_buf_1_address1 sc_out sc_lv 8 signal 18 } 
	{ center_buf_1_ce1 sc_out sc_logic 1 signal 18 } 
	{ center_buf_1_q1 sc_in sc_lv 32 signal 18 } 
	{ center_buf_2_address0 sc_out sc_lv 8 signal 19 } 
	{ center_buf_2_ce0 sc_out sc_logic 1 signal 19 } 
	{ center_buf_2_q0 sc_in sc_lv 32 signal 19 } 
	{ center_buf_2_address1 sc_out sc_lv 8 signal 19 } 
	{ center_buf_2_ce1 sc_out sc_logic 1 signal 19 } 
	{ center_buf_2_q1 sc_in sc_lv 32 signal 19 } 
	{ center_buf_3_address0 sc_out sc_lv 8 signal 20 } 
	{ center_buf_3_ce0 sc_out sc_logic 1 signal 20 } 
	{ center_buf_3_q0 sc_in sc_lv 32 signal 20 } 
	{ center_buf_3_address1 sc_out sc_lv 8 signal 20 } 
	{ center_buf_3_ce1 sc_out sc_logic 1 signal 20 } 
	{ center_buf_3_q1 sc_in sc_lv 32 signal 20 } 
	{ center_buf_4_address0 sc_out sc_lv 8 signal 21 } 
	{ center_buf_4_ce0 sc_out sc_logic 1 signal 21 } 
	{ center_buf_4_q0 sc_in sc_lv 32 signal 21 } 
	{ center_buf_4_address1 sc_out sc_lv 8 signal 21 } 
	{ center_buf_4_ce1 sc_out sc_logic 1 signal 21 } 
	{ center_buf_4_q1 sc_in sc_lv 32 signal 21 } 
	{ center_buf_5_address0 sc_out sc_lv 8 signal 22 } 
	{ center_buf_5_ce0 sc_out sc_logic 1 signal 22 } 
	{ center_buf_5_q0 sc_in sc_lv 32 signal 22 } 
	{ center_buf_5_address1 sc_out sc_lv 8 signal 22 } 
	{ center_buf_5_ce1 sc_out sc_logic 1 signal 22 } 
	{ center_buf_5_q1 sc_in sc_lv 32 signal 22 } 
	{ center_buf_6_address0 sc_out sc_lv 8 signal 23 } 
	{ center_buf_6_ce0 sc_out sc_logic 1 signal 23 } 
	{ center_buf_6_q0 sc_in sc_lv 32 signal 23 } 
	{ center_buf_6_address1 sc_out sc_lv 8 signal 23 } 
	{ center_buf_6_ce1 sc_out sc_logic 1 signal 23 } 
	{ center_buf_6_q1 sc_in sc_lv 32 signal 23 } 
	{ center_buf_7_address0 sc_out sc_lv 8 signal 24 } 
	{ center_buf_7_ce0 sc_out sc_logic 1 signal 24 } 
	{ center_buf_7_q0 sc_in sc_lv 32 signal 24 } 
	{ center_buf_7_address1 sc_out sc_lv 8 signal 24 } 
	{ center_buf_7_ce1 sc_out sc_logic 1 signal 24 } 
	{ center_buf_7_q1 sc_in sc_lv 32 signal 24 } 
	{ center_buf_8_address0 sc_out sc_lv 8 signal 25 } 
	{ center_buf_8_ce0 sc_out sc_logic 1 signal 25 } 
	{ center_buf_8_q0 sc_in sc_lv 32 signal 25 } 
	{ center_buf_8_address1 sc_out sc_lv 8 signal 25 } 
	{ center_buf_8_ce1 sc_out sc_logic 1 signal 25 } 
	{ center_buf_8_q1 sc_in sc_lv 32 signal 25 } 
	{ center_buf_9_address0 sc_out sc_lv 8 signal 26 } 
	{ center_buf_9_ce0 sc_out sc_logic 1 signal 26 } 
	{ center_buf_9_q0 sc_in sc_lv 32 signal 26 } 
	{ center_buf_9_address1 sc_out sc_lv 8 signal 26 } 
	{ center_buf_9_ce1 sc_out sc_logic 1 signal 26 } 
	{ center_buf_9_q1 sc_in sc_lv 32 signal 26 } 
	{ center_buf_10_address0 sc_out sc_lv 8 signal 27 } 
	{ center_buf_10_ce0 sc_out sc_logic 1 signal 27 } 
	{ center_buf_10_q0 sc_in sc_lv 32 signal 27 } 
	{ center_buf_10_address1 sc_out sc_lv 8 signal 27 } 
	{ center_buf_10_ce1 sc_out sc_logic 1 signal 27 } 
	{ center_buf_10_q1 sc_in sc_lv 32 signal 27 } 
	{ center_buf_11_address0 sc_out sc_lv 8 signal 28 } 
	{ center_buf_11_ce0 sc_out sc_logic 1 signal 28 } 
	{ center_buf_11_q0 sc_in sc_lv 32 signal 28 } 
	{ center_buf_11_address1 sc_out sc_lv 8 signal 28 } 
	{ center_buf_11_ce1 sc_out sc_logic 1 signal 28 } 
	{ center_buf_11_q1 sc_in sc_lv 32 signal 28 } 
	{ center_buf_12_address0 sc_out sc_lv 8 signal 29 } 
	{ center_buf_12_ce0 sc_out sc_logic 1 signal 29 } 
	{ center_buf_12_q0 sc_in sc_lv 32 signal 29 } 
	{ center_buf_12_address1 sc_out sc_lv 8 signal 29 } 
	{ center_buf_12_ce1 sc_out sc_logic 1 signal 29 } 
	{ center_buf_12_q1 sc_in sc_lv 32 signal 29 } 
	{ center_buf_13_address0 sc_out sc_lv 8 signal 30 } 
	{ center_buf_13_ce0 sc_out sc_logic 1 signal 30 } 
	{ center_buf_13_q0 sc_in sc_lv 32 signal 30 } 
	{ center_buf_13_address1 sc_out sc_lv 8 signal 30 } 
	{ center_buf_13_ce1 sc_out sc_logic 1 signal 30 } 
	{ center_buf_13_q1 sc_in sc_lv 32 signal 30 } 
	{ center_buf_14_address0 sc_out sc_lv 8 signal 31 } 
	{ center_buf_14_ce0 sc_out sc_logic 1 signal 31 } 
	{ center_buf_14_q0 sc_in sc_lv 32 signal 31 } 
	{ center_buf_14_address1 sc_out sc_lv 8 signal 31 } 
	{ center_buf_14_ce1 sc_out sc_logic 1 signal 31 } 
	{ center_buf_14_q1 sc_in sc_lv 32 signal 31 } 
	{ center_buf_15_address0 sc_out sc_lv 8 signal 32 } 
	{ center_buf_15_ce0 sc_out sc_logic 1 signal 32 } 
	{ center_buf_15_q0 sc_in sc_lv 32 signal 32 } 
	{ center_buf_15_address1 sc_out sc_lv 8 signal 32 } 
	{ center_buf_15_ce1 sc_out sc_logic 1 signal 32 } 
	{ center_buf_15_q1 sc_in sc_lv 32 signal 32 } 
	{ top_buf_0_address0 sc_out sc_lv 8 signal 33 } 
	{ top_buf_0_ce0 sc_out sc_logic 1 signal 33 } 
	{ top_buf_0_q0 sc_in sc_lv 32 signal 33 } 
	{ top_buf_0_address1 sc_out sc_lv 8 signal 33 } 
	{ top_buf_0_ce1 sc_out sc_logic 1 signal 33 } 
	{ top_buf_0_q1 sc_in sc_lv 32 signal 33 } 
	{ top_buf_1_address0 sc_out sc_lv 8 signal 34 } 
	{ top_buf_1_ce0 sc_out sc_logic 1 signal 34 } 
	{ top_buf_1_q0 sc_in sc_lv 32 signal 34 } 
	{ top_buf_1_address1 sc_out sc_lv 8 signal 34 } 
	{ top_buf_1_ce1 sc_out sc_logic 1 signal 34 } 
	{ top_buf_1_q1 sc_in sc_lv 32 signal 34 } 
	{ top_buf_2_address0 sc_out sc_lv 8 signal 35 } 
	{ top_buf_2_ce0 sc_out sc_logic 1 signal 35 } 
	{ top_buf_2_q0 sc_in sc_lv 32 signal 35 } 
	{ top_buf_2_address1 sc_out sc_lv 8 signal 35 } 
	{ top_buf_2_ce1 sc_out sc_logic 1 signal 35 } 
	{ top_buf_2_q1 sc_in sc_lv 32 signal 35 } 
	{ top_buf_3_address0 sc_out sc_lv 8 signal 36 } 
	{ top_buf_3_ce0 sc_out sc_logic 1 signal 36 } 
	{ top_buf_3_q0 sc_in sc_lv 32 signal 36 } 
	{ top_buf_3_address1 sc_out sc_lv 8 signal 36 } 
	{ top_buf_3_ce1 sc_out sc_logic 1 signal 36 } 
	{ top_buf_3_q1 sc_in sc_lv 32 signal 36 } 
	{ top_buf_4_address0 sc_out sc_lv 8 signal 37 } 
	{ top_buf_4_ce0 sc_out sc_logic 1 signal 37 } 
	{ top_buf_4_q0 sc_in sc_lv 32 signal 37 } 
	{ top_buf_4_address1 sc_out sc_lv 8 signal 37 } 
	{ top_buf_4_ce1 sc_out sc_logic 1 signal 37 } 
	{ top_buf_4_q1 sc_in sc_lv 32 signal 37 } 
	{ top_buf_5_address0 sc_out sc_lv 8 signal 38 } 
	{ top_buf_5_ce0 sc_out sc_logic 1 signal 38 } 
	{ top_buf_5_q0 sc_in sc_lv 32 signal 38 } 
	{ top_buf_5_address1 sc_out sc_lv 8 signal 38 } 
	{ top_buf_5_ce1 sc_out sc_logic 1 signal 38 } 
	{ top_buf_5_q1 sc_in sc_lv 32 signal 38 } 
	{ top_buf_6_address0 sc_out sc_lv 8 signal 39 } 
	{ top_buf_6_ce0 sc_out sc_logic 1 signal 39 } 
	{ top_buf_6_q0 sc_in sc_lv 32 signal 39 } 
	{ top_buf_6_address1 sc_out sc_lv 8 signal 39 } 
	{ top_buf_6_ce1 sc_out sc_logic 1 signal 39 } 
	{ top_buf_6_q1 sc_in sc_lv 32 signal 39 } 
	{ top_buf_7_address0 sc_out sc_lv 8 signal 40 } 
	{ top_buf_7_ce0 sc_out sc_logic 1 signal 40 } 
	{ top_buf_7_q0 sc_in sc_lv 32 signal 40 } 
	{ top_buf_7_address1 sc_out sc_lv 8 signal 40 } 
	{ top_buf_7_ce1 sc_out sc_logic 1 signal 40 } 
	{ top_buf_7_q1 sc_in sc_lv 32 signal 40 } 
	{ top_buf_8_address0 sc_out sc_lv 8 signal 41 } 
	{ top_buf_8_ce0 sc_out sc_logic 1 signal 41 } 
	{ top_buf_8_q0 sc_in sc_lv 32 signal 41 } 
	{ top_buf_8_address1 sc_out sc_lv 8 signal 41 } 
	{ top_buf_8_ce1 sc_out sc_logic 1 signal 41 } 
	{ top_buf_8_q1 sc_in sc_lv 32 signal 41 } 
	{ top_buf_9_address0 sc_out sc_lv 8 signal 42 } 
	{ top_buf_9_ce0 sc_out sc_logic 1 signal 42 } 
	{ top_buf_9_q0 sc_in sc_lv 32 signal 42 } 
	{ top_buf_9_address1 sc_out sc_lv 8 signal 42 } 
	{ top_buf_9_ce1 sc_out sc_logic 1 signal 42 } 
	{ top_buf_9_q1 sc_in sc_lv 32 signal 42 } 
	{ top_buf_10_address0 sc_out sc_lv 8 signal 43 } 
	{ top_buf_10_ce0 sc_out sc_logic 1 signal 43 } 
	{ top_buf_10_q0 sc_in sc_lv 32 signal 43 } 
	{ top_buf_10_address1 sc_out sc_lv 8 signal 43 } 
	{ top_buf_10_ce1 sc_out sc_logic 1 signal 43 } 
	{ top_buf_10_q1 sc_in sc_lv 32 signal 43 } 
	{ top_buf_11_address0 sc_out sc_lv 8 signal 44 } 
	{ top_buf_11_ce0 sc_out sc_logic 1 signal 44 } 
	{ top_buf_11_q0 sc_in sc_lv 32 signal 44 } 
	{ top_buf_11_address1 sc_out sc_lv 8 signal 44 } 
	{ top_buf_11_ce1 sc_out sc_logic 1 signal 44 } 
	{ top_buf_11_q1 sc_in sc_lv 32 signal 44 } 
	{ top_buf_12_address0 sc_out sc_lv 8 signal 45 } 
	{ top_buf_12_ce0 sc_out sc_logic 1 signal 45 } 
	{ top_buf_12_q0 sc_in sc_lv 32 signal 45 } 
	{ top_buf_12_address1 sc_out sc_lv 8 signal 45 } 
	{ top_buf_12_ce1 sc_out sc_logic 1 signal 45 } 
	{ top_buf_12_q1 sc_in sc_lv 32 signal 45 } 
	{ top_buf_13_address0 sc_out sc_lv 8 signal 46 } 
	{ top_buf_13_ce0 sc_out sc_logic 1 signal 46 } 
	{ top_buf_13_q0 sc_in sc_lv 32 signal 46 } 
	{ top_buf_13_address1 sc_out sc_lv 8 signal 46 } 
	{ top_buf_13_ce1 sc_out sc_logic 1 signal 46 } 
	{ top_buf_13_q1 sc_in sc_lv 32 signal 46 } 
	{ top_buf_14_address0 sc_out sc_lv 8 signal 47 } 
	{ top_buf_14_ce0 sc_out sc_logic 1 signal 47 } 
	{ top_buf_14_q0 sc_in sc_lv 32 signal 47 } 
	{ top_buf_14_address1 sc_out sc_lv 8 signal 47 } 
	{ top_buf_14_ce1 sc_out sc_logic 1 signal 47 } 
	{ top_buf_14_q1 sc_in sc_lv 32 signal 47 } 
	{ top_buf_15_address0 sc_out sc_lv 8 signal 48 } 
	{ top_buf_15_ce0 sc_out sc_logic 1 signal 48 } 
	{ top_buf_15_q0 sc_in sc_lv 32 signal 48 } 
	{ top_buf_15_address1 sc_out sc_lv 8 signal 48 } 
	{ top_buf_15_ce1 sc_out sc_logic 1 signal 48 } 
	{ top_buf_15_q1 sc_in sc_lv 32 signal 48 } 
	{ bottom_buf_0_address0 sc_out sc_lv 8 signal 49 } 
	{ bottom_buf_0_ce0 sc_out sc_logic 1 signal 49 } 
	{ bottom_buf_0_q0 sc_in sc_lv 32 signal 49 } 
	{ bottom_buf_0_address1 sc_out sc_lv 8 signal 49 } 
	{ bottom_buf_0_ce1 sc_out sc_logic 1 signal 49 } 
	{ bottom_buf_0_q1 sc_in sc_lv 32 signal 49 } 
	{ bottom_buf_1_address0 sc_out sc_lv 8 signal 50 } 
	{ bottom_buf_1_ce0 sc_out sc_logic 1 signal 50 } 
	{ bottom_buf_1_q0 sc_in sc_lv 32 signal 50 } 
	{ bottom_buf_1_address1 sc_out sc_lv 8 signal 50 } 
	{ bottom_buf_1_ce1 sc_out sc_logic 1 signal 50 } 
	{ bottom_buf_1_q1 sc_in sc_lv 32 signal 50 } 
	{ bottom_buf_2_address0 sc_out sc_lv 8 signal 51 } 
	{ bottom_buf_2_ce0 sc_out sc_logic 1 signal 51 } 
	{ bottom_buf_2_q0 sc_in sc_lv 32 signal 51 } 
	{ bottom_buf_2_address1 sc_out sc_lv 8 signal 51 } 
	{ bottom_buf_2_ce1 sc_out sc_logic 1 signal 51 } 
	{ bottom_buf_2_q1 sc_in sc_lv 32 signal 51 } 
	{ bottom_buf_3_address0 sc_out sc_lv 8 signal 52 } 
	{ bottom_buf_3_ce0 sc_out sc_logic 1 signal 52 } 
	{ bottom_buf_3_q0 sc_in sc_lv 32 signal 52 } 
	{ bottom_buf_3_address1 sc_out sc_lv 8 signal 52 } 
	{ bottom_buf_3_ce1 sc_out sc_logic 1 signal 52 } 
	{ bottom_buf_3_q1 sc_in sc_lv 32 signal 52 } 
	{ bottom_buf_4_address0 sc_out sc_lv 8 signal 53 } 
	{ bottom_buf_4_ce0 sc_out sc_logic 1 signal 53 } 
	{ bottom_buf_4_q0 sc_in sc_lv 32 signal 53 } 
	{ bottom_buf_4_address1 sc_out sc_lv 8 signal 53 } 
	{ bottom_buf_4_ce1 sc_out sc_logic 1 signal 53 } 
	{ bottom_buf_4_q1 sc_in sc_lv 32 signal 53 } 
	{ bottom_buf_5_address0 sc_out sc_lv 8 signal 54 } 
	{ bottom_buf_5_ce0 sc_out sc_logic 1 signal 54 } 
	{ bottom_buf_5_q0 sc_in sc_lv 32 signal 54 } 
	{ bottom_buf_5_address1 sc_out sc_lv 8 signal 54 } 
	{ bottom_buf_5_ce1 sc_out sc_logic 1 signal 54 } 
	{ bottom_buf_5_q1 sc_in sc_lv 32 signal 54 } 
	{ bottom_buf_6_address0 sc_out sc_lv 8 signal 55 } 
	{ bottom_buf_6_ce0 sc_out sc_logic 1 signal 55 } 
	{ bottom_buf_6_q0 sc_in sc_lv 32 signal 55 } 
	{ bottom_buf_6_address1 sc_out sc_lv 8 signal 55 } 
	{ bottom_buf_6_ce1 sc_out sc_logic 1 signal 55 } 
	{ bottom_buf_6_q1 sc_in sc_lv 32 signal 55 } 
	{ bottom_buf_7_address0 sc_out sc_lv 8 signal 56 } 
	{ bottom_buf_7_ce0 sc_out sc_logic 1 signal 56 } 
	{ bottom_buf_7_q0 sc_in sc_lv 32 signal 56 } 
	{ bottom_buf_7_address1 sc_out sc_lv 8 signal 56 } 
	{ bottom_buf_7_ce1 sc_out sc_logic 1 signal 56 } 
	{ bottom_buf_7_q1 sc_in sc_lv 32 signal 56 } 
	{ bottom_buf_8_address0 sc_out sc_lv 8 signal 57 } 
	{ bottom_buf_8_ce0 sc_out sc_logic 1 signal 57 } 
	{ bottom_buf_8_q0 sc_in sc_lv 32 signal 57 } 
	{ bottom_buf_8_address1 sc_out sc_lv 8 signal 57 } 
	{ bottom_buf_8_ce1 sc_out sc_logic 1 signal 57 } 
	{ bottom_buf_8_q1 sc_in sc_lv 32 signal 57 } 
	{ bottom_buf_9_address0 sc_out sc_lv 8 signal 58 } 
	{ bottom_buf_9_ce0 sc_out sc_logic 1 signal 58 } 
	{ bottom_buf_9_q0 sc_in sc_lv 32 signal 58 } 
	{ bottom_buf_9_address1 sc_out sc_lv 8 signal 58 } 
	{ bottom_buf_9_ce1 sc_out sc_logic 1 signal 58 } 
	{ bottom_buf_9_q1 sc_in sc_lv 32 signal 58 } 
	{ bottom_buf_10_address0 sc_out sc_lv 8 signal 59 } 
	{ bottom_buf_10_ce0 sc_out sc_logic 1 signal 59 } 
	{ bottom_buf_10_q0 sc_in sc_lv 32 signal 59 } 
	{ bottom_buf_10_address1 sc_out sc_lv 8 signal 59 } 
	{ bottom_buf_10_ce1 sc_out sc_logic 1 signal 59 } 
	{ bottom_buf_10_q1 sc_in sc_lv 32 signal 59 } 
	{ bottom_buf_11_address0 sc_out sc_lv 8 signal 60 } 
	{ bottom_buf_11_ce0 sc_out sc_logic 1 signal 60 } 
	{ bottom_buf_11_q0 sc_in sc_lv 32 signal 60 } 
	{ bottom_buf_11_address1 sc_out sc_lv 8 signal 60 } 
	{ bottom_buf_11_ce1 sc_out sc_logic 1 signal 60 } 
	{ bottom_buf_11_q1 sc_in sc_lv 32 signal 60 } 
	{ bottom_buf_12_address0 sc_out sc_lv 8 signal 61 } 
	{ bottom_buf_12_ce0 sc_out sc_logic 1 signal 61 } 
	{ bottom_buf_12_q0 sc_in sc_lv 32 signal 61 } 
	{ bottom_buf_12_address1 sc_out sc_lv 8 signal 61 } 
	{ bottom_buf_12_ce1 sc_out sc_logic 1 signal 61 } 
	{ bottom_buf_12_q1 sc_in sc_lv 32 signal 61 } 
	{ bottom_buf_13_address0 sc_out sc_lv 8 signal 62 } 
	{ bottom_buf_13_ce0 sc_out sc_logic 1 signal 62 } 
	{ bottom_buf_13_q0 sc_in sc_lv 32 signal 62 } 
	{ bottom_buf_13_address1 sc_out sc_lv 8 signal 62 } 
	{ bottom_buf_13_ce1 sc_out sc_logic 1 signal 62 } 
	{ bottom_buf_13_q1 sc_in sc_lv 32 signal 62 } 
	{ bottom_buf_14_address0 sc_out sc_lv 8 signal 63 } 
	{ bottom_buf_14_ce0 sc_out sc_logic 1 signal 63 } 
	{ bottom_buf_14_q0 sc_in sc_lv 32 signal 63 } 
	{ bottom_buf_14_address1 sc_out sc_lv 8 signal 63 } 
	{ bottom_buf_14_ce1 sc_out sc_logic 1 signal 63 } 
	{ bottom_buf_14_q1 sc_in sc_lv 32 signal 63 } 
	{ bottom_buf_15_address0 sc_out sc_lv 8 signal 64 } 
	{ bottom_buf_15_ce0 sc_out sc_logic 1 signal 64 } 
	{ bottom_buf_15_q0 sc_in sc_lv 32 signal 64 } 
	{ bottom_buf_15_address1 sc_out sc_lv 8 signal 64 } 
	{ bottom_buf_15_ce1 sc_out sc_logic 1 signal 64 } 
	{ bottom_buf_15_q1 sc_in sc_lv 32 signal 64 } 
	{ power_buf_0_address0 sc_out sc_lv 8 signal 65 } 
	{ power_buf_0_ce0 sc_out sc_logic 1 signal 65 } 
	{ power_buf_0_q0 sc_in sc_lv 32 signal 65 } 
	{ power_buf_0_address1 sc_out sc_lv 8 signal 65 } 
	{ power_buf_0_ce1 sc_out sc_logic 1 signal 65 } 
	{ power_buf_0_q1 sc_in sc_lv 32 signal 65 } 
	{ power_buf_1_address0 sc_out sc_lv 8 signal 66 } 
	{ power_buf_1_ce0 sc_out sc_logic 1 signal 66 } 
	{ power_buf_1_q0 sc_in sc_lv 32 signal 66 } 
	{ power_buf_1_address1 sc_out sc_lv 8 signal 66 } 
	{ power_buf_1_ce1 sc_out sc_logic 1 signal 66 } 
	{ power_buf_1_q1 sc_in sc_lv 32 signal 66 } 
	{ power_buf_2_address0 sc_out sc_lv 8 signal 67 } 
	{ power_buf_2_ce0 sc_out sc_logic 1 signal 67 } 
	{ power_buf_2_q0 sc_in sc_lv 32 signal 67 } 
	{ power_buf_2_address1 sc_out sc_lv 8 signal 67 } 
	{ power_buf_2_ce1 sc_out sc_logic 1 signal 67 } 
	{ power_buf_2_q1 sc_in sc_lv 32 signal 67 } 
	{ power_buf_3_address0 sc_out sc_lv 8 signal 68 } 
	{ power_buf_3_ce0 sc_out sc_logic 1 signal 68 } 
	{ power_buf_3_q0 sc_in sc_lv 32 signal 68 } 
	{ power_buf_3_address1 sc_out sc_lv 8 signal 68 } 
	{ power_buf_3_ce1 sc_out sc_logic 1 signal 68 } 
	{ power_buf_3_q1 sc_in sc_lv 32 signal 68 } 
	{ power_buf_4_address0 sc_out sc_lv 8 signal 69 } 
	{ power_buf_4_ce0 sc_out sc_logic 1 signal 69 } 
	{ power_buf_4_q0 sc_in sc_lv 32 signal 69 } 
	{ power_buf_4_address1 sc_out sc_lv 8 signal 69 } 
	{ power_buf_4_ce1 sc_out sc_logic 1 signal 69 } 
	{ power_buf_4_q1 sc_in sc_lv 32 signal 69 } 
	{ power_buf_5_address0 sc_out sc_lv 8 signal 70 } 
	{ power_buf_5_ce0 sc_out sc_logic 1 signal 70 } 
	{ power_buf_5_q0 sc_in sc_lv 32 signal 70 } 
	{ power_buf_5_address1 sc_out sc_lv 8 signal 70 } 
	{ power_buf_5_ce1 sc_out sc_logic 1 signal 70 } 
	{ power_buf_5_q1 sc_in sc_lv 32 signal 70 } 
	{ power_buf_6_address0 sc_out sc_lv 8 signal 71 } 
	{ power_buf_6_ce0 sc_out sc_logic 1 signal 71 } 
	{ power_buf_6_q0 sc_in sc_lv 32 signal 71 } 
	{ power_buf_6_address1 sc_out sc_lv 8 signal 71 } 
	{ power_buf_6_ce1 sc_out sc_logic 1 signal 71 } 
	{ power_buf_6_q1 sc_in sc_lv 32 signal 71 } 
	{ power_buf_7_address0 sc_out sc_lv 8 signal 72 } 
	{ power_buf_7_ce0 sc_out sc_logic 1 signal 72 } 
	{ power_buf_7_q0 sc_in sc_lv 32 signal 72 } 
	{ power_buf_7_address1 sc_out sc_lv 8 signal 72 } 
	{ power_buf_7_ce1 sc_out sc_logic 1 signal 72 } 
	{ power_buf_7_q1 sc_in sc_lv 32 signal 72 } 
	{ power_buf_8_address0 sc_out sc_lv 8 signal 73 } 
	{ power_buf_8_ce0 sc_out sc_logic 1 signal 73 } 
	{ power_buf_8_q0 sc_in sc_lv 32 signal 73 } 
	{ power_buf_8_address1 sc_out sc_lv 8 signal 73 } 
	{ power_buf_8_ce1 sc_out sc_logic 1 signal 73 } 
	{ power_buf_8_q1 sc_in sc_lv 32 signal 73 } 
	{ power_buf_9_address0 sc_out sc_lv 8 signal 74 } 
	{ power_buf_9_ce0 sc_out sc_logic 1 signal 74 } 
	{ power_buf_9_q0 sc_in sc_lv 32 signal 74 } 
	{ power_buf_9_address1 sc_out sc_lv 8 signal 74 } 
	{ power_buf_9_ce1 sc_out sc_logic 1 signal 74 } 
	{ power_buf_9_q1 sc_in sc_lv 32 signal 74 } 
	{ power_buf_10_address0 sc_out sc_lv 8 signal 75 } 
	{ power_buf_10_ce0 sc_out sc_logic 1 signal 75 } 
	{ power_buf_10_q0 sc_in sc_lv 32 signal 75 } 
	{ power_buf_10_address1 sc_out sc_lv 8 signal 75 } 
	{ power_buf_10_ce1 sc_out sc_logic 1 signal 75 } 
	{ power_buf_10_q1 sc_in sc_lv 32 signal 75 } 
	{ power_buf_11_address0 sc_out sc_lv 8 signal 76 } 
	{ power_buf_11_ce0 sc_out sc_logic 1 signal 76 } 
	{ power_buf_11_q0 sc_in sc_lv 32 signal 76 } 
	{ power_buf_11_address1 sc_out sc_lv 8 signal 76 } 
	{ power_buf_11_ce1 sc_out sc_logic 1 signal 76 } 
	{ power_buf_11_q1 sc_in sc_lv 32 signal 76 } 
	{ power_buf_12_address0 sc_out sc_lv 8 signal 77 } 
	{ power_buf_12_ce0 sc_out sc_logic 1 signal 77 } 
	{ power_buf_12_q0 sc_in sc_lv 32 signal 77 } 
	{ power_buf_12_address1 sc_out sc_lv 8 signal 77 } 
	{ power_buf_12_ce1 sc_out sc_logic 1 signal 77 } 
	{ power_buf_12_q1 sc_in sc_lv 32 signal 77 } 
	{ power_buf_13_address0 sc_out sc_lv 8 signal 78 } 
	{ power_buf_13_ce0 sc_out sc_logic 1 signal 78 } 
	{ power_buf_13_q0 sc_in sc_lv 32 signal 78 } 
	{ power_buf_13_address1 sc_out sc_lv 8 signal 78 } 
	{ power_buf_13_ce1 sc_out sc_logic 1 signal 78 } 
	{ power_buf_13_q1 sc_in sc_lv 32 signal 78 } 
	{ power_buf_14_address0 sc_out sc_lv 8 signal 79 } 
	{ power_buf_14_ce0 sc_out sc_logic 1 signal 79 } 
	{ power_buf_14_q0 sc_in sc_lv 32 signal 79 } 
	{ power_buf_14_address1 sc_out sc_lv 8 signal 79 } 
	{ power_buf_14_ce1 sc_out sc_logic 1 signal 79 } 
	{ power_buf_14_q1 sc_in sc_lv 32 signal 79 } 
	{ power_buf_15_address0 sc_out sc_lv 8 signal 80 } 
	{ power_buf_15_ce0 sc_out sc_logic 1 signal 80 } 
	{ power_buf_15_q0 sc_in sc_lv 32 signal 80 } 
	{ power_buf_15_address1 sc_out sc_lv 8 signal 80 } 
	{ power_buf_15_ce1 sc_out sc_logic 1 signal 80 } 
	{ power_buf_15_q1 sc_in sc_lv 32 signal 80 } 
	{ cc sc_in sc_lv 32 signal 81 } 
	{ cn sc_in sc_lv 32 signal 82 } 
	{ cs sc_in sc_lv 32 signal 83 } 
	{ ce_r sc_in sc_lv 32 signal 84 } 
	{ cw sc_in sc_lv 32 signal 85 } 
	{ ct sc_in sc_lv 32 signal 86 } 
	{ cb sc_in sc_lv 32 signal 87 } 
	{ Cap sc_in sc_lv 32 signal 88 } 
	{ dt sc_in sc_lv 32 signal 89 } 
	{ amb_temp sc_in sc_lv 32 signal 90 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "compute_flag", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "compute_flag", "role": "default" }} , 
 	{ "name": "result_buf_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_0", "role": "address0" }} , 
 	{ "name": "result_buf_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_0", "role": "ce0" }} , 
 	{ "name": "result_buf_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_0", "role": "we0" }} , 
 	{ "name": "result_buf_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_0", "role": "d0" }} , 
 	{ "name": "result_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_1", "role": "address0" }} , 
 	{ "name": "result_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_1", "role": "ce0" }} , 
 	{ "name": "result_buf_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_1", "role": "we0" }} , 
 	{ "name": "result_buf_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_1", "role": "d0" }} , 
 	{ "name": "result_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_2", "role": "address0" }} , 
 	{ "name": "result_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_2", "role": "ce0" }} , 
 	{ "name": "result_buf_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_2", "role": "we0" }} , 
 	{ "name": "result_buf_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_2", "role": "d0" }} , 
 	{ "name": "result_buf_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_2", "role": "address1" }} , 
 	{ "name": "result_buf_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_2", "role": "ce1" }} , 
 	{ "name": "result_buf_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_2", "role": "we1" }} , 
 	{ "name": "result_buf_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_2", "role": "d1" }} , 
 	{ "name": "result_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_3", "role": "address0" }} , 
 	{ "name": "result_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_3", "role": "ce0" }} , 
 	{ "name": "result_buf_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_3", "role": "we0" }} , 
 	{ "name": "result_buf_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_3", "role": "d0" }} , 
 	{ "name": "result_buf_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_3", "role": "address1" }} , 
 	{ "name": "result_buf_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_3", "role": "ce1" }} , 
 	{ "name": "result_buf_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_3", "role": "we1" }} , 
 	{ "name": "result_buf_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_3", "role": "d1" }} , 
 	{ "name": "result_buf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_4", "role": "address0" }} , 
 	{ "name": "result_buf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_4", "role": "ce0" }} , 
 	{ "name": "result_buf_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_4", "role": "we0" }} , 
 	{ "name": "result_buf_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_4", "role": "d0" }} , 
 	{ "name": "result_buf_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_4", "role": "address1" }} , 
 	{ "name": "result_buf_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_4", "role": "ce1" }} , 
 	{ "name": "result_buf_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_4", "role": "we1" }} , 
 	{ "name": "result_buf_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_4", "role": "d1" }} , 
 	{ "name": "result_buf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_5", "role": "address0" }} , 
 	{ "name": "result_buf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_5", "role": "ce0" }} , 
 	{ "name": "result_buf_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_5", "role": "we0" }} , 
 	{ "name": "result_buf_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_5", "role": "d0" }} , 
 	{ "name": "result_buf_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_5", "role": "address1" }} , 
 	{ "name": "result_buf_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_5", "role": "ce1" }} , 
 	{ "name": "result_buf_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_5", "role": "we1" }} , 
 	{ "name": "result_buf_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_5", "role": "d1" }} , 
 	{ "name": "result_buf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_6", "role": "address0" }} , 
 	{ "name": "result_buf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_6", "role": "ce0" }} , 
 	{ "name": "result_buf_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_6", "role": "we0" }} , 
 	{ "name": "result_buf_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_6", "role": "d0" }} , 
 	{ "name": "result_buf_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_6", "role": "address1" }} , 
 	{ "name": "result_buf_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_6", "role": "ce1" }} , 
 	{ "name": "result_buf_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_6", "role": "we1" }} , 
 	{ "name": "result_buf_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_6", "role": "d1" }} , 
 	{ "name": "result_buf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_7", "role": "address0" }} , 
 	{ "name": "result_buf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_7", "role": "ce0" }} , 
 	{ "name": "result_buf_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_7", "role": "we0" }} , 
 	{ "name": "result_buf_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_7", "role": "d0" }} , 
 	{ "name": "result_buf_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_7", "role": "address1" }} , 
 	{ "name": "result_buf_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_7", "role": "ce1" }} , 
 	{ "name": "result_buf_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_7", "role": "we1" }} , 
 	{ "name": "result_buf_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_7", "role": "d1" }} , 
 	{ "name": "result_buf_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_8", "role": "address0" }} , 
 	{ "name": "result_buf_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_8", "role": "ce0" }} , 
 	{ "name": "result_buf_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_8", "role": "we0" }} , 
 	{ "name": "result_buf_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_8", "role": "d0" }} , 
 	{ "name": "result_buf_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_8", "role": "address1" }} , 
 	{ "name": "result_buf_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_8", "role": "ce1" }} , 
 	{ "name": "result_buf_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_8", "role": "we1" }} , 
 	{ "name": "result_buf_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_8", "role": "d1" }} , 
 	{ "name": "result_buf_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_9", "role": "address0" }} , 
 	{ "name": "result_buf_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_9", "role": "ce0" }} , 
 	{ "name": "result_buf_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_9", "role": "we0" }} , 
 	{ "name": "result_buf_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_9", "role": "d0" }} , 
 	{ "name": "result_buf_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_9", "role": "address1" }} , 
 	{ "name": "result_buf_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_9", "role": "ce1" }} , 
 	{ "name": "result_buf_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_9", "role": "we1" }} , 
 	{ "name": "result_buf_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_9", "role": "d1" }} , 
 	{ "name": "result_buf_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_10", "role": "address0" }} , 
 	{ "name": "result_buf_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_10", "role": "ce0" }} , 
 	{ "name": "result_buf_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_10", "role": "we0" }} , 
 	{ "name": "result_buf_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_10", "role": "d0" }} , 
 	{ "name": "result_buf_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_10", "role": "address1" }} , 
 	{ "name": "result_buf_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_10", "role": "ce1" }} , 
 	{ "name": "result_buf_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_10", "role": "we1" }} , 
 	{ "name": "result_buf_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_10", "role": "d1" }} , 
 	{ "name": "result_buf_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_11", "role": "address0" }} , 
 	{ "name": "result_buf_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_11", "role": "ce0" }} , 
 	{ "name": "result_buf_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_11", "role": "we0" }} , 
 	{ "name": "result_buf_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_11", "role": "d0" }} , 
 	{ "name": "result_buf_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_11", "role": "address1" }} , 
 	{ "name": "result_buf_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_11", "role": "ce1" }} , 
 	{ "name": "result_buf_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_11", "role": "we1" }} , 
 	{ "name": "result_buf_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_11", "role": "d1" }} , 
 	{ "name": "result_buf_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_12", "role": "address0" }} , 
 	{ "name": "result_buf_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_12", "role": "ce0" }} , 
 	{ "name": "result_buf_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_12", "role": "we0" }} , 
 	{ "name": "result_buf_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_12", "role": "d0" }} , 
 	{ "name": "result_buf_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_12", "role": "address1" }} , 
 	{ "name": "result_buf_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_12", "role": "ce1" }} , 
 	{ "name": "result_buf_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_12", "role": "we1" }} , 
 	{ "name": "result_buf_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_12", "role": "d1" }} , 
 	{ "name": "result_buf_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_13", "role": "address0" }} , 
 	{ "name": "result_buf_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_13", "role": "ce0" }} , 
 	{ "name": "result_buf_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_13", "role": "we0" }} , 
 	{ "name": "result_buf_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_13", "role": "d0" }} , 
 	{ "name": "result_buf_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_13", "role": "address1" }} , 
 	{ "name": "result_buf_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_13", "role": "ce1" }} , 
 	{ "name": "result_buf_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_13", "role": "we1" }} , 
 	{ "name": "result_buf_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_13", "role": "d1" }} , 
 	{ "name": "result_buf_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_14", "role": "address0" }} , 
 	{ "name": "result_buf_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_14", "role": "ce0" }} , 
 	{ "name": "result_buf_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_14", "role": "we0" }} , 
 	{ "name": "result_buf_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_14", "role": "d0" }} , 
 	{ "name": "result_buf_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_buf_15", "role": "address0" }} , 
 	{ "name": "result_buf_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_15", "role": "ce0" }} , 
 	{ "name": "result_buf_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf_15", "role": "we0" }} , 
 	{ "name": "result_buf_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf_15", "role": "d0" }} , 
 	{ "name": "center_buf_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_0", "role": "address0" }} , 
 	{ "name": "center_buf_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_0", "role": "ce0" }} , 
 	{ "name": "center_buf_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_0", "role": "q0" }} , 
 	{ "name": "center_buf_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_0", "role": "address1" }} , 
 	{ "name": "center_buf_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_0", "role": "ce1" }} , 
 	{ "name": "center_buf_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_0", "role": "q1" }} , 
 	{ "name": "center_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_1", "role": "address0" }} , 
 	{ "name": "center_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_1", "role": "ce0" }} , 
 	{ "name": "center_buf_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_1", "role": "q0" }} , 
 	{ "name": "center_buf_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_1", "role": "address1" }} , 
 	{ "name": "center_buf_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_1", "role": "ce1" }} , 
 	{ "name": "center_buf_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_1", "role": "q1" }} , 
 	{ "name": "center_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_2", "role": "address0" }} , 
 	{ "name": "center_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_2", "role": "ce0" }} , 
 	{ "name": "center_buf_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_2", "role": "q0" }} , 
 	{ "name": "center_buf_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_2", "role": "address1" }} , 
 	{ "name": "center_buf_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_2", "role": "ce1" }} , 
 	{ "name": "center_buf_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_2", "role": "q1" }} , 
 	{ "name": "center_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_3", "role": "address0" }} , 
 	{ "name": "center_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_3", "role": "ce0" }} , 
 	{ "name": "center_buf_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_3", "role": "q0" }} , 
 	{ "name": "center_buf_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_3", "role": "address1" }} , 
 	{ "name": "center_buf_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_3", "role": "ce1" }} , 
 	{ "name": "center_buf_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_3", "role": "q1" }} , 
 	{ "name": "center_buf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_4", "role": "address0" }} , 
 	{ "name": "center_buf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_4", "role": "ce0" }} , 
 	{ "name": "center_buf_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_4", "role": "q0" }} , 
 	{ "name": "center_buf_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_4", "role": "address1" }} , 
 	{ "name": "center_buf_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_4", "role": "ce1" }} , 
 	{ "name": "center_buf_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_4", "role": "q1" }} , 
 	{ "name": "center_buf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_5", "role": "address0" }} , 
 	{ "name": "center_buf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_5", "role": "ce0" }} , 
 	{ "name": "center_buf_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_5", "role": "q0" }} , 
 	{ "name": "center_buf_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_5", "role": "address1" }} , 
 	{ "name": "center_buf_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_5", "role": "ce1" }} , 
 	{ "name": "center_buf_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_5", "role": "q1" }} , 
 	{ "name": "center_buf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_6", "role": "address0" }} , 
 	{ "name": "center_buf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_6", "role": "ce0" }} , 
 	{ "name": "center_buf_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_6", "role": "q0" }} , 
 	{ "name": "center_buf_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_6", "role": "address1" }} , 
 	{ "name": "center_buf_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_6", "role": "ce1" }} , 
 	{ "name": "center_buf_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_6", "role": "q1" }} , 
 	{ "name": "center_buf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_7", "role": "address0" }} , 
 	{ "name": "center_buf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_7", "role": "ce0" }} , 
 	{ "name": "center_buf_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_7", "role": "q0" }} , 
 	{ "name": "center_buf_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_7", "role": "address1" }} , 
 	{ "name": "center_buf_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_7", "role": "ce1" }} , 
 	{ "name": "center_buf_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_7", "role": "q1" }} , 
 	{ "name": "center_buf_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_8", "role": "address0" }} , 
 	{ "name": "center_buf_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_8", "role": "ce0" }} , 
 	{ "name": "center_buf_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_8", "role": "q0" }} , 
 	{ "name": "center_buf_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_8", "role": "address1" }} , 
 	{ "name": "center_buf_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_8", "role": "ce1" }} , 
 	{ "name": "center_buf_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_8", "role": "q1" }} , 
 	{ "name": "center_buf_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_9", "role": "address0" }} , 
 	{ "name": "center_buf_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_9", "role": "ce0" }} , 
 	{ "name": "center_buf_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_9", "role": "q0" }} , 
 	{ "name": "center_buf_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_9", "role": "address1" }} , 
 	{ "name": "center_buf_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_9", "role": "ce1" }} , 
 	{ "name": "center_buf_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_9", "role": "q1" }} , 
 	{ "name": "center_buf_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_10", "role": "address0" }} , 
 	{ "name": "center_buf_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_10", "role": "ce0" }} , 
 	{ "name": "center_buf_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_10", "role": "q0" }} , 
 	{ "name": "center_buf_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_10", "role": "address1" }} , 
 	{ "name": "center_buf_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_10", "role": "ce1" }} , 
 	{ "name": "center_buf_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_10", "role": "q1" }} , 
 	{ "name": "center_buf_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_11", "role": "address0" }} , 
 	{ "name": "center_buf_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_11", "role": "ce0" }} , 
 	{ "name": "center_buf_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_11", "role": "q0" }} , 
 	{ "name": "center_buf_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_11", "role": "address1" }} , 
 	{ "name": "center_buf_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_11", "role": "ce1" }} , 
 	{ "name": "center_buf_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_11", "role": "q1" }} , 
 	{ "name": "center_buf_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_12", "role": "address0" }} , 
 	{ "name": "center_buf_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_12", "role": "ce0" }} , 
 	{ "name": "center_buf_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_12", "role": "q0" }} , 
 	{ "name": "center_buf_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_12", "role": "address1" }} , 
 	{ "name": "center_buf_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_12", "role": "ce1" }} , 
 	{ "name": "center_buf_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_12", "role": "q1" }} , 
 	{ "name": "center_buf_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_13", "role": "address0" }} , 
 	{ "name": "center_buf_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_13", "role": "ce0" }} , 
 	{ "name": "center_buf_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_13", "role": "q0" }} , 
 	{ "name": "center_buf_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_13", "role": "address1" }} , 
 	{ "name": "center_buf_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_13", "role": "ce1" }} , 
 	{ "name": "center_buf_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_13", "role": "q1" }} , 
 	{ "name": "center_buf_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_14", "role": "address0" }} , 
 	{ "name": "center_buf_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_14", "role": "ce0" }} , 
 	{ "name": "center_buf_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_14", "role": "q0" }} , 
 	{ "name": "center_buf_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_14", "role": "address1" }} , 
 	{ "name": "center_buf_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_14", "role": "ce1" }} , 
 	{ "name": "center_buf_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_14", "role": "q1" }} , 
 	{ "name": "center_buf_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_15", "role": "address0" }} , 
 	{ "name": "center_buf_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_15", "role": "ce0" }} , 
 	{ "name": "center_buf_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_15", "role": "q0" }} , 
 	{ "name": "center_buf_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_15", "role": "address1" }} , 
 	{ "name": "center_buf_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_15", "role": "ce1" }} , 
 	{ "name": "center_buf_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_15", "role": "q1" }} , 
 	{ "name": "top_buf_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_0", "role": "address0" }} , 
 	{ "name": "top_buf_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_0", "role": "ce0" }} , 
 	{ "name": "top_buf_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_0", "role": "q0" }} , 
 	{ "name": "top_buf_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_0", "role": "address1" }} , 
 	{ "name": "top_buf_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_0", "role": "ce1" }} , 
 	{ "name": "top_buf_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_0", "role": "q1" }} , 
 	{ "name": "top_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_1", "role": "address0" }} , 
 	{ "name": "top_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_1", "role": "ce0" }} , 
 	{ "name": "top_buf_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_1", "role": "q0" }} , 
 	{ "name": "top_buf_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_1", "role": "address1" }} , 
 	{ "name": "top_buf_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_1", "role": "ce1" }} , 
 	{ "name": "top_buf_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_1", "role": "q1" }} , 
 	{ "name": "top_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_2", "role": "address0" }} , 
 	{ "name": "top_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_2", "role": "ce0" }} , 
 	{ "name": "top_buf_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_2", "role": "q0" }} , 
 	{ "name": "top_buf_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_2", "role": "address1" }} , 
 	{ "name": "top_buf_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_2", "role": "ce1" }} , 
 	{ "name": "top_buf_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_2", "role": "q1" }} , 
 	{ "name": "top_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_3", "role": "address0" }} , 
 	{ "name": "top_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_3", "role": "ce0" }} , 
 	{ "name": "top_buf_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_3", "role": "q0" }} , 
 	{ "name": "top_buf_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_3", "role": "address1" }} , 
 	{ "name": "top_buf_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_3", "role": "ce1" }} , 
 	{ "name": "top_buf_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_3", "role": "q1" }} , 
 	{ "name": "top_buf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_4", "role": "address0" }} , 
 	{ "name": "top_buf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_4", "role": "ce0" }} , 
 	{ "name": "top_buf_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_4", "role": "q0" }} , 
 	{ "name": "top_buf_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_4", "role": "address1" }} , 
 	{ "name": "top_buf_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_4", "role": "ce1" }} , 
 	{ "name": "top_buf_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_4", "role": "q1" }} , 
 	{ "name": "top_buf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_5", "role": "address0" }} , 
 	{ "name": "top_buf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_5", "role": "ce0" }} , 
 	{ "name": "top_buf_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_5", "role": "q0" }} , 
 	{ "name": "top_buf_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_5", "role": "address1" }} , 
 	{ "name": "top_buf_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_5", "role": "ce1" }} , 
 	{ "name": "top_buf_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_5", "role": "q1" }} , 
 	{ "name": "top_buf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_6", "role": "address0" }} , 
 	{ "name": "top_buf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_6", "role": "ce0" }} , 
 	{ "name": "top_buf_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_6", "role": "q0" }} , 
 	{ "name": "top_buf_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_6", "role": "address1" }} , 
 	{ "name": "top_buf_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_6", "role": "ce1" }} , 
 	{ "name": "top_buf_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_6", "role": "q1" }} , 
 	{ "name": "top_buf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_7", "role": "address0" }} , 
 	{ "name": "top_buf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_7", "role": "ce0" }} , 
 	{ "name": "top_buf_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_7", "role": "q0" }} , 
 	{ "name": "top_buf_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_7", "role": "address1" }} , 
 	{ "name": "top_buf_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_7", "role": "ce1" }} , 
 	{ "name": "top_buf_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_7", "role": "q1" }} , 
 	{ "name": "top_buf_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_8", "role": "address0" }} , 
 	{ "name": "top_buf_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_8", "role": "ce0" }} , 
 	{ "name": "top_buf_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_8", "role": "q0" }} , 
 	{ "name": "top_buf_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_8", "role": "address1" }} , 
 	{ "name": "top_buf_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_8", "role": "ce1" }} , 
 	{ "name": "top_buf_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_8", "role": "q1" }} , 
 	{ "name": "top_buf_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_9", "role": "address0" }} , 
 	{ "name": "top_buf_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_9", "role": "ce0" }} , 
 	{ "name": "top_buf_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_9", "role": "q0" }} , 
 	{ "name": "top_buf_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_9", "role": "address1" }} , 
 	{ "name": "top_buf_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_9", "role": "ce1" }} , 
 	{ "name": "top_buf_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_9", "role": "q1" }} , 
 	{ "name": "top_buf_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_10", "role": "address0" }} , 
 	{ "name": "top_buf_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_10", "role": "ce0" }} , 
 	{ "name": "top_buf_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_10", "role": "q0" }} , 
 	{ "name": "top_buf_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_10", "role": "address1" }} , 
 	{ "name": "top_buf_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_10", "role": "ce1" }} , 
 	{ "name": "top_buf_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_10", "role": "q1" }} , 
 	{ "name": "top_buf_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_11", "role": "address0" }} , 
 	{ "name": "top_buf_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_11", "role": "ce0" }} , 
 	{ "name": "top_buf_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_11", "role": "q0" }} , 
 	{ "name": "top_buf_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_11", "role": "address1" }} , 
 	{ "name": "top_buf_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_11", "role": "ce1" }} , 
 	{ "name": "top_buf_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_11", "role": "q1" }} , 
 	{ "name": "top_buf_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_12", "role": "address0" }} , 
 	{ "name": "top_buf_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_12", "role": "ce0" }} , 
 	{ "name": "top_buf_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_12", "role": "q0" }} , 
 	{ "name": "top_buf_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_12", "role": "address1" }} , 
 	{ "name": "top_buf_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_12", "role": "ce1" }} , 
 	{ "name": "top_buf_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_12", "role": "q1" }} , 
 	{ "name": "top_buf_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_13", "role": "address0" }} , 
 	{ "name": "top_buf_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_13", "role": "ce0" }} , 
 	{ "name": "top_buf_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_13", "role": "q0" }} , 
 	{ "name": "top_buf_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_13", "role": "address1" }} , 
 	{ "name": "top_buf_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_13", "role": "ce1" }} , 
 	{ "name": "top_buf_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_13", "role": "q1" }} , 
 	{ "name": "top_buf_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_14", "role": "address0" }} , 
 	{ "name": "top_buf_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_14", "role": "ce0" }} , 
 	{ "name": "top_buf_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_14", "role": "q0" }} , 
 	{ "name": "top_buf_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_14", "role": "address1" }} , 
 	{ "name": "top_buf_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_14", "role": "ce1" }} , 
 	{ "name": "top_buf_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_14", "role": "q1" }} , 
 	{ "name": "top_buf_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_15", "role": "address0" }} , 
 	{ "name": "top_buf_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_15", "role": "ce0" }} , 
 	{ "name": "top_buf_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_15", "role": "q0" }} , 
 	{ "name": "top_buf_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_15", "role": "address1" }} , 
 	{ "name": "top_buf_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_15", "role": "ce1" }} , 
 	{ "name": "top_buf_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_15", "role": "q1" }} , 
 	{ "name": "bottom_buf_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_0", "role": "address0" }} , 
 	{ "name": "bottom_buf_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_0", "role": "ce0" }} , 
 	{ "name": "bottom_buf_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_0", "role": "q0" }} , 
 	{ "name": "bottom_buf_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_0", "role": "address1" }} , 
 	{ "name": "bottom_buf_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_0", "role": "ce1" }} , 
 	{ "name": "bottom_buf_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_0", "role": "q1" }} , 
 	{ "name": "bottom_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_1", "role": "address0" }} , 
 	{ "name": "bottom_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_1", "role": "ce0" }} , 
 	{ "name": "bottom_buf_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_1", "role": "q0" }} , 
 	{ "name": "bottom_buf_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_1", "role": "address1" }} , 
 	{ "name": "bottom_buf_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_1", "role": "ce1" }} , 
 	{ "name": "bottom_buf_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_1", "role": "q1" }} , 
 	{ "name": "bottom_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_2", "role": "address0" }} , 
 	{ "name": "bottom_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_2", "role": "ce0" }} , 
 	{ "name": "bottom_buf_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_2", "role": "q0" }} , 
 	{ "name": "bottom_buf_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_2", "role": "address1" }} , 
 	{ "name": "bottom_buf_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_2", "role": "ce1" }} , 
 	{ "name": "bottom_buf_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_2", "role": "q1" }} , 
 	{ "name": "bottom_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_3", "role": "address0" }} , 
 	{ "name": "bottom_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_3", "role": "ce0" }} , 
 	{ "name": "bottom_buf_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_3", "role": "q0" }} , 
 	{ "name": "bottom_buf_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_3", "role": "address1" }} , 
 	{ "name": "bottom_buf_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_3", "role": "ce1" }} , 
 	{ "name": "bottom_buf_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_3", "role": "q1" }} , 
 	{ "name": "bottom_buf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_4", "role": "address0" }} , 
 	{ "name": "bottom_buf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_4", "role": "ce0" }} , 
 	{ "name": "bottom_buf_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_4", "role": "q0" }} , 
 	{ "name": "bottom_buf_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_4", "role": "address1" }} , 
 	{ "name": "bottom_buf_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_4", "role": "ce1" }} , 
 	{ "name": "bottom_buf_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_4", "role": "q1" }} , 
 	{ "name": "bottom_buf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_5", "role": "address0" }} , 
 	{ "name": "bottom_buf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_5", "role": "ce0" }} , 
 	{ "name": "bottom_buf_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_5", "role": "q0" }} , 
 	{ "name": "bottom_buf_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_5", "role": "address1" }} , 
 	{ "name": "bottom_buf_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_5", "role": "ce1" }} , 
 	{ "name": "bottom_buf_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_5", "role": "q1" }} , 
 	{ "name": "bottom_buf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_6", "role": "address0" }} , 
 	{ "name": "bottom_buf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_6", "role": "ce0" }} , 
 	{ "name": "bottom_buf_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_6", "role": "q0" }} , 
 	{ "name": "bottom_buf_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_6", "role": "address1" }} , 
 	{ "name": "bottom_buf_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_6", "role": "ce1" }} , 
 	{ "name": "bottom_buf_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_6", "role": "q1" }} , 
 	{ "name": "bottom_buf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_7", "role": "address0" }} , 
 	{ "name": "bottom_buf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_7", "role": "ce0" }} , 
 	{ "name": "bottom_buf_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_7", "role": "q0" }} , 
 	{ "name": "bottom_buf_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_7", "role": "address1" }} , 
 	{ "name": "bottom_buf_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_7", "role": "ce1" }} , 
 	{ "name": "bottom_buf_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_7", "role": "q1" }} , 
 	{ "name": "bottom_buf_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_8", "role": "address0" }} , 
 	{ "name": "bottom_buf_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_8", "role": "ce0" }} , 
 	{ "name": "bottom_buf_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_8", "role": "q0" }} , 
 	{ "name": "bottom_buf_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_8", "role": "address1" }} , 
 	{ "name": "bottom_buf_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_8", "role": "ce1" }} , 
 	{ "name": "bottom_buf_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_8", "role": "q1" }} , 
 	{ "name": "bottom_buf_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_9", "role": "address0" }} , 
 	{ "name": "bottom_buf_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_9", "role": "ce0" }} , 
 	{ "name": "bottom_buf_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_9", "role": "q0" }} , 
 	{ "name": "bottom_buf_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_9", "role": "address1" }} , 
 	{ "name": "bottom_buf_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_9", "role": "ce1" }} , 
 	{ "name": "bottom_buf_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_9", "role": "q1" }} , 
 	{ "name": "bottom_buf_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_10", "role": "address0" }} , 
 	{ "name": "bottom_buf_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_10", "role": "ce0" }} , 
 	{ "name": "bottom_buf_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_10", "role": "q0" }} , 
 	{ "name": "bottom_buf_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_10", "role": "address1" }} , 
 	{ "name": "bottom_buf_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_10", "role": "ce1" }} , 
 	{ "name": "bottom_buf_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_10", "role": "q1" }} , 
 	{ "name": "bottom_buf_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_11", "role": "address0" }} , 
 	{ "name": "bottom_buf_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_11", "role": "ce0" }} , 
 	{ "name": "bottom_buf_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_11", "role": "q0" }} , 
 	{ "name": "bottom_buf_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_11", "role": "address1" }} , 
 	{ "name": "bottom_buf_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_11", "role": "ce1" }} , 
 	{ "name": "bottom_buf_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_11", "role": "q1" }} , 
 	{ "name": "bottom_buf_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_12", "role": "address0" }} , 
 	{ "name": "bottom_buf_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_12", "role": "ce0" }} , 
 	{ "name": "bottom_buf_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_12", "role": "q0" }} , 
 	{ "name": "bottom_buf_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_12", "role": "address1" }} , 
 	{ "name": "bottom_buf_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_12", "role": "ce1" }} , 
 	{ "name": "bottom_buf_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_12", "role": "q1" }} , 
 	{ "name": "bottom_buf_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_13", "role": "address0" }} , 
 	{ "name": "bottom_buf_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_13", "role": "ce0" }} , 
 	{ "name": "bottom_buf_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_13", "role": "q0" }} , 
 	{ "name": "bottom_buf_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_13", "role": "address1" }} , 
 	{ "name": "bottom_buf_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_13", "role": "ce1" }} , 
 	{ "name": "bottom_buf_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_13", "role": "q1" }} , 
 	{ "name": "bottom_buf_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_14", "role": "address0" }} , 
 	{ "name": "bottom_buf_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_14", "role": "ce0" }} , 
 	{ "name": "bottom_buf_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_14", "role": "q0" }} , 
 	{ "name": "bottom_buf_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_14", "role": "address1" }} , 
 	{ "name": "bottom_buf_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_14", "role": "ce1" }} , 
 	{ "name": "bottom_buf_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_14", "role": "q1" }} , 
 	{ "name": "bottom_buf_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_15", "role": "address0" }} , 
 	{ "name": "bottom_buf_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_15", "role": "ce0" }} , 
 	{ "name": "bottom_buf_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_15", "role": "q0" }} , 
 	{ "name": "bottom_buf_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_15", "role": "address1" }} , 
 	{ "name": "bottom_buf_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_15", "role": "ce1" }} , 
 	{ "name": "bottom_buf_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_15", "role": "q1" }} , 
 	{ "name": "power_buf_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_0", "role": "address0" }} , 
 	{ "name": "power_buf_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_0", "role": "ce0" }} , 
 	{ "name": "power_buf_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_0", "role": "q0" }} , 
 	{ "name": "power_buf_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_0", "role": "address1" }} , 
 	{ "name": "power_buf_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_0", "role": "ce1" }} , 
 	{ "name": "power_buf_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_0", "role": "q1" }} , 
 	{ "name": "power_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_1", "role": "address0" }} , 
 	{ "name": "power_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_1", "role": "ce0" }} , 
 	{ "name": "power_buf_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_1", "role": "q0" }} , 
 	{ "name": "power_buf_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_1", "role": "address1" }} , 
 	{ "name": "power_buf_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_1", "role": "ce1" }} , 
 	{ "name": "power_buf_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_1", "role": "q1" }} , 
 	{ "name": "power_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_2", "role": "address0" }} , 
 	{ "name": "power_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_2", "role": "ce0" }} , 
 	{ "name": "power_buf_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_2", "role": "q0" }} , 
 	{ "name": "power_buf_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_2", "role": "address1" }} , 
 	{ "name": "power_buf_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_2", "role": "ce1" }} , 
 	{ "name": "power_buf_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_2", "role": "q1" }} , 
 	{ "name": "power_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_3", "role": "address0" }} , 
 	{ "name": "power_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_3", "role": "ce0" }} , 
 	{ "name": "power_buf_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_3", "role": "q0" }} , 
 	{ "name": "power_buf_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_3", "role": "address1" }} , 
 	{ "name": "power_buf_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_3", "role": "ce1" }} , 
 	{ "name": "power_buf_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_3", "role": "q1" }} , 
 	{ "name": "power_buf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_4", "role": "address0" }} , 
 	{ "name": "power_buf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_4", "role": "ce0" }} , 
 	{ "name": "power_buf_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_4", "role": "q0" }} , 
 	{ "name": "power_buf_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_4", "role": "address1" }} , 
 	{ "name": "power_buf_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_4", "role": "ce1" }} , 
 	{ "name": "power_buf_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_4", "role": "q1" }} , 
 	{ "name": "power_buf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_5", "role": "address0" }} , 
 	{ "name": "power_buf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_5", "role": "ce0" }} , 
 	{ "name": "power_buf_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_5", "role": "q0" }} , 
 	{ "name": "power_buf_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_5", "role": "address1" }} , 
 	{ "name": "power_buf_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_5", "role": "ce1" }} , 
 	{ "name": "power_buf_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_5", "role": "q1" }} , 
 	{ "name": "power_buf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_6", "role": "address0" }} , 
 	{ "name": "power_buf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_6", "role": "ce0" }} , 
 	{ "name": "power_buf_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_6", "role": "q0" }} , 
 	{ "name": "power_buf_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_6", "role": "address1" }} , 
 	{ "name": "power_buf_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_6", "role": "ce1" }} , 
 	{ "name": "power_buf_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_6", "role": "q1" }} , 
 	{ "name": "power_buf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_7", "role": "address0" }} , 
 	{ "name": "power_buf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_7", "role": "ce0" }} , 
 	{ "name": "power_buf_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_7", "role": "q0" }} , 
 	{ "name": "power_buf_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_7", "role": "address1" }} , 
 	{ "name": "power_buf_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_7", "role": "ce1" }} , 
 	{ "name": "power_buf_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_7", "role": "q1" }} , 
 	{ "name": "power_buf_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_8", "role": "address0" }} , 
 	{ "name": "power_buf_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_8", "role": "ce0" }} , 
 	{ "name": "power_buf_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_8", "role": "q0" }} , 
 	{ "name": "power_buf_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_8", "role": "address1" }} , 
 	{ "name": "power_buf_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_8", "role": "ce1" }} , 
 	{ "name": "power_buf_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_8", "role": "q1" }} , 
 	{ "name": "power_buf_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_9", "role": "address0" }} , 
 	{ "name": "power_buf_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_9", "role": "ce0" }} , 
 	{ "name": "power_buf_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_9", "role": "q0" }} , 
 	{ "name": "power_buf_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_9", "role": "address1" }} , 
 	{ "name": "power_buf_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_9", "role": "ce1" }} , 
 	{ "name": "power_buf_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_9", "role": "q1" }} , 
 	{ "name": "power_buf_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_10", "role": "address0" }} , 
 	{ "name": "power_buf_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_10", "role": "ce0" }} , 
 	{ "name": "power_buf_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_10", "role": "q0" }} , 
 	{ "name": "power_buf_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_10", "role": "address1" }} , 
 	{ "name": "power_buf_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_10", "role": "ce1" }} , 
 	{ "name": "power_buf_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_10", "role": "q1" }} , 
 	{ "name": "power_buf_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_11", "role": "address0" }} , 
 	{ "name": "power_buf_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_11", "role": "ce0" }} , 
 	{ "name": "power_buf_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_11", "role": "q0" }} , 
 	{ "name": "power_buf_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_11", "role": "address1" }} , 
 	{ "name": "power_buf_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_11", "role": "ce1" }} , 
 	{ "name": "power_buf_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_11", "role": "q1" }} , 
 	{ "name": "power_buf_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_12", "role": "address0" }} , 
 	{ "name": "power_buf_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_12", "role": "ce0" }} , 
 	{ "name": "power_buf_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_12", "role": "q0" }} , 
 	{ "name": "power_buf_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_12", "role": "address1" }} , 
 	{ "name": "power_buf_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_12", "role": "ce1" }} , 
 	{ "name": "power_buf_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_12", "role": "q1" }} , 
 	{ "name": "power_buf_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_13", "role": "address0" }} , 
 	{ "name": "power_buf_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_13", "role": "ce0" }} , 
 	{ "name": "power_buf_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_13", "role": "q0" }} , 
 	{ "name": "power_buf_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_13", "role": "address1" }} , 
 	{ "name": "power_buf_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_13", "role": "ce1" }} , 
 	{ "name": "power_buf_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_13", "role": "q1" }} , 
 	{ "name": "power_buf_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_14", "role": "address0" }} , 
 	{ "name": "power_buf_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_14", "role": "ce0" }} , 
 	{ "name": "power_buf_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_14", "role": "q0" }} , 
 	{ "name": "power_buf_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_14", "role": "address1" }} , 
 	{ "name": "power_buf_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_14", "role": "ce1" }} , 
 	{ "name": "power_buf_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_14", "role": "q1" }} , 
 	{ "name": "power_buf_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_15", "role": "address0" }} , 
 	{ "name": "power_buf_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_15", "role": "ce0" }} , 
 	{ "name": "power_buf_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_15", "role": "q0" }} , 
 	{ "name": "power_buf_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "power_buf_15", "role": "address1" }} , 
 	{ "name": "power_buf_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf_15", "role": "ce1" }} , 
 	{ "name": "power_buf_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf_15", "role": "q1" }} , 
 	{ "name": "cc", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cc", "role": "default" }} , 
 	{ "name": "cn", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cn", "role": "default" }} , 
 	{ "name": "cs", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cs", "role": "default" }} , 
 	{ "name": "ce_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ce_r", "role": "default" }} , 
 	{ "name": "cw", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cw", "role": "default" }} , 
 	{ "name": "ct", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ct", "role": "default" }} , 
 	{ "name": "cb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cb", "role": "default" }} , 
 	{ "name": "Cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Cap", "role": "default" }} , 
 	{ "name": "dt", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dt", "role": "default" }} , 
 	{ "name": "amb_temp", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "amb_temp", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172"],
		"CDFG" : "compute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "458",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "compute_flag", "Type" : "None", "Direction" : "I"},
			{"Name" : "result_buf_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "result_buf_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "result_buf_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "result_buf_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "result_buf_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "result_buf_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "result_buf_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "result_buf_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "result_buf_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "result_buf_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "result_buf_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "result_buf_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "result_buf_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "result_buf_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "result_buf_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "result_buf_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "center_buf_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "center_buf_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "center_buf_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "center_buf_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "center_buf_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "center_buf_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "center_buf_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "center_buf_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "center_buf_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "center_buf_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "center_buf_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "center_buf_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "center_buf_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "center_buf_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "center_buf_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "center_buf_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_buf_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_buf_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_buf_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_buf_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_buf_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_buf_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_buf_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_buf_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_buf_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_buf_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_buf_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_buf_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_buf_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_buf_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_buf_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_buf_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bottom_buf_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bottom_buf_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bottom_buf_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bottom_buf_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bottom_buf_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bottom_buf_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bottom_buf_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bottom_buf_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bottom_buf_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bottom_buf_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bottom_buf_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bottom_buf_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bottom_buf_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bottom_buf_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bottom_buf_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bottom_buf_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "power_buf_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "power_buf_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "power_buf_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "power_buf_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "power_buf_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "power_buf_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "power_buf_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "power_buf_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "power_buf_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "power_buf_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "power_buf_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "power_buf_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "power_buf_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "power_buf_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "power_buf_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "power_buf_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cc", "Type" : "None", "Direction" : "I"},
			{"Name" : "cn", "Type" : "None", "Direction" : "I"},
			{"Name" : "cs", "Type" : "None", "Direction" : "I"},
			{"Name" : "ce_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "cw", "Type" : "None", "Direction" : "I"},
			{"Name" : "ct", "Type" : "None", "Direction" : "I"},
			{"Name" : "cb", "Type" : "None", "Direction" : "I"},
			{"Name" : "Cap", "Type" : "None", "Direction" : "I"},
			{"Name" : "dt", "Type" : "None", "Direction" : "I"},
			{"Name" : "amb_temp", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U71", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U72", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U73", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U74", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U75", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U76", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U77", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U78", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U79", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U80", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U81", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U82", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U83", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U84", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U85", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U86", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U87", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U88", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U89", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U90", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U91", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U92", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U93", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U94", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U95", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U96", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U97", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U98", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U99", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U100", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U101", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U102", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U103", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U104", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U105", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U106", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U107", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U108", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U109", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U110", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U111", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U112", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U113", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U114", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U115", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U116", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U117", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U118", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U119", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U120", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U121", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U122", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U123", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U124", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U125", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U126", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U127", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U128", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U129", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U130", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U131", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U132", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U133", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U134", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U135", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U136", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U137", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U138", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U139", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U140", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U141", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U142", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U143", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U144", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U145", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U146", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U147", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U148", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U149", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U150", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U151", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U152", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U153", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U154", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U155", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U156", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U157", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U158", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U159", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U160", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U161", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U162", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U163", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U164", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U165", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U166", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U167", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U168", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U169", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U170", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U171", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U172", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U173", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U174", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U175", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U176", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U177", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U178", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U179", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U180", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U181", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U182", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U183", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U184", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U185", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U186", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U187", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U188", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U189", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U190", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U191", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U192", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U193", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U194", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U195", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U196", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U197", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U198", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U199", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U200", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U201", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U202", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U203", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U204", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U205", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U206", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U207", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U208", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U209", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U210", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U211", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U212", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U213", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U214", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U215", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U216", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U217", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U218", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U219", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U220", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U221", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U222", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U223", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U224", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U225", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U226", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U227", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U228", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U229", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U230", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U231", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U232", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U233", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U234", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U235", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U236", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U237", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U238", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U239", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U240", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U241", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_12_no_dsp_1_U242", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute {
		compute_flag {Type I LastRead 0 FirstWrite -1}
		result_buf_0 {Type O LastRead -1 FirstWrite 74}
		result_buf_1 {Type O LastRead -1 FirstWrite 74}
		result_buf_2 {Type O LastRead -1 FirstWrite 74}
		result_buf_3 {Type O LastRead -1 FirstWrite 74}
		result_buf_4 {Type O LastRead -1 FirstWrite 74}
		result_buf_5 {Type O LastRead -1 FirstWrite 74}
		result_buf_6 {Type O LastRead -1 FirstWrite 75}
		result_buf_7 {Type O LastRead -1 FirstWrite 75}
		result_buf_8 {Type O LastRead -1 FirstWrite 75}
		result_buf_9 {Type O LastRead -1 FirstWrite 75}
		result_buf_10 {Type O LastRead -1 FirstWrite 75}
		result_buf_11 {Type O LastRead -1 FirstWrite 75}
		result_buf_12 {Type O LastRead -1 FirstWrite 76}
		result_buf_13 {Type O LastRead -1 FirstWrite 76}
		result_buf_14 {Type O LastRead -1 FirstWrite 76}
		result_buf_15 {Type O LastRead -1 FirstWrite 76}
		center_buf_0 {Type I LastRead 18 FirstWrite -1}
		center_buf_1 {Type I LastRead 18 FirstWrite -1}
		center_buf_2 {Type I LastRead 18 FirstWrite -1}
		center_buf_3 {Type I LastRead 18 FirstWrite -1}
		center_buf_4 {Type I LastRead 18 FirstWrite -1}
		center_buf_5 {Type I LastRead 18 FirstWrite -1}
		center_buf_6 {Type I LastRead 18 FirstWrite -1}
		center_buf_7 {Type I LastRead 18 FirstWrite -1}
		center_buf_8 {Type I LastRead 18 FirstWrite -1}
		center_buf_9 {Type I LastRead 18 FirstWrite -1}
		center_buf_10 {Type I LastRead 18 FirstWrite -1}
		center_buf_11 {Type I LastRead 18 FirstWrite -1}
		center_buf_12 {Type I LastRead 18 FirstWrite -1}
		center_buf_13 {Type I LastRead 18 FirstWrite -1}
		center_buf_14 {Type I LastRead 18 FirstWrite -1}
		center_buf_15 {Type I LastRead 18 FirstWrite -1}
		top_buf_0 {Type I LastRead 14 FirstWrite -1}
		top_buf_1 {Type I LastRead 14 FirstWrite -1}
		top_buf_2 {Type I LastRead 14 FirstWrite -1}
		top_buf_3 {Type I LastRead 14 FirstWrite -1}
		top_buf_4 {Type I LastRead 14 FirstWrite -1}
		top_buf_5 {Type I LastRead 14 FirstWrite -1}
		top_buf_6 {Type I LastRead 14 FirstWrite -1}
		top_buf_7 {Type I LastRead 14 FirstWrite -1}
		top_buf_8 {Type I LastRead 14 FirstWrite -1}
		top_buf_9 {Type I LastRead 14 FirstWrite -1}
		top_buf_10 {Type I LastRead 14 FirstWrite -1}
		top_buf_11 {Type I LastRead 14 FirstWrite -1}
		top_buf_12 {Type I LastRead 14 FirstWrite -1}
		top_buf_13 {Type I LastRead 14 FirstWrite -1}
		top_buf_14 {Type I LastRead 14 FirstWrite -1}
		top_buf_15 {Type I LastRead 14 FirstWrite -1}
		bottom_buf_0 {Type I LastRead 14 FirstWrite -1}
		bottom_buf_1 {Type I LastRead 14 FirstWrite -1}
		bottom_buf_2 {Type I LastRead 14 FirstWrite -1}
		bottom_buf_3 {Type I LastRead 14 FirstWrite -1}
		bottom_buf_4 {Type I LastRead 14 FirstWrite -1}
		bottom_buf_5 {Type I LastRead 14 FirstWrite -1}
		bottom_buf_6 {Type I LastRead 14 FirstWrite -1}
		bottom_buf_7 {Type I LastRead 14 FirstWrite -1}
		bottom_buf_8 {Type I LastRead 14 FirstWrite -1}
		bottom_buf_9 {Type I LastRead 14 FirstWrite -1}
		bottom_buf_10 {Type I LastRead 14 FirstWrite -1}
		bottom_buf_11 {Type I LastRead 14 FirstWrite -1}
		bottom_buf_12 {Type I LastRead 14 FirstWrite -1}
		bottom_buf_13 {Type I LastRead 14 FirstWrite -1}
		bottom_buf_14 {Type I LastRead 14 FirstWrite -1}
		bottom_buf_15 {Type I LastRead 14 FirstWrite -1}
		power_buf_0 {Type I LastRead 14 FirstWrite -1}
		power_buf_1 {Type I LastRead 14 FirstWrite -1}
		power_buf_2 {Type I LastRead 14 FirstWrite -1}
		power_buf_3 {Type I LastRead 14 FirstWrite -1}
		power_buf_4 {Type I LastRead 14 FirstWrite -1}
		power_buf_5 {Type I LastRead 14 FirstWrite -1}
		power_buf_6 {Type I LastRead 14 FirstWrite -1}
		power_buf_7 {Type I LastRead 14 FirstWrite -1}
		power_buf_8 {Type I LastRead 14 FirstWrite -1}
		power_buf_9 {Type I LastRead 14 FirstWrite -1}
		power_buf_10 {Type I LastRead 14 FirstWrite -1}
		power_buf_11 {Type I LastRead 14 FirstWrite -1}
		power_buf_12 {Type I LastRead 14 FirstWrite -1}
		power_buf_13 {Type I LastRead 14 FirstWrite -1}
		power_buf_14 {Type I LastRead 14 FirstWrite -1}
		power_buf_15 {Type I LastRead 14 FirstWrite -1}
		cc {Type I LastRead 0 FirstWrite -1}
		cn {Type I LastRead 0 FirstWrite -1}
		cs {Type I LastRead 0 FirstWrite -1}
		ce_r {Type I LastRead 0 FirstWrite -1}
		cw {Type I LastRead 0 FirstWrite -1}
		ct {Type I LastRead 0 FirstWrite -1}
		cb {Type I LastRead 0 FirstWrite -1}
		Cap {Type I LastRead 0 FirstWrite -1}
		dt {Type I LastRead 0 FirstWrite -1}
		amb_temp {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "458"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "458"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	compute_flag { ap_none {  { compute_flag in_data 0 1 } } }
	result_buf_0 { ap_memory {  { result_buf_0_address0 mem_address 1 8 }  { result_buf_0_ce0 mem_ce 1 1 }  { result_buf_0_we0 mem_we 1 1 }  { result_buf_0_d0 mem_din 1 32 } } }
	result_buf_1 { ap_memory {  { result_buf_1_address0 mem_address 1 8 }  { result_buf_1_ce0 mem_ce 1 1 }  { result_buf_1_we0 mem_we 1 1 }  { result_buf_1_d0 mem_din 1 32 } } }
	result_buf_2 { ap_memory {  { result_buf_2_address0 mem_address 1 8 }  { result_buf_2_ce0 mem_ce 1 1 }  { result_buf_2_we0 mem_we 1 1 }  { result_buf_2_d0 mem_din 1 32 }  { result_buf_2_address1 MemPortADDR2 1 8 }  { result_buf_2_ce1 MemPortCE2 1 1 }  { result_buf_2_we1 MemPortWE2 1 1 }  { result_buf_2_d1 MemPortDIN2 1 32 } } }
	result_buf_3 { ap_memory {  { result_buf_3_address0 mem_address 1 8 }  { result_buf_3_ce0 mem_ce 1 1 }  { result_buf_3_we0 mem_we 1 1 }  { result_buf_3_d0 mem_din 1 32 }  { result_buf_3_address1 MemPortADDR2 1 8 }  { result_buf_3_ce1 MemPortCE2 1 1 }  { result_buf_3_we1 MemPortWE2 1 1 }  { result_buf_3_d1 MemPortDIN2 1 32 } } }
	result_buf_4 { ap_memory {  { result_buf_4_address0 mem_address 1 8 }  { result_buf_4_ce0 mem_ce 1 1 }  { result_buf_4_we0 mem_we 1 1 }  { result_buf_4_d0 mem_din 1 32 }  { result_buf_4_address1 MemPortADDR2 1 8 }  { result_buf_4_ce1 MemPortCE2 1 1 }  { result_buf_4_we1 MemPortWE2 1 1 }  { result_buf_4_d1 MemPortDIN2 1 32 } } }
	result_buf_5 { ap_memory {  { result_buf_5_address0 mem_address 1 8 }  { result_buf_5_ce0 mem_ce 1 1 }  { result_buf_5_we0 mem_we 1 1 }  { result_buf_5_d0 mem_din 1 32 }  { result_buf_5_address1 MemPortADDR2 1 8 }  { result_buf_5_ce1 MemPortCE2 1 1 }  { result_buf_5_we1 MemPortWE2 1 1 }  { result_buf_5_d1 MemPortDIN2 1 32 } } }
	result_buf_6 { ap_memory {  { result_buf_6_address0 mem_address 1 8 }  { result_buf_6_ce0 mem_ce 1 1 }  { result_buf_6_we0 mem_we 1 1 }  { result_buf_6_d0 mem_din 1 32 }  { result_buf_6_address1 MemPortADDR2 1 8 }  { result_buf_6_ce1 MemPortCE2 1 1 }  { result_buf_6_we1 MemPortWE2 1 1 }  { result_buf_6_d1 MemPortDIN2 1 32 } } }
	result_buf_7 { ap_memory {  { result_buf_7_address0 mem_address 1 8 }  { result_buf_7_ce0 mem_ce 1 1 }  { result_buf_7_we0 mem_we 1 1 }  { result_buf_7_d0 mem_din 1 32 }  { result_buf_7_address1 MemPortADDR2 1 8 }  { result_buf_7_ce1 MemPortCE2 1 1 }  { result_buf_7_we1 MemPortWE2 1 1 }  { result_buf_7_d1 MemPortDIN2 1 32 } } }
	result_buf_8 { ap_memory {  { result_buf_8_address0 mem_address 1 8 }  { result_buf_8_ce0 mem_ce 1 1 }  { result_buf_8_we0 mem_we 1 1 }  { result_buf_8_d0 mem_din 1 32 }  { result_buf_8_address1 MemPortADDR2 1 8 }  { result_buf_8_ce1 MemPortCE2 1 1 }  { result_buf_8_we1 MemPortWE2 1 1 }  { result_buf_8_d1 MemPortDIN2 1 32 } } }
	result_buf_9 { ap_memory {  { result_buf_9_address0 mem_address 1 8 }  { result_buf_9_ce0 mem_ce 1 1 }  { result_buf_9_we0 mem_we 1 1 }  { result_buf_9_d0 mem_din 1 32 }  { result_buf_9_address1 MemPortADDR2 1 8 }  { result_buf_9_ce1 MemPortCE2 1 1 }  { result_buf_9_we1 MemPortWE2 1 1 }  { result_buf_9_d1 MemPortDIN2 1 32 } } }
	result_buf_10 { ap_memory {  { result_buf_10_address0 mem_address 1 8 }  { result_buf_10_ce0 mem_ce 1 1 }  { result_buf_10_we0 mem_we 1 1 }  { result_buf_10_d0 mem_din 1 32 }  { result_buf_10_address1 MemPortADDR2 1 8 }  { result_buf_10_ce1 MemPortCE2 1 1 }  { result_buf_10_we1 MemPortWE2 1 1 }  { result_buf_10_d1 MemPortDIN2 1 32 } } }
	result_buf_11 { ap_memory {  { result_buf_11_address0 mem_address 1 8 }  { result_buf_11_ce0 mem_ce 1 1 }  { result_buf_11_we0 mem_we 1 1 }  { result_buf_11_d0 mem_din 1 32 }  { result_buf_11_address1 MemPortADDR2 1 8 }  { result_buf_11_ce1 MemPortCE2 1 1 }  { result_buf_11_we1 MemPortWE2 1 1 }  { result_buf_11_d1 MemPortDIN2 1 32 } } }
	result_buf_12 { ap_memory {  { result_buf_12_address0 mem_address 1 8 }  { result_buf_12_ce0 mem_ce 1 1 }  { result_buf_12_we0 mem_we 1 1 }  { result_buf_12_d0 mem_din 1 32 }  { result_buf_12_address1 MemPortADDR2 1 8 }  { result_buf_12_ce1 MemPortCE2 1 1 }  { result_buf_12_we1 MemPortWE2 1 1 }  { result_buf_12_d1 MemPortDIN2 1 32 } } }
	result_buf_13 { ap_memory {  { result_buf_13_address0 mem_address 1 8 }  { result_buf_13_ce0 mem_ce 1 1 }  { result_buf_13_we0 mem_we 1 1 }  { result_buf_13_d0 mem_din 1 32 }  { result_buf_13_address1 MemPortADDR2 1 8 }  { result_buf_13_ce1 MemPortCE2 1 1 }  { result_buf_13_we1 MemPortWE2 1 1 }  { result_buf_13_d1 MemPortDIN2 1 32 } } }
	result_buf_14 { ap_memory {  { result_buf_14_address0 mem_address 1 8 }  { result_buf_14_ce0 mem_ce 1 1 }  { result_buf_14_we0 mem_we 1 1 }  { result_buf_14_d0 mem_din 1 32 } } }
	result_buf_15 { ap_memory {  { result_buf_15_address0 mem_address 1 8 }  { result_buf_15_ce0 mem_ce 1 1 }  { result_buf_15_we0 mem_we 1 1 }  { result_buf_15_d0 mem_din 1 32 } } }
	center_buf_0 { ap_memory {  { center_buf_0_address0 mem_address 1 8 }  { center_buf_0_ce0 mem_ce 1 1 }  { center_buf_0_q0 mem_dout 0 32 }  { center_buf_0_address1 MemPortADDR2 1 8 }  { center_buf_0_ce1 MemPortCE2 1 1 }  { center_buf_0_q1 MemPortDOUT2 0 32 } } }
	center_buf_1 { ap_memory {  { center_buf_1_address0 mem_address 1 8 }  { center_buf_1_ce0 mem_ce 1 1 }  { center_buf_1_q0 mem_dout 0 32 }  { center_buf_1_address1 MemPortADDR2 1 8 }  { center_buf_1_ce1 MemPortCE2 1 1 }  { center_buf_1_q1 MemPortDOUT2 0 32 } } }
	center_buf_2 { ap_memory {  { center_buf_2_address0 mem_address 1 8 }  { center_buf_2_ce0 mem_ce 1 1 }  { center_buf_2_q0 mem_dout 0 32 }  { center_buf_2_address1 MemPortADDR2 1 8 }  { center_buf_2_ce1 MemPortCE2 1 1 }  { center_buf_2_q1 MemPortDOUT2 0 32 } } }
	center_buf_3 { ap_memory {  { center_buf_3_address0 mem_address 1 8 }  { center_buf_3_ce0 mem_ce 1 1 }  { center_buf_3_q0 mem_dout 0 32 }  { center_buf_3_address1 MemPortADDR2 1 8 }  { center_buf_3_ce1 MemPortCE2 1 1 }  { center_buf_3_q1 MemPortDOUT2 0 32 } } }
	center_buf_4 { ap_memory {  { center_buf_4_address0 mem_address 1 8 }  { center_buf_4_ce0 mem_ce 1 1 }  { center_buf_4_q0 mem_dout 0 32 }  { center_buf_4_address1 MemPortADDR2 1 8 }  { center_buf_4_ce1 MemPortCE2 1 1 }  { center_buf_4_q1 MemPortDOUT2 0 32 } } }
	center_buf_5 { ap_memory {  { center_buf_5_address0 mem_address 1 8 }  { center_buf_5_ce0 mem_ce 1 1 }  { center_buf_5_q0 mem_dout 0 32 }  { center_buf_5_address1 MemPortADDR2 1 8 }  { center_buf_5_ce1 MemPortCE2 1 1 }  { center_buf_5_q1 MemPortDOUT2 0 32 } } }
	center_buf_6 { ap_memory {  { center_buf_6_address0 mem_address 1 8 }  { center_buf_6_ce0 mem_ce 1 1 }  { center_buf_6_q0 mem_dout 0 32 }  { center_buf_6_address1 MemPortADDR2 1 8 }  { center_buf_6_ce1 MemPortCE2 1 1 }  { center_buf_6_q1 MemPortDOUT2 0 32 } } }
	center_buf_7 { ap_memory {  { center_buf_7_address0 mem_address 1 8 }  { center_buf_7_ce0 mem_ce 1 1 }  { center_buf_7_q0 mem_dout 0 32 }  { center_buf_7_address1 MemPortADDR2 1 8 }  { center_buf_7_ce1 MemPortCE2 1 1 }  { center_buf_7_q1 MemPortDOUT2 0 32 } } }
	center_buf_8 { ap_memory {  { center_buf_8_address0 mem_address 1 8 }  { center_buf_8_ce0 mem_ce 1 1 }  { center_buf_8_q0 mem_dout 0 32 }  { center_buf_8_address1 MemPortADDR2 1 8 }  { center_buf_8_ce1 MemPortCE2 1 1 }  { center_buf_8_q1 MemPortDOUT2 0 32 } } }
	center_buf_9 { ap_memory {  { center_buf_9_address0 mem_address 1 8 }  { center_buf_9_ce0 mem_ce 1 1 }  { center_buf_9_q0 mem_dout 0 32 }  { center_buf_9_address1 MemPortADDR2 1 8 }  { center_buf_9_ce1 MemPortCE2 1 1 }  { center_buf_9_q1 MemPortDOUT2 0 32 } } }
	center_buf_10 { ap_memory {  { center_buf_10_address0 mem_address 1 8 }  { center_buf_10_ce0 mem_ce 1 1 }  { center_buf_10_q0 mem_dout 0 32 }  { center_buf_10_address1 MemPortADDR2 1 8 }  { center_buf_10_ce1 MemPortCE2 1 1 }  { center_buf_10_q1 MemPortDOUT2 0 32 } } }
	center_buf_11 { ap_memory {  { center_buf_11_address0 mem_address 1 8 }  { center_buf_11_ce0 mem_ce 1 1 }  { center_buf_11_q0 mem_dout 0 32 }  { center_buf_11_address1 MemPortADDR2 1 8 }  { center_buf_11_ce1 MemPortCE2 1 1 }  { center_buf_11_q1 MemPortDOUT2 0 32 } } }
	center_buf_12 { ap_memory {  { center_buf_12_address0 mem_address 1 8 }  { center_buf_12_ce0 mem_ce 1 1 }  { center_buf_12_q0 mem_dout 0 32 }  { center_buf_12_address1 MemPortADDR2 1 8 }  { center_buf_12_ce1 MemPortCE2 1 1 }  { center_buf_12_q1 MemPortDOUT2 0 32 } } }
	center_buf_13 { ap_memory {  { center_buf_13_address0 mem_address 1 8 }  { center_buf_13_ce0 mem_ce 1 1 }  { center_buf_13_q0 mem_dout 0 32 }  { center_buf_13_address1 MemPortADDR2 1 8 }  { center_buf_13_ce1 MemPortCE2 1 1 }  { center_buf_13_q1 MemPortDOUT2 0 32 } } }
	center_buf_14 { ap_memory {  { center_buf_14_address0 mem_address 1 8 }  { center_buf_14_ce0 mem_ce 1 1 }  { center_buf_14_q0 mem_dout 0 32 }  { center_buf_14_address1 MemPortADDR2 1 8 }  { center_buf_14_ce1 MemPortCE2 1 1 }  { center_buf_14_q1 MemPortDOUT2 0 32 } } }
	center_buf_15 { ap_memory {  { center_buf_15_address0 mem_address 1 8 }  { center_buf_15_ce0 mem_ce 1 1 }  { center_buf_15_q0 mem_dout 0 32 }  { center_buf_15_address1 MemPortADDR2 1 8 }  { center_buf_15_ce1 MemPortCE2 1 1 }  { center_buf_15_q1 MemPortDOUT2 0 32 } } }
	top_buf_0 { ap_memory {  { top_buf_0_address0 mem_address 1 8 }  { top_buf_0_ce0 mem_ce 1 1 }  { top_buf_0_q0 mem_dout 0 32 }  { top_buf_0_address1 MemPortADDR2 1 8 }  { top_buf_0_ce1 MemPortCE2 1 1 }  { top_buf_0_q1 MemPortDOUT2 0 32 } } }
	top_buf_1 { ap_memory {  { top_buf_1_address0 mem_address 1 8 }  { top_buf_1_ce0 mem_ce 1 1 }  { top_buf_1_q0 mem_dout 0 32 }  { top_buf_1_address1 MemPortADDR2 1 8 }  { top_buf_1_ce1 MemPortCE2 1 1 }  { top_buf_1_q1 MemPortDOUT2 0 32 } } }
	top_buf_2 { ap_memory {  { top_buf_2_address0 mem_address 1 8 }  { top_buf_2_ce0 mem_ce 1 1 }  { top_buf_2_q0 mem_dout 0 32 }  { top_buf_2_address1 MemPortADDR2 1 8 }  { top_buf_2_ce1 MemPortCE2 1 1 }  { top_buf_2_q1 MemPortDOUT2 0 32 } } }
	top_buf_3 { ap_memory {  { top_buf_3_address0 mem_address 1 8 }  { top_buf_3_ce0 mem_ce 1 1 }  { top_buf_3_q0 mem_dout 0 32 }  { top_buf_3_address1 MemPortADDR2 1 8 }  { top_buf_3_ce1 MemPortCE2 1 1 }  { top_buf_3_q1 MemPortDOUT2 0 32 } } }
	top_buf_4 { ap_memory {  { top_buf_4_address0 mem_address 1 8 }  { top_buf_4_ce0 mem_ce 1 1 }  { top_buf_4_q0 mem_dout 0 32 }  { top_buf_4_address1 MemPortADDR2 1 8 }  { top_buf_4_ce1 MemPortCE2 1 1 }  { top_buf_4_q1 MemPortDOUT2 0 32 } } }
	top_buf_5 { ap_memory {  { top_buf_5_address0 mem_address 1 8 }  { top_buf_5_ce0 mem_ce 1 1 }  { top_buf_5_q0 mem_dout 0 32 }  { top_buf_5_address1 MemPortADDR2 1 8 }  { top_buf_5_ce1 MemPortCE2 1 1 }  { top_buf_5_q1 MemPortDOUT2 0 32 } } }
	top_buf_6 { ap_memory {  { top_buf_6_address0 mem_address 1 8 }  { top_buf_6_ce0 mem_ce 1 1 }  { top_buf_6_q0 mem_dout 0 32 }  { top_buf_6_address1 MemPortADDR2 1 8 }  { top_buf_6_ce1 MemPortCE2 1 1 }  { top_buf_6_q1 MemPortDOUT2 0 32 } } }
	top_buf_7 { ap_memory {  { top_buf_7_address0 mem_address 1 8 }  { top_buf_7_ce0 mem_ce 1 1 }  { top_buf_7_q0 mem_dout 0 32 }  { top_buf_7_address1 MemPortADDR2 1 8 }  { top_buf_7_ce1 MemPortCE2 1 1 }  { top_buf_7_q1 MemPortDOUT2 0 32 } } }
	top_buf_8 { ap_memory {  { top_buf_8_address0 mem_address 1 8 }  { top_buf_8_ce0 mem_ce 1 1 }  { top_buf_8_q0 mem_dout 0 32 }  { top_buf_8_address1 MemPortADDR2 1 8 }  { top_buf_8_ce1 MemPortCE2 1 1 }  { top_buf_8_q1 MemPortDOUT2 0 32 } } }
	top_buf_9 { ap_memory {  { top_buf_9_address0 mem_address 1 8 }  { top_buf_9_ce0 mem_ce 1 1 }  { top_buf_9_q0 mem_dout 0 32 }  { top_buf_9_address1 MemPortADDR2 1 8 }  { top_buf_9_ce1 MemPortCE2 1 1 }  { top_buf_9_q1 MemPortDOUT2 0 32 } } }
	top_buf_10 { ap_memory {  { top_buf_10_address0 mem_address 1 8 }  { top_buf_10_ce0 mem_ce 1 1 }  { top_buf_10_q0 mem_dout 0 32 }  { top_buf_10_address1 MemPortADDR2 1 8 }  { top_buf_10_ce1 MemPortCE2 1 1 }  { top_buf_10_q1 MemPortDOUT2 0 32 } } }
	top_buf_11 { ap_memory {  { top_buf_11_address0 mem_address 1 8 }  { top_buf_11_ce0 mem_ce 1 1 }  { top_buf_11_q0 mem_dout 0 32 }  { top_buf_11_address1 MemPortADDR2 1 8 }  { top_buf_11_ce1 MemPortCE2 1 1 }  { top_buf_11_q1 MemPortDOUT2 0 32 } } }
	top_buf_12 { ap_memory {  { top_buf_12_address0 mem_address 1 8 }  { top_buf_12_ce0 mem_ce 1 1 }  { top_buf_12_q0 mem_dout 0 32 }  { top_buf_12_address1 MemPortADDR2 1 8 }  { top_buf_12_ce1 MemPortCE2 1 1 }  { top_buf_12_q1 MemPortDOUT2 0 32 } } }
	top_buf_13 { ap_memory {  { top_buf_13_address0 mem_address 1 8 }  { top_buf_13_ce0 mem_ce 1 1 }  { top_buf_13_q0 mem_dout 0 32 }  { top_buf_13_address1 MemPortADDR2 1 8 }  { top_buf_13_ce1 MemPortCE2 1 1 }  { top_buf_13_q1 MemPortDOUT2 0 32 } } }
	top_buf_14 { ap_memory {  { top_buf_14_address0 mem_address 1 8 }  { top_buf_14_ce0 mem_ce 1 1 }  { top_buf_14_q0 mem_dout 0 32 }  { top_buf_14_address1 MemPortADDR2 1 8 }  { top_buf_14_ce1 MemPortCE2 1 1 }  { top_buf_14_q1 MemPortDOUT2 0 32 } } }
	top_buf_15 { ap_memory {  { top_buf_15_address0 mem_address 1 8 }  { top_buf_15_ce0 mem_ce 1 1 }  { top_buf_15_q0 mem_dout 0 32 }  { top_buf_15_address1 MemPortADDR2 1 8 }  { top_buf_15_ce1 MemPortCE2 1 1 }  { top_buf_15_q1 MemPortDOUT2 0 32 } } }
	bottom_buf_0 { ap_memory {  { bottom_buf_0_address0 mem_address 1 8 }  { bottom_buf_0_ce0 mem_ce 1 1 }  { bottom_buf_0_q0 mem_dout 0 32 }  { bottom_buf_0_address1 MemPortADDR2 1 8 }  { bottom_buf_0_ce1 MemPortCE2 1 1 }  { bottom_buf_0_q1 MemPortDOUT2 0 32 } } }
	bottom_buf_1 { ap_memory {  { bottom_buf_1_address0 mem_address 1 8 }  { bottom_buf_1_ce0 mem_ce 1 1 }  { bottom_buf_1_q0 mem_dout 0 32 }  { bottom_buf_1_address1 MemPortADDR2 1 8 }  { bottom_buf_1_ce1 MemPortCE2 1 1 }  { bottom_buf_1_q1 MemPortDOUT2 0 32 } } }
	bottom_buf_2 { ap_memory {  { bottom_buf_2_address0 mem_address 1 8 }  { bottom_buf_2_ce0 mem_ce 1 1 }  { bottom_buf_2_q0 mem_dout 0 32 }  { bottom_buf_2_address1 MemPortADDR2 1 8 }  { bottom_buf_2_ce1 MemPortCE2 1 1 }  { bottom_buf_2_q1 MemPortDOUT2 0 32 } } }
	bottom_buf_3 { ap_memory {  { bottom_buf_3_address0 mem_address 1 8 }  { bottom_buf_3_ce0 mem_ce 1 1 }  { bottom_buf_3_q0 mem_dout 0 32 }  { bottom_buf_3_address1 MemPortADDR2 1 8 }  { bottom_buf_3_ce1 MemPortCE2 1 1 }  { bottom_buf_3_q1 MemPortDOUT2 0 32 } } }
	bottom_buf_4 { ap_memory {  { bottom_buf_4_address0 mem_address 1 8 }  { bottom_buf_4_ce0 mem_ce 1 1 }  { bottom_buf_4_q0 mem_dout 0 32 }  { bottom_buf_4_address1 MemPortADDR2 1 8 }  { bottom_buf_4_ce1 MemPortCE2 1 1 }  { bottom_buf_4_q1 MemPortDOUT2 0 32 } } }
	bottom_buf_5 { ap_memory {  { bottom_buf_5_address0 mem_address 1 8 }  { bottom_buf_5_ce0 mem_ce 1 1 }  { bottom_buf_5_q0 mem_dout 0 32 }  { bottom_buf_5_address1 MemPortADDR2 1 8 }  { bottom_buf_5_ce1 MemPortCE2 1 1 }  { bottom_buf_5_q1 MemPortDOUT2 0 32 } } }
	bottom_buf_6 { ap_memory {  { bottom_buf_6_address0 mem_address 1 8 }  { bottom_buf_6_ce0 mem_ce 1 1 }  { bottom_buf_6_q0 mem_dout 0 32 }  { bottom_buf_6_address1 MemPortADDR2 1 8 }  { bottom_buf_6_ce1 MemPortCE2 1 1 }  { bottom_buf_6_q1 MemPortDOUT2 0 32 } } }
	bottom_buf_7 { ap_memory {  { bottom_buf_7_address0 mem_address 1 8 }  { bottom_buf_7_ce0 mem_ce 1 1 }  { bottom_buf_7_q0 mem_dout 0 32 }  { bottom_buf_7_address1 MemPortADDR2 1 8 }  { bottom_buf_7_ce1 MemPortCE2 1 1 }  { bottom_buf_7_q1 MemPortDOUT2 0 32 } } }
	bottom_buf_8 { ap_memory {  { bottom_buf_8_address0 mem_address 1 8 }  { bottom_buf_8_ce0 mem_ce 1 1 }  { bottom_buf_8_q0 mem_dout 0 32 }  { bottom_buf_8_address1 MemPortADDR2 1 8 }  { bottom_buf_8_ce1 MemPortCE2 1 1 }  { bottom_buf_8_q1 MemPortDOUT2 0 32 } } }
	bottom_buf_9 { ap_memory {  { bottom_buf_9_address0 mem_address 1 8 }  { bottom_buf_9_ce0 mem_ce 1 1 }  { bottom_buf_9_q0 mem_dout 0 32 }  { bottom_buf_9_address1 MemPortADDR2 1 8 }  { bottom_buf_9_ce1 MemPortCE2 1 1 }  { bottom_buf_9_q1 MemPortDOUT2 0 32 } } }
	bottom_buf_10 { ap_memory {  { bottom_buf_10_address0 mem_address 1 8 }  { bottom_buf_10_ce0 mem_ce 1 1 }  { bottom_buf_10_q0 mem_dout 0 32 }  { bottom_buf_10_address1 MemPortADDR2 1 8 }  { bottom_buf_10_ce1 MemPortCE2 1 1 }  { bottom_buf_10_q1 MemPortDOUT2 0 32 } } }
	bottom_buf_11 { ap_memory {  { bottom_buf_11_address0 mem_address 1 8 }  { bottom_buf_11_ce0 mem_ce 1 1 }  { bottom_buf_11_q0 mem_dout 0 32 }  { bottom_buf_11_address1 MemPortADDR2 1 8 }  { bottom_buf_11_ce1 MemPortCE2 1 1 }  { bottom_buf_11_q1 MemPortDOUT2 0 32 } } }
	bottom_buf_12 { ap_memory {  { bottom_buf_12_address0 mem_address 1 8 }  { bottom_buf_12_ce0 mem_ce 1 1 }  { bottom_buf_12_q0 mem_dout 0 32 }  { bottom_buf_12_address1 MemPortADDR2 1 8 }  { bottom_buf_12_ce1 MemPortCE2 1 1 }  { bottom_buf_12_q1 MemPortDOUT2 0 32 } } }
	bottom_buf_13 { ap_memory {  { bottom_buf_13_address0 mem_address 1 8 }  { bottom_buf_13_ce0 mem_ce 1 1 }  { bottom_buf_13_q0 mem_dout 0 32 }  { bottom_buf_13_address1 MemPortADDR2 1 8 }  { bottom_buf_13_ce1 MemPortCE2 1 1 }  { bottom_buf_13_q1 MemPortDOUT2 0 32 } } }
	bottom_buf_14 { ap_memory {  { bottom_buf_14_address0 mem_address 1 8 }  { bottom_buf_14_ce0 mem_ce 1 1 }  { bottom_buf_14_q0 mem_dout 0 32 }  { bottom_buf_14_address1 MemPortADDR2 1 8 }  { bottom_buf_14_ce1 MemPortCE2 1 1 }  { bottom_buf_14_q1 MemPortDOUT2 0 32 } } }
	bottom_buf_15 { ap_memory {  { bottom_buf_15_address0 mem_address 1 8 }  { bottom_buf_15_ce0 mem_ce 1 1 }  { bottom_buf_15_q0 mem_dout 0 32 }  { bottom_buf_15_address1 MemPortADDR2 1 8 }  { bottom_buf_15_ce1 MemPortCE2 1 1 }  { bottom_buf_15_q1 MemPortDOUT2 0 32 } } }
	power_buf_0 { ap_memory {  { power_buf_0_address0 mem_address 1 8 }  { power_buf_0_ce0 mem_ce 1 1 }  { power_buf_0_q0 mem_dout 0 32 }  { power_buf_0_address1 MemPortADDR2 1 8 }  { power_buf_0_ce1 MemPortCE2 1 1 }  { power_buf_0_q1 MemPortDOUT2 0 32 } } }
	power_buf_1 { ap_memory {  { power_buf_1_address0 mem_address 1 8 }  { power_buf_1_ce0 mem_ce 1 1 }  { power_buf_1_q0 mem_dout 0 32 }  { power_buf_1_address1 MemPortADDR2 1 8 }  { power_buf_1_ce1 MemPortCE2 1 1 }  { power_buf_1_q1 MemPortDOUT2 0 32 } } }
	power_buf_2 { ap_memory {  { power_buf_2_address0 mem_address 1 8 }  { power_buf_2_ce0 mem_ce 1 1 }  { power_buf_2_q0 mem_dout 0 32 }  { power_buf_2_address1 MemPortADDR2 1 8 }  { power_buf_2_ce1 MemPortCE2 1 1 }  { power_buf_2_q1 MemPortDOUT2 0 32 } } }
	power_buf_3 { ap_memory {  { power_buf_3_address0 mem_address 1 8 }  { power_buf_3_ce0 mem_ce 1 1 }  { power_buf_3_q0 mem_dout 0 32 }  { power_buf_3_address1 MemPortADDR2 1 8 }  { power_buf_3_ce1 MemPortCE2 1 1 }  { power_buf_3_q1 MemPortDOUT2 0 32 } } }
	power_buf_4 { ap_memory {  { power_buf_4_address0 mem_address 1 8 }  { power_buf_4_ce0 mem_ce 1 1 }  { power_buf_4_q0 mem_dout 0 32 }  { power_buf_4_address1 MemPortADDR2 1 8 }  { power_buf_4_ce1 MemPortCE2 1 1 }  { power_buf_4_q1 MemPortDOUT2 0 32 } } }
	power_buf_5 { ap_memory {  { power_buf_5_address0 mem_address 1 8 }  { power_buf_5_ce0 mem_ce 1 1 }  { power_buf_5_q0 mem_dout 0 32 }  { power_buf_5_address1 MemPortADDR2 1 8 }  { power_buf_5_ce1 MemPortCE2 1 1 }  { power_buf_5_q1 MemPortDOUT2 0 32 } } }
	power_buf_6 { ap_memory {  { power_buf_6_address0 mem_address 1 8 }  { power_buf_6_ce0 mem_ce 1 1 }  { power_buf_6_q0 mem_dout 0 32 }  { power_buf_6_address1 MemPortADDR2 1 8 }  { power_buf_6_ce1 MemPortCE2 1 1 }  { power_buf_6_q1 MemPortDOUT2 0 32 } } }
	power_buf_7 { ap_memory {  { power_buf_7_address0 mem_address 1 8 }  { power_buf_7_ce0 mem_ce 1 1 }  { power_buf_7_q0 mem_dout 0 32 }  { power_buf_7_address1 MemPortADDR2 1 8 }  { power_buf_7_ce1 MemPortCE2 1 1 }  { power_buf_7_q1 MemPortDOUT2 0 32 } } }
	power_buf_8 { ap_memory {  { power_buf_8_address0 mem_address 1 8 }  { power_buf_8_ce0 mem_ce 1 1 }  { power_buf_8_q0 mem_dout 0 32 }  { power_buf_8_address1 MemPortADDR2 1 8 }  { power_buf_8_ce1 MemPortCE2 1 1 }  { power_buf_8_q1 MemPortDOUT2 0 32 } } }
	power_buf_9 { ap_memory {  { power_buf_9_address0 mem_address 1 8 }  { power_buf_9_ce0 mem_ce 1 1 }  { power_buf_9_q0 mem_dout 0 32 }  { power_buf_9_address1 MemPortADDR2 1 8 }  { power_buf_9_ce1 MemPortCE2 1 1 }  { power_buf_9_q1 MemPortDOUT2 0 32 } } }
	power_buf_10 { ap_memory {  { power_buf_10_address0 mem_address 1 8 }  { power_buf_10_ce0 mem_ce 1 1 }  { power_buf_10_q0 mem_dout 0 32 }  { power_buf_10_address1 MemPortADDR2 1 8 }  { power_buf_10_ce1 MemPortCE2 1 1 }  { power_buf_10_q1 MemPortDOUT2 0 32 } } }
	power_buf_11 { ap_memory {  { power_buf_11_address0 mem_address 1 8 }  { power_buf_11_ce0 mem_ce 1 1 }  { power_buf_11_q0 mem_dout 0 32 }  { power_buf_11_address1 MemPortADDR2 1 8 }  { power_buf_11_ce1 MemPortCE2 1 1 }  { power_buf_11_q1 MemPortDOUT2 0 32 } } }
	power_buf_12 { ap_memory {  { power_buf_12_address0 mem_address 1 8 }  { power_buf_12_ce0 mem_ce 1 1 }  { power_buf_12_q0 mem_dout 0 32 }  { power_buf_12_address1 MemPortADDR2 1 8 }  { power_buf_12_ce1 MemPortCE2 1 1 }  { power_buf_12_q1 MemPortDOUT2 0 32 } } }
	power_buf_13 { ap_memory {  { power_buf_13_address0 mem_address 1 8 }  { power_buf_13_ce0 mem_ce 1 1 }  { power_buf_13_q0 mem_dout 0 32 }  { power_buf_13_address1 MemPortADDR2 1 8 }  { power_buf_13_ce1 MemPortCE2 1 1 }  { power_buf_13_q1 MemPortDOUT2 0 32 } } }
	power_buf_14 { ap_memory {  { power_buf_14_address0 mem_address 1 8 }  { power_buf_14_ce0 mem_ce 1 1 }  { power_buf_14_q0 mem_dout 0 32 }  { power_buf_14_address1 MemPortADDR2 1 8 }  { power_buf_14_ce1 MemPortCE2 1 1 }  { power_buf_14_q1 MemPortDOUT2 0 32 } } }
	power_buf_15 { ap_memory {  { power_buf_15_address0 mem_address 1 8 }  { power_buf_15_ce0 mem_ce 1 1 }  { power_buf_15_q0 mem_dout 0 32 }  { power_buf_15_address1 MemPortADDR2 1 8 }  { power_buf_15_ce1 MemPortCE2 1 1 }  { power_buf_15_q1 MemPortDOUT2 0 32 } } }
	cc { ap_none {  { cc in_data 0 32 } } }
	cn { ap_none {  { cn in_data 0 32 } } }
	cs { ap_none {  { cs in_data 0 32 } } }
	ce_r { ap_none {  { ce_r in_data 0 32 } } }
	cw { ap_none {  { cw in_data 0 32 } } }
	ct { ap_none {  { ct in_data 0 32 } } }
	cb { ap_none {  { cb in_data 0 32 } } }
	Cap { ap_none {  { Cap in_data 0 32 } } }
	dt { ap_none {  { dt in_data 0 32 } } }
	amb_temp { ap_none {  { amb_temp in_data 0 32 } } }
}
