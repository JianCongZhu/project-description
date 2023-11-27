set moduleName selectLayer
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
set C_modelName {selectLayer}
set C_modelType { void 0 }
set C_modelArgList {
	{ temp int 512 regular {array 32768 { 1 3 } 2 1 }  }
	{ load_flag int 1 regular  }
	{ center_buf_0 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ center_buf_1 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ center_buf_2 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ center_buf_3 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ center_buf_4 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ center_buf_5 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ center_buf_6 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ center_buf_7 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ center_buf_8 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ center_buf_9 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ center_buf_10 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ center_buf_11 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ center_buf_12 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ center_buf_13 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ center_buf_14 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ center_buf_15 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ top_buf_0 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ top_buf_1 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ top_buf_2 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ top_buf_3 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ top_buf_4 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ top_buf_5 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ top_buf_6 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ top_buf_7 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ top_buf_8 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ top_buf_9 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ top_buf_10 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ top_buf_11 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ top_buf_12 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ top_buf_13 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ top_buf_14 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ top_buf_15 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ bottom_buf_0 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ bottom_buf_1 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ bottom_buf_2 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ bottom_buf_3 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ bottom_buf_4 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ bottom_buf_5 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ bottom_buf_6 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ bottom_buf_7 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ bottom_buf_8 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ bottom_buf_9 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ bottom_buf_10 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ bottom_buf_11 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ bottom_buf_12 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ bottom_buf_13 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ bottom_buf_14 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ bottom_buf_15 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ layer int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "temp", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "load_flag", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "center_buf_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "center_buf_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "center_buf_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "center_buf_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "center_buf_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "center_buf_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "center_buf_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "center_buf_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "center_buf_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "center_buf_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "center_buf_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "center_buf_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "center_buf_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "center_buf_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "center_buf_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "center_buf_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_buf_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_buf_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_buf_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_buf_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_buf_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_buf_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_buf_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_buf_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_buf_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_buf_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_buf_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_buf_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_buf_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_buf_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_buf_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_buf_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bottom_buf_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bottom_buf_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bottom_buf_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bottom_buf_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bottom_buf_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bottom_buf_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bottom_buf_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bottom_buf_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bottom_buf_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bottom_buf_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bottom_buf_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bottom_buf_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bottom_buf_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bottom_buf_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bottom_buf_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bottom_buf_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 203
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ temp_address0 sc_out sc_lv 15 signal 0 } 
	{ temp_ce0 sc_out sc_logic 1 signal 0 } 
	{ temp_q0 sc_in sc_lv 512 signal 0 } 
	{ load_flag sc_in sc_lv 1 signal 1 } 
	{ center_buf_0_address0 sc_out sc_lv 8 signal 2 } 
	{ center_buf_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ center_buf_0_we0 sc_out sc_logic 1 signal 2 } 
	{ center_buf_0_d0 sc_out sc_lv 32 signal 2 } 
	{ center_buf_1_address0 sc_out sc_lv 8 signal 3 } 
	{ center_buf_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ center_buf_1_we0 sc_out sc_logic 1 signal 3 } 
	{ center_buf_1_d0 sc_out sc_lv 32 signal 3 } 
	{ center_buf_2_address0 sc_out sc_lv 8 signal 4 } 
	{ center_buf_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ center_buf_2_we0 sc_out sc_logic 1 signal 4 } 
	{ center_buf_2_d0 sc_out sc_lv 32 signal 4 } 
	{ center_buf_3_address0 sc_out sc_lv 8 signal 5 } 
	{ center_buf_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ center_buf_3_we0 sc_out sc_logic 1 signal 5 } 
	{ center_buf_3_d0 sc_out sc_lv 32 signal 5 } 
	{ center_buf_4_address0 sc_out sc_lv 8 signal 6 } 
	{ center_buf_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ center_buf_4_we0 sc_out sc_logic 1 signal 6 } 
	{ center_buf_4_d0 sc_out sc_lv 32 signal 6 } 
	{ center_buf_5_address0 sc_out sc_lv 8 signal 7 } 
	{ center_buf_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ center_buf_5_we0 sc_out sc_logic 1 signal 7 } 
	{ center_buf_5_d0 sc_out sc_lv 32 signal 7 } 
	{ center_buf_6_address0 sc_out sc_lv 8 signal 8 } 
	{ center_buf_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ center_buf_6_we0 sc_out sc_logic 1 signal 8 } 
	{ center_buf_6_d0 sc_out sc_lv 32 signal 8 } 
	{ center_buf_7_address0 sc_out sc_lv 8 signal 9 } 
	{ center_buf_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ center_buf_7_we0 sc_out sc_logic 1 signal 9 } 
	{ center_buf_7_d0 sc_out sc_lv 32 signal 9 } 
	{ center_buf_8_address0 sc_out sc_lv 8 signal 10 } 
	{ center_buf_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ center_buf_8_we0 sc_out sc_logic 1 signal 10 } 
	{ center_buf_8_d0 sc_out sc_lv 32 signal 10 } 
	{ center_buf_9_address0 sc_out sc_lv 8 signal 11 } 
	{ center_buf_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ center_buf_9_we0 sc_out sc_logic 1 signal 11 } 
	{ center_buf_9_d0 sc_out sc_lv 32 signal 11 } 
	{ center_buf_10_address0 sc_out sc_lv 8 signal 12 } 
	{ center_buf_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ center_buf_10_we0 sc_out sc_logic 1 signal 12 } 
	{ center_buf_10_d0 sc_out sc_lv 32 signal 12 } 
	{ center_buf_11_address0 sc_out sc_lv 8 signal 13 } 
	{ center_buf_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ center_buf_11_we0 sc_out sc_logic 1 signal 13 } 
	{ center_buf_11_d0 sc_out sc_lv 32 signal 13 } 
	{ center_buf_12_address0 sc_out sc_lv 8 signal 14 } 
	{ center_buf_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ center_buf_12_we0 sc_out sc_logic 1 signal 14 } 
	{ center_buf_12_d0 sc_out sc_lv 32 signal 14 } 
	{ center_buf_13_address0 sc_out sc_lv 8 signal 15 } 
	{ center_buf_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ center_buf_13_we0 sc_out sc_logic 1 signal 15 } 
	{ center_buf_13_d0 sc_out sc_lv 32 signal 15 } 
	{ center_buf_14_address0 sc_out sc_lv 8 signal 16 } 
	{ center_buf_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ center_buf_14_we0 sc_out sc_logic 1 signal 16 } 
	{ center_buf_14_d0 sc_out sc_lv 32 signal 16 } 
	{ center_buf_15_address0 sc_out sc_lv 8 signal 17 } 
	{ center_buf_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ center_buf_15_we0 sc_out sc_logic 1 signal 17 } 
	{ center_buf_15_d0 sc_out sc_lv 32 signal 17 } 
	{ top_buf_0_address0 sc_out sc_lv 8 signal 18 } 
	{ top_buf_0_ce0 sc_out sc_logic 1 signal 18 } 
	{ top_buf_0_we0 sc_out sc_logic 1 signal 18 } 
	{ top_buf_0_d0 sc_out sc_lv 32 signal 18 } 
	{ top_buf_1_address0 sc_out sc_lv 8 signal 19 } 
	{ top_buf_1_ce0 sc_out sc_logic 1 signal 19 } 
	{ top_buf_1_we0 sc_out sc_logic 1 signal 19 } 
	{ top_buf_1_d0 sc_out sc_lv 32 signal 19 } 
	{ top_buf_2_address0 sc_out sc_lv 8 signal 20 } 
	{ top_buf_2_ce0 sc_out sc_logic 1 signal 20 } 
	{ top_buf_2_we0 sc_out sc_logic 1 signal 20 } 
	{ top_buf_2_d0 sc_out sc_lv 32 signal 20 } 
	{ top_buf_3_address0 sc_out sc_lv 8 signal 21 } 
	{ top_buf_3_ce0 sc_out sc_logic 1 signal 21 } 
	{ top_buf_3_we0 sc_out sc_logic 1 signal 21 } 
	{ top_buf_3_d0 sc_out sc_lv 32 signal 21 } 
	{ top_buf_4_address0 sc_out sc_lv 8 signal 22 } 
	{ top_buf_4_ce0 sc_out sc_logic 1 signal 22 } 
	{ top_buf_4_we0 sc_out sc_logic 1 signal 22 } 
	{ top_buf_4_d0 sc_out sc_lv 32 signal 22 } 
	{ top_buf_5_address0 sc_out sc_lv 8 signal 23 } 
	{ top_buf_5_ce0 sc_out sc_logic 1 signal 23 } 
	{ top_buf_5_we0 sc_out sc_logic 1 signal 23 } 
	{ top_buf_5_d0 sc_out sc_lv 32 signal 23 } 
	{ top_buf_6_address0 sc_out sc_lv 8 signal 24 } 
	{ top_buf_6_ce0 sc_out sc_logic 1 signal 24 } 
	{ top_buf_6_we0 sc_out sc_logic 1 signal 24 } 
	{ top_buf_6_d0 sc_out sc_lv 32 signal 24 } 
	{ top_buf_7_address0 sc_out sc_lv 8 signal 25 } 
	{ top_buf_7_ce0 sc_out sc_logic 1 signal 25 } 
	{ top_buf_7_we0 sc_out sc_logic 1 signal 25 } 
	{ top_buf_7_d0 sc_out sc_lv 32 signal 25 } 
	{ top_buf_8_address0 sc_out sc_lv 8 signal 26 } 
	{ top_buf_8_ce0 sc_out sc_logic 1 signal 26 } 
	{ top_buf_8_we0 sc_out sc_logic 1 signal 26 } 
	{ top_buf_8_d0 sc_out sc_lv 32 signal 26 } 
	{ top_buf_9_address0 sc_out sc_lv 8 signal 27 } 
	{ top_buf_9_ce0 sc_out sc_logic 1 signal 27 } 
	{ top_buf_9_we0 sc_out sc_logic 1 signal 27 } 
	{ top_buf_9_d0 sc_out sc_lv 32 signal 27 } 
	{ top_buf_10_address0 sc_out sc_lv 8 signal 28 } 
	{ top_buf_10_ce0 sc_out sc_logic 1 signal 28 } 
	{ top_buf_10_we0 sc_out sc_logic 1 signal 28 } 
	{ top_buf_10_d0 sc_out sc_lv 32 signal 28 } 
	{ top_buf_11_address0 sc_out sc_lv 8 signal 29 } 
	{ top_buf_11_ce0 sc_out sc_logic 1 signal 29 } 
	{ top_buf_11_we0 sc_out sc_logic 1 signal 29 } 
	{ top_buf_11_d0 sc_out sc_lv 32 signal 29 } 
	{ top_buf_12_address0 sc_out sc_lv 8 signal 30 } 
	{ top_buf_12_ce0 sc_out sc_logic 1 signal 30 } 
	{ top_buf_12_we0 sc_out sc_logic 1 signal 30 } 
	{ top_buf_12_d0 sc_out sc_lv 32 signal 30 } 
	{ top_buf_13_address0 sc_out sc_lv 8 signal 31 } 
	{ top_buf_13_ce0 sc_out sc_logic 1 signal 31 } 
	{ top_buf_13_we0 sc_out sc_logic 1 signal 31 } 
	{ top_buf_13_d0 sc_out sc_lv 32 signal 31 } 
	{ top_buf_14_address0 sc_out sc_lv 8 signal 32 } 
	{ top_buf_14_ce0 sc_out sc_logic 1 signal 32 } 
	{ top_buf_14_we0 sc_out sc_logic 1 signal 32 } 
	{ top_buf_14_d0 sc_out sc_lv 32 signal 32 } 
	{ top_buf_15_address0 sc_out sc_lv 8 signal 33 } 
	{ top_buf_15_ce0 sc_out sc_logic 1 signal 33 } 
	{ top_buf_15_we0 sc_out sc_logic 1 signal 33 } 
	{ top_buf_15_d0 sc_out sc_lv 32 signal 33 } 
	{ bottom_buf_0_address0 sc_out sc_lv 8 signal 34 } 
	{ bottom_buf_0_ce0 sc_out sc_logic 1 signal 34 } 
	{ bottom_buf_0_we0 sc_out sc_logic 1 signal 34 } 
	{ bottom_buf_0_d0 sc_out sc_lv 32 signal 34 } 
	{ bottom_buf_1_address0 sc_out sc_lv 8 signal 35 } 
	{ bottom_buf_1_ce0 sc_out sc_logic 1 signal 35 } 
	{ bottom_buf_1_we0 sc_out sc_logic 1 signal 35 } 
	{ bottom_buf_1_d0 sc_out sc_lv 32 signal 35 } 
	{ bottom_buf_2_address0 sc_out sc_lv 8 signal 36 } 
	{ bottom_buf_2_ce0 sc_out sc_logic 1 signal 36 } 
	{ bottom_buf_2_we0 sc_out sc_logic 1 signal 36 } 
	{ bottom_buf_2_d0 sc_out sc_lv 32 signal 36 } 
	{ bottom_buf_3_address0 sc_out sc_lv 8 signal 37 } 
	{ bottom_buf_3_ce0 sc_out sc_logic 1 signal 37 } 
	{ bottom_buf_3_we0 sc_out sc_logic 1 signal 37 } 
	{ bottom_buf_3_d0 sc_out sc_lv 32 signal 37 } 
	{ bottom_buf_4_address0 sc_out sc_lv 8 signal 38 } 
	{ bottom_buf_4_ce0 sc_out sc_logic 1 signal 38 } 
	{ bottom_buf_4_we0 sc_out sc_logic 1 signal 38 } 
	{ bottom_buf_4_d0 sc_out sc_lv 32 signal 38 } 
	{ bottom_buf_5_address0 sc_out sc_lv 8 signal 39 } 
	{ bottom_buf_5_ce0 sc_out sc_logic 1 signal 39 } 
	{ bottom_buf_5_we0 sc_out sc_logic 1 signal 39 } 
	{ bottom_buf_5_d0 sc_out sc_lv 32 signal 39 } 
	{ bottom_buf_6_address0 sc_out sc_lv 8 signal 40 } 
	{ bottom_buf_6_ce0 sc_out sc_logic 1 signal 40 } 
	{ bottom_buf_6_we0 sc_out sc_logic 1 signal 40 } 
	{ bottom_buf_6_d0 sc_out sc_lv 32 signal 40 } 
	{ bottom_buf_7_address0 sc_out sc_lv 8 signal 41 } 
	{ bottom_buf_7_ce0 sc_out sc_logic 1 signal 41 } 
	{ bottom_buf_7_we0 sc_out sc_logic 1 signal 41 } 
	{ bottom_buf_7_d0 sc_out sc_lv 32 signal 41 } 
	{ bottom_buf_8_address0 sc_out sc_lv 8 signal 42 } 
	{ bottom_buf_8_ce0 sc_out sc_logic 1 signal 42 } 
	{ bottom_buf_8_we0 sc_out sc_logic 1 signal 42 } 
	{ bottom_buf_8_d0 sc_out sc_lv 32 signal 42 } 
	{ bottom_buf_9_address0 sc_out sc_lv 8 signal 43 } 
	{ bottom_buf_9_ce0 sc_out sc_logic 1 signal 43 } 
	{ bottom_buf_9_we0 sc_out sc_logic 1 signal 43 } 
	{ bottom_buf_9_d0 sc_out sc_lv 32 signal 43 } 
	{ bottom_buf_10_address0 sc_out sc_lv 8 signal 44 } 
	{ bottom_buf_10_ce0 sc_out sc_logic 1 signal 44 } 
	{ bottom_buf_10_we0 sc_out sc_logic 1 signal 44 } 
	{ bottom_buf_10_d0 sc_out sc_lv 32 signal 44 } 
	{ bottom_buf_11_address0 sc_out sc_lv 8 signal 45 } 
	{ bottom_buf_11_ce0 sc_out sc_logic 1 signal 45 } 
	{ bottom_buf_11_we0 sc_out sc_logic 1 signal 45 } 
	{ bottom_buf_11_d0 sc_out sc_lv 32 signal 45 } 
	{ bottom_buf_12_address0 sc_out sc_lv 8 signal 46 } 
	{ bottom_buf_12_ce0 sc_out sc_logic 1 signal 46 } 
	{ bottom_buf_12_we0 sc_out sc_logic 1 signal 46 } 
	{ bottom_buf_12_d0 sc_out sc_lv 32 signal 46 } 
	{ bottom_buf_13_address0 sc_out sc_lv 8 signal 47 } 
	{ bottom_buf_13_ce0 sc_out sc_logic 1 signal 47 } 
	{ bottom_buf_13_we0 sc_out sc_logic 1 signal 47 } 
	{ bottom_buf_13_d0 sc_out sc_lv 32 signal 47 } 
	{ bottom_buf_14_address0 sc_out sc_lv 8 signal 48 } 
	{ bottom_buf_14_ce0 sc_out sc_logic 1 signal 48 } 
	{ bottom_buf_14_we0 sc_out sc_logic 1 signal 48 } 
	{ bottom_buf_14_d0 sc_out sc_lv 32 signal 48 } 
	{ bottom_buf_15_address0 sc_out sc_lv 8 signal 49 } 
	{ bottom_buf_15_ce0 sc_out sc_logic 1 signal 49 } 
	{ bottom_buf_15_we0 sc_out sc_logic 1 signal 49 } 
	{ bottom_buf_15_d0 sc_out sc_lv 32 signal 49 } 
	{ layer sc_in sc_lv 4 signal 50 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "temp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "temp", "role": "address0" }} , 
 	{ "name": "temp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp", "role": "ce0" }} , 
 	{ "name": "temp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "temp", "role": "q0" }} , 
 	{ "name": "load_flag", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "load_flag", "role": "default" }} , 
 	{ "name": "center_buf_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_0", "role": "address0" }} , 
 	{ "name": "center_buf_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_0", "role": "ce0" }} , 
 	{ "name": "center_buf_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_0", "role": "we0" }} , 
 	{ "name": "center_buf_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_0", "role": "d0" }} , 
 	{ "name": "center_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_1", "role": "address0" }} , 
 	{ "name": "center_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_1", "role": "ce0" }} , 
 	{ "name": "center_buf_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_1", "role": "we0" }} , 
 	{ "name": "center_buf_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_1", "role": "d0" }} , 
 	{ "name": "center_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_2", "role": "address0" }} , 
 	{ "name": "center_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_2", "role": "ce0" }} , 
 	{ "name": "center_buf_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_2", "role": "we0" }} , 
 	{ "name": "center_buf_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_2", "role": "d0" }} , 
 	{ "name": "center_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_3", "role": "address0" }} , 
 	{ "name": "center_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_3", "role": "ce0" }} , 
 	{ "name": "center_buf_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_3", "role": "we0" }} , 
 	{ "name": "center_buf_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_3", "role": "d0" }} , 
 	{ "name": "center_buf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_4", "role": "address0" }} , 
 	{ "name": "center_buf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_4", "role": "ce0" }} , 
 	{ "name": "center_buf_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_4", "role": "we0" }} , 
 	{ "name": "center_buf_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_4", "role": "d0" }} , 
 	{ "name": "center_buf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_5", "role": "address0" }} , 
 	{ "name": "center_buf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_5", "role": "ce0" }} , 
 	{ "name": "center_buf_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_5", "role": "we0" }} , 
 	{ "name": "center_buf_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_5", "role": "d0" }} , 
 	{ "name": "center_buf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_6", "role": "address0" }} , 
 	{ "name": "center_buf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_6", "role": "ce0" }} , 
 	{ "name": "center_buf_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_6", "role": "we0" }} , 
 	{ "name": "center_buf_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_6", "role": "d0" }} , 
 	{ "name": "center_buf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_7", "role": "address0" }} , 
 	{ "name": "center_buf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_7", "role": "ce0" }} , 
 	{ "name": "center_buf_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_7", "role": "we0" }} , 
 	{ "name": "center_buf_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_7", "role": "d0" }} , 
 	{ "name": "center_buf_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_8", "role": "address0" }} , 
 	{ "name": "center_buf_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_8", "role": "ce0" }} , 
 	{ "name": "center_buf_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_8", "role": "we0" }} , 
 	{ "name": "center_buf_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_8", "role": "d0" }} , 
 	{ "name": "center_buf_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_9", "role": "address0" }} , 
 	{ "name": "center_buf_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_9", "role": "ce0" }} , 
 	{ "name": "center_buf_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_9", "role": "we0" }} , 
 	{ "name": "center_buf_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_9", "role": "d0" }} , 
 	{ "name": "center_buf_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_10", "role": "address0" }} , 
 	{ "name": "center_buf_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_10", "role": "ce0" }} , 
 	{ "name": "center_buf_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_10", "role": "we0" }} , 
 	{ "name": "center_buf_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_10", "role": "d0" }} , 
 	{ "name": "center_buf_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_11", "role": "address0" }} , 
 	{ "name": "center_buf_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_11", "role": "ce0" }} , 
 	{ "name": "center_buf_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_11", "role": "we0" }} , 
 	{ "name": "center_buf_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_11", "role": "d0" }} , 
 	{ "name": "center_buf_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_12", "role": "address0" }} , 
 	{ "name": "center_buf_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_12", "role": "ce0" }} , 
 	{ "name": "center_buf_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_12", "role": "we0" }} , 
 	{ "name": "center_buf_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_12", "role": "d0" }} , 
 	{ "name": "center_buf_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_13", "role": "address0" }} , 
 	{ "name": "center_buf_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_13", "role": "ce0" }} , 
 	{ "name": "center_buf_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_13", "role": "we0" }} , 
 	{ "name": "center_buf_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_13", "role": "d0" }} , 
 	{ "name": "center_buf_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_14", "role": "address0" }} , 
 	{ "name": "center_buf_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_14", "role": "ce0" }} , 
 	{ "name": "center_buf_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_14", "role": "we0" }} , 
 	{ "name": "center_buf_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_14", "role": "d0" }} , 
 	{ "name": "center_buf_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "center_buf_15", "role": "address0" }} , 
 	{ "name": "center_buf_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_15", "role": "ce0" }} , 
 	{ "name": "center_buf_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf_15", "role": "we0" }} , 
 	{ "name": "center_buf_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf_15", "role": "d0" }} , 
 	{ "name": "top_buf_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_0", "role": "address0" }} , 
 	{ "name": "top_buf_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_0", "role": "ce0" }} , 
 	{ "name": "top_buf_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_0", "role": "we0" }} , 
 	{ "name": "top_buf_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_0", "role": "d0" }} , 
 	{ "name": "top_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_1", "role": "address0" }} , 
 	{ "name": "top_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_1", "role": "ce0" }} , 
 	{ "name": "top_buf_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_1", "role": "we0" }} , 
 	{ "name": "top_buf_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_1", "role": "d0" }} , 
 	{ "name": "top_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_2", "role": "address0" }} , 
 	{ "name": "top_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_2", "role": "ce0" }} , 
 	{ "name": "top_buf_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_2", "role": "we0" }} , 
 	{ "name": "top_buf_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_2", "role": "d0" }} , 
 	{ "name": "top_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_3", "role": "address0" }} , 
 	{ "name": "top_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_3", "role": "ce0" }} , 
 	{ "name": "top_buf_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_3", "role": "we0" }} , 
 	{ "name": "top_buf_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_3", "role": "d0" }} , 
 	{ "name": "top_buf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_4", "role": "address0" }} , 
 	{ "name": "top_buf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_4", "role": "ce0" }} , 
 	{ "name": "top_buf_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_4", "role": "we0" }} , 
 	{ "name": "top_buf_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_4", "role": "d0" }} , 
 	{ "name": "top_buf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_5", "role": "address0" }} , 
 	{ "name": "top_buf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_5", "role": "ce0" }} , 
 	{ "name": "top_buf_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_5", "role": "we0" }} , 
 	{ "name": "top_buf_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_5", "role": "d0" }} , 
 	{ "name": "top_buf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_6", "role": "address0" }} , 
 	{ "name": "top_buf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_6", "role": "ce0" }} , 
 	{ "name": "top_buf_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_6", "role": "we0" }} , 
 	{ "name": "top_buf_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_6", "role": "d0" }} , 
 	{ "name": "top_buf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_7", "role": "address0" }} , 
 	{ "name": "top_buf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_7", "role": "ce0" }} , 
 	{ "name": "top_buf_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_7", "role": "we0" }} , 
 	{ "name": "top_buf_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_7", "role": "d0" }} , 
 	{ "name": "top_buf_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_8", "role": "address0" }} , 
 	{ "name": "top_buf_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_8", "role": "ce0" }} , 
 	{ "name": "top_buf_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_8", "role": "we0" }} , 
 	{ "name": "top_buf_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_8", "role": "d0" }} , 
 	{ "name": "top_buf_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_9", "role": "address0" }} , 
 	{ "name": "top_buf_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_9", "role": "ce0" }} , 
 	{ "name": "top_buf_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_9", "role": "we0" }} , 
 	{ "name": "top_buf_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_9", "role": "d0" }} , 
 	{ "name": "top_buf_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_10", "role": "address0" }} , 
 	{ "name": "top_buf_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_10", "role": "ce0" }} , 
 	{ "name": "top_buf_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_10", "role": "we0" }} , 
 	{ "name": "top_buf_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_10", "role": "d0" }} , 
 	{ "name": "top_buf_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_11", "role": "address0" }} , 
 	{ "name": "top_buf_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_11", "role": "ce0" }} , 
 	{ "name": "top_buf_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_11", "role": "we0" }} , 
 	{ "name": "top_buf_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_11", "role": "d0" }} , 
 	{ "name": "top_buf_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_12", "role": "address0" }} , 
 	{ "name": "top_buf_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_12", "role": "ce0" }} , 
 	{ "name": "top_buf_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_12", "role": "we0" }} , 
 	{ "name": "top_buf_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_12", "role": "d0" }} , 
 	{ "name": "top_buf_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_13", "role": "address0" }} , 
 	{ "name": "top_buf_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_13", "role": "ce0" }} , 
 	{ "name": "top_buf_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_13", "role": "we0" }} , 
 	{ "name": "top_buf_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_13", "role": "d0" }} , 
 	{ "name": "top_buf_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_14", "role": "address0" }} , 
 	{ "name": "top_buf_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_14", "role": "ce0" }} , 
 	{ "name": "top_buf_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_14", "role": "we0" }} , 
 	{ "name": "top_buf_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_14", "role": "d0" }} , 
 	{ "name": "top_buf_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "top_buf_15", "role": "address0" }} , 
 	{ "name": "top_buf_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_15", "role": "ce0" }} , 
 	{ "name": "top_buf_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf_15", "role": "we0" }} , 
 	{ "name": "top_buf_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf_15", "role": "d0" }} , 
 	{ "name": "bottom_buf_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_0", "role": "address0" }} , 
 	{ "name": "bottom_buf_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_0", "role": "ce0" }} , 
 	{ "name": "bottom_buf_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_0", "role": "we0" }} , 
 	{ "name": "bottom_buf_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_0", "role": "d0" }} , 
 	{ "name": "bottom_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_1", "role": "address0" }} , 
 	{ "name": "bottom_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_1", "role": "ce0" }} , 
 	{ "name": "bottom_buf_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_1", "role": "we0" }} , 
 	{ "name": "bottom_buf_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_1", "role": "d0" }} , 
 	{ "name": "bottom_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_2", "role": "address0" }} , 
 	{ "name": "bottom_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_2", "role": "ce0" }} , 
 	{ "name": "bottom_buf_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_2", "role": "we0" }} , 
 	{ "name": "bottom_buf_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_2", "role": "d0" }} , 
 	{ "name": "bottom_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_3", "role": "address0" }} , 
 	{ "name": "bottom_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_3", "role": "ce0" }} , 
 	{ "name": "bottom_buf_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_3", "role": "we0" }} , 
 	{ "name": "bottom_buf_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_3", "role": "d0" }} , 
 	{ "name": "bottom_buf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_4", "role": "address0" }} , 
 	{ "name": "bottom_buf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_4", "role": "ce0" }} , 
 	{ "name": "bottom_buf_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_4", "role": "we0" }} , 
 	{ "name": "bottom_buf_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_4", "role": "d0" }} , 
 	{ "name": "bottom_buf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_5", "role": "address0" }} , 
 	{ "name": "bottom_buf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_5", "role": "ce0" }} , 
 	{ "name": "bottom_buf_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_5", "role": "we0" }} , 
 	{ "name": "bottom_buf_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_5", "role": "d0" }} , 
 	{ "name": "bottom_buf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_6", "role": "address0" }} , 
 	{ "name": "bottom_buf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_6", "role": "ce0" }} , 
 	{ "name": "bottom_buf_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_6", "role": "we0" }} , 
 	{ "name": "bottom_buf_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_6", "role": "d0" }} , 
 	{ "name": "bottom_buf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_7", "role": "address0" }} , 
 	{ "name": "bottom_buf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_7", "role": "ce0" }} , 
 	{ "name": "bottom_buf_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_7", "role": "we0" }} , 
 	{ "name": "bottom_buf_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_7", "role": "d0" }} , 
 	{ "name": "bottom_buf_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_8", "role": "address0" }} , 
 	{ "name": "bottom_buf_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_8", "role": "ce0" }} , 
 	{ "name": "bottom_buf_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_8", "role": "we0" }} , 
 	{ "name": "bottom_buf_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_8", "role": "d0" }} , 
 	{ "name": "bottom_buf_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_9", "role": "address0" }} , 
 	{ "name": "bottom_buf_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_9", "role": "ce0" }} , 
 	{ "name": "bottom_buf_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_9", "role": "we0" }} , 
 	{ "name": "bottom_buf_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_9", "role": "d0" }} , 
 	{ "name": "bottom_buf_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_10", "role": "address0" }} , 
 	{ "name": "bottom_buf_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_10", "role": "ce0" }} , 
 	{ "name": "bottom_buf_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_10", "role": "we0" }} , 
 	{ "name": "bottom_buf_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_10", "role": "d0" }} , 
 	{ "name": "bottom_buf_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_11", "role": "address0" }} , 
 	{ "name": "bottom_buf_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_11", "role": "ce0" }} , 
 	{ "name": "bottom_buf_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_11", "role": "we0" }} , 
 	{ "name": "bottom_buf_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_11", "role": "d0" }} , 
 	{ "name": "bottom_buf_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_12", "role": "address0" }} , 
 	{ "name": "bottom_buf_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_12", "role": "ce0" }} , 
 	{ "name": "bottom_buf_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_12", "role": "we0" }} , 
 	{ "name": "bottom_buf_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_12", "role": "d0" }} , 
 	{ "name": "bottom_buf_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_13", "role": "address0" }} , 
 	{ "name": "bottom_buf_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_13", "role": "ce0" }} , 
 	{ "name": "bottom_buf_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_13", "role": "we0" }} , 
 	{ "name": "bottom_buf_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_13", "role": "d0" }} , 
 	{ "name": "bottom_buf_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_14", "role": "address0" }} , 
 	{ "name": "bottom_buf_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_14", "role": "ce0" }} , 
 	{ "name": "bottom_buf_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_14", "role": "we0" }} , 
 	{ "name": "bottom_buf_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_14", "role": "d0" }} , 
 	{ "name": "bottom_buf_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_buf_15", "role": "address0" }} , 
 	{ "name": "bottom_buf_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_15", "role": "ce0" }} , 
 	{ "name": "bottom_buf_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf_15", "role": "we0" }} , 
 	{ "name": "bottom_buf_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf_15", "role": "d0" }} , 
 	{ "name": "layer", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "layer", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "selectLayer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "785",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "temp"}]},
			{"Name" : "load_flag", "Type" : "None", "Direction" : "I"},
			{"Name" : "center_buf_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_0"}]},
			{"Name" : "center_buf_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_1"}]},
			{"Name" : "center_buf_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_2"}]},
			{"Name" : "center_buf_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_3"}]},
			{"Name" : "center_buf_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_4"}]},
			{"Name" : "center_buf_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_5"}]},
			{"Name" : "center_buf_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_6"}]},
			{"Name" : "center_buf_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_7"}]},
			{"Name" : "center_buf_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_8"}]},
			{"Name" : "center_buf_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_9"}]},
			{"Name" : "center_buf_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_10"}]},
			{"Name" : "center_buf_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_11"}]},
			{"Name" : "center_buf_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_12"}]},
			{"Name" : "center_buf_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_13"}]},
			{"Name" : "center_buf_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_14"}]},
			{"Name" : "center_buf_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_15"}]},
			{"Name" : "top_buf_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_0"}]},
			{"Name" : "top_buf_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_1"}]},
			{"Name" : "top_buf_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_2"}]},
			{"Name" : "top_buf_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_3"}]},
			{"Name" : "top_buf_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_4"}]},
			{"Name" : "top_buf_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_5"}]},
			{"Name" : "top_buf_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_6"}]},
			{"Name" : "top_buf_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_7"}]},
			{"Name" : "top_buf_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_8"}]},
			{"Name" : "top_buf_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_9"}]},
			{"Name" : "top_buf_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_10"}]},
			{"Name" : "top_buf_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_11"}]},
			{"Name" : "top_buf_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_12"}]},
			{"Name" : "top_buf_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_13"}]},
			{"Name" : "top_buf_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_14"}]},
			{"Name" : "top_buf_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_15"}]},
			{"Name" : "bottom_buf_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_0"}]},
			{"Name" : "bottom_buf_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_1"}]},
			{"Name" : "bottom_buf_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_2"}]},
			{"Name" : "bottom_buf_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_3"}]},
			{"Name" : "bottom_buf_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_4"}]},
			{"Name" : "bottom_buf_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_5"}]},
			{"Name" : "bottom_buf_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_6"}]},
			{"Name" : "bottom_buf_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_7"}]},
			{"Name" : "bottom_buf_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_8"}]},
			{"Name" : "bottom_buf_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_9"}]},
			{"Name" : "bottom_buf_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_10"}]},
			{"Name" : "bottom_buf_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_11"}]},
			{"Name" : "bottom_buf_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_12"}]},
			{"Name" : "bottom_buf_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_13"}]},
			{"Name" : "bottom_buf_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_14"}]},
			{"Name" : "bottom_buf_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_15"}]},
			{"Name" : "layer", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_buffer_load_fu_174", "Parent" : "0",
		"CDFG" : "buffer_load",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "260",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "load_flag", "Type" : "None", "Direction" : "I"},
			{"Name" : "dest_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dest_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dest_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dest_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dest_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dest_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dest_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dest_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dest_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dest_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dest_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dest_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dest_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dest_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dest_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dest_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "source", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	selectLayer {
		temp {Type I LastRead 1 FirstWrite -1}
		load_flag {Type I LastRead 0 FirstWrite -1}
		center_buf_0 {Type O LastRead -1 FirstWrite 4}
		center_buf_1 {Type O LastRead -1 FirstWrite 4}
		center_buf_2 {Type O LastRead -1 FirstWrite 4}
		center_buf_3 {Type O LastRead -1 FirstWrite 4}
		center_buf_4 {Type O LastRead -1 FirstWrite 4}
		center_buf_5 {Type O LastRead -1 FirstWrite 4}
		center_buf_6 {Type O LastRead -1 FirstWrite 4}
		center_buf_7 {Type O LastRead -1 FirstWrite 4}
		center_buf_8 {Type O LastRead -1 FirstWrite 4}
		center_buf_9 {Type O LastRead -1 FirstWrite 4}
		center_buf_10 {Type O LastRead -1 FirstWrite 4}
		center_buf_11 {Type O LastRead -1 FirstWrite 4}
		center_buf_12 {Type O LastRead -1 FirstWrite 4}
		center_buf_13 {Type O LastRead -1 FirstWrite 4}
		center_buf_14 {Type O LastRead -1 FirstWrite 4}
		center_buf_15 {Type O LastRead -1 FirstWrite 4}
		top_buf_0 {Type O LastRead -1 FirstWrite 4}
		top_buf_1 {Type O LastRead -1 FirstWrite 4}
		top_buf_2 {Type O LastRead -1 FirstWrite 4}
		top_buf_3 {Type O LastRead -1 FirstWrite 4}
		top_buf_4 {Type O LastRead -1 FirstWrite 4}
		top_buf_5 {Type O LastRead -1 FirstWrite 4}
		top_buf_6 {Type O LastRead -1 FirstWrite 4}
		top_buf_7 {Type O LastRead -1 FirstWrite 4}
		top_buf_8 {Type O LastRead -1 FirstWrite 4}
		top_buf_9 {Type O LastRead -1 FirstWrite 4}
		top_buf_10 {Type O LastRead -1 FirstWrite 4}
		top_buf_11 {Type O LastRead -1 FirstWrite 4}
		top_buf_12 {Type O LastRead -1 FirstWrite 4}
		top_buf_13 {Type O LastRead -1 FirstWrite 4}
		top_buf_14 {Type O LastRead -1 FirstWrite 4}
		top_buf_15 {Type O LastRead -1 FirstWrite 4}
		bottom_buf_0 {Type O LastRead -1 FirstWrite 4}
		bottom_buf_1 {Type O LastRead -1 FirstWrite 4}
		bottom_buf_2 {Type O LastRead -1 FirstWrite 4}
		bottom_buf_3 {Type O LastRead -1 FirstWrite 4}
		bottom_buf_4 {Type O LastRead -1 FirstWrite 4}
		bottom_buf_5 {Type O LastRead -1 FirstWrite 4}
		bottom_buf_6 {Type O LastRead -1 FirstWrite 4}
		bottom_buf_7 {Type O LastRead -1 FirstWrite 4}
		bottom_buf_8 {Type O LastRead -1 FirstWrite 4}
		bottom_buf_9 {Type O LastRead -1 FirstWrite 4}
		bottom_buf_10 {Type O LastRead -1 FirstWrite 4}
		bottom_buf_11 {Type O LastRead -1 FirstWrite 4}
		bottom_buf_12 {Type O LastRead -1 FirstWrite 4}
		bottom_buf_13 {Type O LastRead -1 FirstWrite 4}
		bottom_buf_14 {Type O LastRead -1 FirstWrite 4}
		bottom_buf_15 {Type O LastRead -1 FirstWrite 4}
		layer {Type I LastRead 0 FirstWrite -1}}
	buffer_load {
		temp {Type I LastRead 1 FirstWrite -1}
		load_flag {Type I LastRead 0 FirstWrite -1}
		dest_0 {Type O LastRead -1 FirstWrite 4}
		dest_1 {Type O LastRead -1 FirstWrite 4}
		dest_2 {Type O LastRead -1 FirstWrite 4}
		dest_3 {Type O LastRead -1 FirstWrite 4}
		dest_4 {Type O LastRead -1 FirstWrite 4}
		dest_5 {Type O LastRead -1 FirstWrite 4}
		dest_6 {Type O LastRead -1 FirstWrite 4}
		dest_7 {Type O LastRead -1 FirstWrite 4}
		dest_8 {Type O LastRead -1 FirstWrite 4}
		dest_9 {Type O LastRead -1 FirstWrite 4}
		dest_10 {Type O LastRead -1 FirstWrite 4}
		dest_11 {Type O LastRead -1 FirstWrite 4}
		dest_12 {Type O LastRead -1 FirstWrite 4}
		dest_13 {Type O LastRead -1 FirstWrite 4}
		dest_14 {Type O LastRead -1 FirstWrite 4}
		dest_15 {Type O LastRead -1 FirstWrite 4}
		source {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "785"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "785"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	temp { ap_memory {  { temp_address0 mem_address 1 15 }  { temp_ce0 mem_ce 1 1 }  { temp_q0 mem_dout 0 512 } } }
	load_flag { ap_none {  { load_flag in_data 0 1 } } }
	center_buf_0 { ap_memory {  { center_buf_0_address0 mem_address 1 8 }  { center_buf_0_ce0 mem_ce 1 1 }  { center_buf_0_we0 mem_we 1 1 }  { center_buf_0_d0 mem_din 1 32 } } }
	center_buf_1 { ap_memory {  { center_buf_1_address0 mem_address 1 8 }  { center_buf_1_ce0 mem_ce 1 1 }  { center_buf_1_we0 mem_we 1 1 }  { center_buf_1_d0 mem_din 1 32 } } }
	center_buf_2 { ap_memory {  { center_buf_2_address0 mem_address 1 8 }  { center_buf_2_ce0 mem_ce 1 1 }  { center_buf_2_we0 mem_we 1 1 }  { center_buf_2_d0 mem_din 1 32 } } }
	center_buf_3 { ap_memory {  { center_buf_3_address0 mem_address 1 8 }  { center_buf_3_ce0 mem_ce 1 1 }  { center_buf_3_we0 mem_we 1 1 }  { center_buf_3_d0 mem_din 1 32 } } }
	center_buf_4 { ap_memory {  { center_buf_4_address0 mem_address 1 8 }  { center_buf_4_ce0 mem_ce 1 1 }  { center_buf_4_we0 mem_we 1 1 }  { center_buf_4_d0 mem_din 1 32 } } }
	center_buf_5 { ap_memory {  { center_buf_5_address0 mem_address 1 8 }  { center_buf_5_ce0 mem_ce 1 1 }  { center_buf_5_we0 mem_we 1 1 }  { center_buf_5_d0 mem_din 1 32 } } }
	center_buf_6 { ap_memory {  { center_buf_6_address0 mem_address 1 8 }  { center_buf_6_ce0 mem_ce 1 1 }  { center_buf_6_we0 mem_we 1 1 }  { center_buf_6_d0 mem_din 1 32 } } }
	center_buf_7 { ap_memory {  { center_buf_7_address0 mem_address 1 8 }  { center_buf_7_ce0 mem_ce 1 1 }  { center_buf_7_we0 mem_we 1 1 }  { center_buf_7_d0 mem_din 1 32 } } }
	center_buf_8 { ap_memory {  { center_buf_8_address0 mem_address 1 8 }  { center_buf_8_ce0 mem_ce 1 1 }  { center_buf_8_we0 mem_we 1 1 }  { center_buf_8_d0 mem_din 1 32 } } }
	center_buf_9 { ap_memory {  { center_buf_9_address0 mem_address 1 8 }  { center_buf_9_ce0 mem_ce 1 1 }  { center_buf_9_we0 mem_we 1 1 }  { center_buf_9_d0 mem_din 1 32 } } }
	center_buf_10 { ap_memory {  { center_buf_10_address0 mem_address 1 8 }  { center_buf_10_ce0 mem_ce 1 1 }  { center_buf_10_we0 mem_we 1 1 }  { center_buf_10_d0 mem_din 1 32 } } }
	center_buf_11 { ap_memory {  { center_buf_11_address0 mem_address 1 8 }  { center_buf_11_ce0 mem_ce 1 1 }  { center_buf_11_we0 mem_we 1 1 }  { center_buf_11_d0 mem_din 1 32 } } }
	center_buf_12 { ap_memory {  { center_buf_12_address0 mem_address 1 8 }  { center_buf_12_ce0 mem_ce 1 1 }  { center_buf_12_we0 mem_we 1 1 }  { center_buf_12_d0 mem_din 1 32 } } }
	center_buf_13 { ap_memory {  { center_buf_13_address0 mem_address 1 8 }  { center_buf_13_ce0 mem_ce 1 1 }  { center_buf_13_we0 mem_we 1 1 }  { center_buf_13_d0 mem_din 1 32 } } }
	center_buf_14 { ap_memory {  { center_buf_14_address0 mem_address 1 8 }  { center_buf_14_ce0 mem_ce 1 1 }  { center_buf_14_we0 mem_we 1 1 }  { center_buf_14_d0 mem_din 1 32 } } }
	center_buf_15 { ap_memory {  { center_buf_15_address0 mem_address 1 8 }  { center_buf_15_ce0 mem_ce 1 1 }  { center_buf_15_we0 mem_we 1 1 }  { center_buf_15_d0 mem_din 1 32 } } }
	top_buf_0 { ap_memory {  { top_buf_0_address0 mem_address 1 8 }  { top_buf_0_ce0 mem_ce 1 1 }  { top_buf_0_we0 mem_we 1 1 }  { top_buf_0_d0 mem_din 1 32 } } }
	top_buf_1 { ap_memory {  { top_buf_1_address0 mem_address 1 8 }  { top_buf_1_ce0 mem_ce 1 1 }  { top_buf_1_we0 mem_we 1 1 }  { top_buf_1_d0 mem_din 1 32 } } }
	top_buf_2 { ap_memory {  { top_buf_2_address0 mem_address 1 8 }  { top_buf_2_ce0 mem_ce 1 1 }  { top_buf_2_we0 mem_we 1 1 }  { top_buf_2_d0 mem_din 1 32 } } }
	top_buf_3 { ap_memory {  { top_buf_3_address0 mem_address 1 8 }  { top_buf_3_ce0 mem_ce 1 1 }  { top_buf_3_we0 mem_we 1 1 }  { top_buf_3_d0 mem_din 1 32 } } }
	top_buf_4 { ap_memory {  { top_buf_4_address0 mem_address 1 8 }  { top_buf_4_ce0 mem_ce 1 1 }  { top_buf_4_we0 mem_we 1 1 }  { top_buf_4_d0 mem_din 1 32 } } }
	top_buf_5 { ap_memory {  { top_buf_5_address0 mem_address 1 8 }  { top_buf_5_ce0 mem_ce 1 1 }  { top_buf_5_we0 mem_we 1 1 }  { top_buf_5_d0 mem_din 1 32 } } }
	top_buf_6 { ap_memory {  { top_buf_6_address0 mem_address 1 8 }  { top_buf_6_ce0 mem_ce 1 1 }  { top_buf_6_we0 mem_we 1 1 }  { top_buf_6_d0 mem_din 1 32 } } }
	top_buf_7 { ap_memory {  { top_buf_7_address0 mem_address 1 8 }  { top_buf_7_ce0 mem_ce 1 1 }  { top_buf_7_we0 mem_we 1 1 }  { top_buf_7_d0 mem_din 1 32 } } }
	top_buf_8 { ap_memory {  { top_buf_8_address0 mem_address 1 8 }  { top_buf_8_ce0 mem_ce 1 1 }  { top_buf_8_we0 mem_we 1 1 }  { top_buf_8_d0 mem_din 1 32 } } }
	top_buf_9 { ap_memory {  { top_buf_9_address0 mem_address 1 8 }  { top_buf_9_ce0 mem_ce 1 1 }  { top_buf_9_we0 mem_we 1 1 }  { top_buf_9_d0 mem_din 1 32 } } }
	top_buf_10 { ap_memory {  { top_buf_10_address0 mem_address 1 8 }  { top_buf_10_ce0 mem_ce 1 1 }  { top_buf_10_we0 mem_we 1 1 }  { top_buf_10_d0 mem_din 1 32 } } }
	top_buf_11 { ap_memory {  { top_buf_11_address0 mem_address 1 8 }  { top_buf_11_ce0 mem_ce 1 1 }  { top_buf_11_we0 mem_we 1 1 }  { top_buf_11_d0 mem_din 1 32 } } }
	top_buf_12 { ap_memory {  { top_buf_12_address0 mem_address 1 8 }  { top_buf_12_ce0 mem_ce 1 1 }  { top_buf_12_we0 mem_we 1 1 }  { top_buf_12_d0 mem_din 1 32 } } }
	top_buf_13 { ap_memory {  { top_buf_13_address0 mem_address 1 8 }  { top_buf_13_ce0 mem_ce 1 1 }  { top_buf_13_we0 mem_we 1 1 }  { top_buf_13_d0 mem_din 1 32 } } }
	top_buf_14 { ap_memory {  { top_buf_14_address0 mem_address 1 8 }  { top_buf_14_ce0 mem_ce 1 1 }  { top_buf_14_we0 mem_we 1 1 }  { top_buf_14_d0 mem_din 1 32 } } }
	top_buf_15 { ap_memory {  { top_buf_15_address0 mem_address 1 8 }  { top_buf_15_ce0 mem_ce 1 1 }  { top_buf_15_we0 mem_we 1 1 }  { top_buf_15_d0 mem_din 1 32 } } }
	bottom_buf_0 { ap_memory {  { bottom_buf_0_address0 mem_address 1 8 }  { bottom_buf_0_ce0 mem_ce 1 1 }  { bottom_buf_0_we0 mem_we 1 1 }  { bottom_buf_0_d0 mem_din 1 32 } } }
	bottom_buf_1 { ap_memory {  { bottom_buf_1_address0 mem_address 1 8 }  { bottom_buf_1_ce0 mem_ce 1 1 }  { bottom_buf_1_we0 mem_we 1 1 }  { bottom_buf_1_d0 mem_din 1 32 } } }
	bottom_buf_2 { ap_memory {  { bottom_buf_2_address0 mem_address 1 8 }  { bottom_buf_2_ce0 mem_ce 1 1 }  { bottom_buf_2_we0 mem_we 1 1 }  { bottom_buf_2_d0 mem_din 1 32 } } }
	bottom_buf_3 { ap_memory {  { bottom_buf_3_address0 mem_address 1 8 }  { bottom_buf_3_ce0 mem_ce 1 1 }  { bottom_buf_3_we0 mem_we 1 1 }  { bottom_buf_3_d0 mem_din 1 32 } } }
	bottom_buf_4 { ap_memory {  { bottom_buf_4_address0 mem_address 1 8 }  { bottom_buf_4_ce0 mem_ce 1 1 }  { bottom_buf_4_we0 mem_we 1 1 }  { bottom_buf_4_d0 mem_din 1 32 } } }
	bottom_buf_5 { ap_memory {  { bottom_buf_5_address0 mem_address 1 8 }  { bottom_buf_5_ce0 mem_ce 1 1 }  { bottom_buf_5_we0 mem_we 1 1 }  { bottom_buf_5_d0 mem_din 1 32 } } }
	bottom_buf_6 { ap_memory {  { bottom_buf_6_address0 mem_address 1 8 }  { bottom_buf_6_ce0 mem_ce 1 1 }  { bottom_buf_6_we0 mem_we 1 1 }  { bottom_buf_6_d0 mem_din 1 32 } } }
	bottom_buf_7 { ap_memory {  { bottom_buf_7_address0 mem_address 1 8 }  { bottom_buf_7_ce0 mem_ce 1 1 }  { bottom_buf_7_we0 mem_we 1 1 }  { bottom_buf_7_d0 mem_din 1 32 } } }
	bottom_buf_8 { ap_memory {  { bottom_buf_8_address0 mem_address 1 8 }  { bottom_buf_8_ce0 mem_ce 1 1 }  { bottom_buf_8_we0 mem_we 1 1 }  { bottom_buf_8_d0 mem_din 1 32 } } }
	bottom_buf_9 { ap_memory {  { bottom_buf_9_address0 mem_address 1 8 }  { bottom_buf_9_ce0 mem_ce 1 1 }  { bottom_buf_9_we0 mem_we 1 1 }  { bottom_buf_9_d0 mem_din 1 32 } } }
	bottom_buf_10 { ap_memory {  { bottom_buf_10_address0 mem_address 1 8 }  { bottom_buf_10_ce0 mem_ce 1 1 }  { bottom_buf_10_we0 mem_we 1 1 }  { bottom_buf_10_d0 mem_din 1 32 } } }
	bottom_buf_11 { ap_memory {  { bottom_buf_11_address0 mem_address 1 8 }  { bottom_buf_11_ce0 mem_ce 1 1 }  { bottom_buf_11_we0 mem_we 1 1 }  { bottom_buf_11_d0 mem_din 1 32 } } }
	bottom_buf_12 { ap_memory {  { bottom_buf_12_address0 mem_address 1 8 }  { bottom_buf_12_ce0 mem_ce 1 1 }  { bottom_buf_12_we0 mem_we 1 1 }  { bottom_buf_12_d0 mem_din 1 32 } } }
	bottom_buf_13 { ap_memory {  { bottom_buf_13_address0 mem_address 1 8 }  { bottom_buf_13_ce0 mem_ce 1 1 }  { bottom_buf_13_we0 mem_we 1 1 }  { bottom_buf_13_d0 mem_din 1 32 } } }
	bottom_buf_14 { ap_memory {  { bottom_buf_14_address0 mem_address 1 8 }  { bottom_buf_14_ce0 mem_ce 1 1 }  { bottom_buf_14_we0 mem_we 1 1 }  { bottom_buf_14_d0 mem_din 1 32 } } }
	bottom_buf_15 { ap_memory {  { bottom_buf_15_address0 mem_address 1 8 }  { bottom_buf_15_ce0 mem_ce 1 1 }  { bottom_buf_15_we0 mem_we 1 1 }  { bottom_buf_15_d0 mem_din 1 32 } } }
	layer { ap_none {  { layer in_data 0 4 } } }
}
