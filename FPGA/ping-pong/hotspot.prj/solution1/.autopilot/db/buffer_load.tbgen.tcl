set moduleName buffer_load
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
set C_modelName {buffer_load}
set C_modelType { void 0 }
set C_modelArgList {
	{ temp int 512 regular {array 32768 { 1 3 } 2 1 }  }
	{ load_flag int 1 regular  }
	{ dest_0 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ dest_1 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ dest_2 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ dest_3 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ dest_4 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ dest_5 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ dest_6 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ dest_7 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ dest_8 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ dest_9 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ dest_10 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ dest_11 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ dest_12 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ dest_13 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ dest_14 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ dest_15 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ source int 21 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "temp", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "load_flag", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "dest_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dest_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dest_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dest_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dest_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dest_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dest_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dest_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dest_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dest_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dest_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dest_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dest_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dest_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dest_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dest_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "source", "interface" : "wire", "bitwidth" : 21, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 75
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
	{ dest_0_address0 sc_out sc_lv 8 signal 2 } 
	{ dest_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ dest_0_we0 sc_out sc_logic 1 signal 2 } 
	{ dest_0_d0 sc_out sc_lv 32 signal 2 } 
	{ dest_1_address0 sc_out sc_lv 8 signal 3 } 
	{ dest_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ dest_1_we0 sc_out sc_logic 1 signal 3 } 
	{ dest_1_d0 sc_out sc_lv 32 signal 3 } 
	{ dest_2_address0 sc_out sc_lv 8 signal 4 } 
	{ dest_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ dest_2_we0 sc_out sc_logic 1 signal 4 } 
	{ dest_2_d0 sc_out sc_lv 32 signal 4 } 
	{ dest_3_address0 sc_out sc_lv 8 signal 5 } 
	{ dest_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ dest_3_we0 sc_out sc_logic 1 signal 5 } 
	{ dest_3_d0 sc_out sc_lv 32 signal 5 } 
	{ dest_4_address0 sc_out sc_lv 8 signal 6 } 
	{ dest_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ dest_4_we0 sc_out sc_logic 1 signal 6 } 
	{ dest_4_d0 sc_out sc_lv 32 signal 6 } 
	{ dest_5_address0 sc_out sc_lv 8 signal 7 } 
	{ dest_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ dest_5_we0 sc_out sc_logic 1 signal 7 } 
	{ dest_5_d0 sc_out sc_lv 32 signal 7 } 
	{ dest_6_address0 sc_out sc_lv 8 signal 8 } 
	{ dest_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ dest_6_we0 sc_out sc_logic 1 signal 8 } 
	{ dest_6_d0 sc_out sc_lv 32 signal 8 } 
	{ dest_7_address0 sc_out sc_lv 8 signal 9 } 
	{ dest_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ dest_7_we0 sc_out sc_logic 1 signal 9 } 
	{ dest_7_d0 sc_out sc_lv 32 signal 9 } 
	{ dest_8_address0 sc_out sc_lv 8 signal 10 } 
	{ dest_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ dest_8_we0 sc_out sc_logic 1 signal 10 } 
	{ dest_8_d0 sc_out sc_lv 32 signal 10 } 
	{ dest_9_address0 sc_out sc_lv 8 signal 11 } 
	{ dest_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ dest_9_we0 sc_out sc_logic 1 signal 11 } 
	{ dest_9_d0 sc_out sc_lv 32 signal 11 } 
	{ dest_10_address0 sc_out sc_lv 8 signal 12 } 
	{ dest_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ dest_10_we0 sc_out sc_logic 1 signal 12 } 
	{ dest_10_d0 sc_out sc_lv 32 signal 12 } 
	{ dest_11_address0 sc_out sc_lv 8 signal 13 } 
	{ dest_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ dest_11_we0 sc_out sc_logic 1 signal 13 } 
	{ dest_11_d0 sc_out sc_lv 32 signal 13 } 
	{ dest_12_address0 sc_out sc_lv 8 signal 14 } 
	{ dest_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ dest_12_we0 sc_out sc_logic 1 signal 14 } 
	{ dest_12_d0 sc_out sc_lv 32 signal 14 } 
	{ dest_13_address0 sc_out sc_lv 8 signal 15 } 
	{ dest_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ dest_13_we0 sc_out sc_logic 1 signal 15 } 
	{ dest_13_d0 sc_out sc_lv 32 signal 15 } 
	{ dest_14_address0 sc_out sc_lv 8 signal 16 } 
	{ dest_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ dest_14_we0 sc_out sc_logic 1 signal 16 } 
	{ dest_14_d0 sc_out sc_lv 32 signal 16 } 
	{ dest_15_address0 sc_out sc_lv 8 signal 17 } 
	{ dest_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ dest_15_we0 sc_out sc_logic 1 signal 17 } 
	{ dest_15_d0 sc_out sc_lv 32 signal 17 } 
	{ source sc_in sc_lv 21 signal 18 } 
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
 	{ "name": "dest_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_0", "role": "address0" }} , 
 	{ "name": "dest_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_0", "role": "ce0" }} , 
 	{ "name": "dest_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_0", "role": "we0" }} , 
 	{ "name": "dest_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_0", "role": "d0" }} , 
 	{ "name": "dest_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_1", "role": "address0" }} , 
 	{ "name": "dest_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_1", "role": "ce0" }} , 
 	{ "name": "dest_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_1", "role": "we0" }} , 
 	{ "name": "dest_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_1", "role": "d0" }} , 
 	{ "name": "dest_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_2", "role": "address0" }} , 
 	{ "name": "dest_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_2", "role": "ce0" }} , 
 	{ "name": "dest_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_2", "role": "we0" }} , 
 	{ "name": "dest_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_2", "role": "d0" }} , 
 	{ "name": "dest_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_3", "role": "address0" }} , 
 	{ "name": "dest_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_3", "role": "ce0" }} , 
 	{ "name": "dest_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_3", "role": "we0" }} , 
 	{ "name": "dest_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_3", "role": "d0" }} , 
 	{ "name": "dest_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_4", "role": "address0" }} , 
 	{ "name": "dest_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_4", "role": "ce0" }} , 
 	{ "name": "dest_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_4", "role": "we0" }} , 
 	{ "name": "dest_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_4", "role": "d0" }} , 
 	{ "name": "dest_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_5", "role": "address0" }} , 
 	{ "name": "dest_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_5", "role": "ce0" }} , 
 	{ "name": "dest_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_5", "role": "we0" }} , 
 	{ "name": "dest_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_5", "role": "d0" }} , 
 	{ "name": "dest_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_6", "role": "address0" }} , 
 	{ "name": "dest_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_6", "role": "ce0" }} , 
 	{ "name": "dest_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_6", "role": "we0" }} , 
 	{ "name": "dest_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_6", "role": "d0" }} , 
 	{ "name": "dest_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_7", "role": "address0" }} , 
 	{ "name": "dest_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_7", "role": "ce0" }} , 
 	{ "name": "dest_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_7", "role": "we0" }} , 
 	{ "name": "dest_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_7", "role": "d0" }} , 
 	{ "name": "dest_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_8", "role": "address0" }} , 
 	{ "name": "dest_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_8", "role": "ce0" }} , 
 	{ "name": "dest_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_8", "role": "we0" }} , 
 	{ "name": "dest_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_8", "role": "d0" }} , 
 	{ "name": "dest_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_9", "role": "address0" }} , 
 	{ "name": "dest_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_9", "role": "ce0" }} , 
 	{ "name": "dest_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_9", "role": "we0" }} , 
 	{ "name": "dest_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_9", "role": "d0" }} , 
 	{ "name": "dest_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_10", "role": "address0" }} , 
 	{ "name": "dest_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_10", "role": "ce0" }} , 
 	{ "name": "dest_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_10", "role": "we0" }} , 
 	{ "name": "dest_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_10", "role": "d0" }} , 
 	{ "name": "dest_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_11", "role": "address0" }} , 
 	{ "name": "dest_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_11", "role": "ce0" }} , 
 	{ "name": "dest_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_11", "role": "we0" }} , 
 	{ "name": "dest_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_11", "role": "d0" }} , 
 	{ "name": "dest_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_12", "role": "address0" }} , 
 	{ "name": "dest_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_12", "role": "ce0" }} , 
 	{ "name": "dest_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_12", "role": "we0" }} , 
 	{ "name": "dest_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_12", "role": "d0" }} , 
 	{ "name": "dest_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_13", "role": "address0" }} , 
 	{ "name": "dest_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_13", "role": "ce0" }} , 
 	{ "name": "dest_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_13", "role": "we0" }} , 
 	{ "name": "dest_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_13", "role": "d0" }} , 
 	{ "name": "dest_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_14", "role": "address0" }} , 
 	{ "name": "dest_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_14", "role": "ce0" }} , 
 	{ "name": "dest_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_14", "role": "we0" }} , 
 	{ "name": "dest_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_14", "role": "d0" }} , 
 	{ "name": "dest_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_15", "role": "address0" }} , 
 	{ "name": "dest_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_15", "role": "ce0" }} , 
 	{ "name": "dest_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_15", "role": "we0" }} , 
 	{ "name": "dest_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_15", "role": "d0" }} , 
 	{ "name": "source", "direction": "in", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "source", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	{"Name" : "Latency", "Min" : "1", "Max" : "260"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "260"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	temp { ap_memory {  { temp_address0 mem_address 1 15 }  { temp_ce0 mem_ce 1 1 }  { temp_q0 mem_dout 0 512 } } }
	load_flag { ap_none {  { load_flag in_data 0 1 } } }
	dest_0 { ap_memory {  { dest_0_address0 mem_address 1 8 }  { dest_0_ce0 mem_ce 1 1 }  { dest_0_we0 mem_we 1 1 }  { dest_0_d0 mem_din 1 32 } } }
	dest_1 { ap_memory {  { dest_1_address0 mem_address 1 8 }  { dest_1_ce0 mem_ce 1 1 }  { dest_1_we0 mem_we 1 1 }  { dest_1_d0 mem_din 1 32 } } }
	dest_2 { ap_memory {  { dest_2_address0 mem_address 1 8 }  { dest_2_ce0 mem_ce 1 1 }  { dest_2_we0 mem_we 1 1 }  { dest_2_d0 mem_din 1 32 } } }
	dest_3 { ap_memory {  { dest_3_address0 mem_address 1 8 }  { dest_3_ce0 mem_ce 1 1 }  { dest_3_we0 mem_we 1 1 }  { dest_3_d0 mem_din 1 32 } } }
	dest_4 { ap_memory {  { dest_4_address0 mem_address 1 8 }  { dest_4_ce0 mem_ce 1 1 }  { dest_4_we0 mem_we 1 1 }  { dest_4_d0 mem_din 1 32 } } }
	dest_5 { ap_memory {  { dest_5_address0 mem_address 1 8 }  { dest_5_ce0 mem_ce 1 1 }  { dest_5_we0 mem_we 1 1 }  { dest_5_d0 mem_din 1 32 } } }
	dest_6 { ap_memory {  { dest_6_address0 mem_address 1 8 }  { dest_6_ce0 mem_ce 1 1 }  { dest_6_we0 mem_we 1 1 }  { dest_6_d0 mem_din 1 32 } } }
	dest_7 { ap_memory {  { dest_7_address0 mem_address 1 8 }  { dest_7_ce0 mem_ce 1 1 }  { dest_7_we0 mem_we 1 1 }  { dest_7_d0 mem_din 1 32 } } }
	dest_8 { ap_memory {  { dest_8_address0 mem_address 1 8 }  { dest_8_ce0 mem_ce 1 1 }  { dest_8_we0 mem_we 1 1 }  { dest_8_d0 mem_din 1 32 } } }
	dest_9 { ap_memory {  { dest_9_address0 mem_address 1 8 }  { dest_9_ce0 mem_ce 1 1 }  { dest_9_we0 mem_we 1 1 }  { dest_9_d0 mem_din 1 32 } } }
	dest_10 { ap_memory {  { dest_10_address0 mem_address 1 8 }  { dest_10_ce0 mem_ce 1 1 }  { dest_10_we0 mem_we 1 1 }  { dest_10_d0 mem_din 1 32 } } }
	dest_11 { ap_memory {  { dest_11_address0 mem_address 1 8 }  { dest_11_ce0 mem_ce 1 1 }  { dest_11_we0 mem_we 1 1 }  { dest_11_d0 mem_din 1 32 } } }
	dest_12 { ap_memory {  { dest_12_address0 mem_address 1 8 }  { dest_12_ce0 mem_ce 1 1 }  { dest_12_we0 mem_we 1 1 }  { dest_12_d0 mem_din 1 32 } } }
	dest_13 { ap_memory {  { dest_13_address0 mem_address 1 8 }  { dest_13_ce0 mem_ce 1 1 }  { dest_13_we0 mem_we 1 1 }  { dest_13_d0 mem_din 1 32 } } }
	dest_14 { ap_memory {  { dest_14_address0 mem_address 1 8 }  { dest_14_ce0 mem_ce 1 1 }  { dest_14_we0 mem_we 1 1 }  { dest_14_d0 mem_din 1 32 } } }
	dest_15 { ap_memory {  { dest_15_address0 mem_address 1 8 }  { dest_15_ce0 mem_ce 1 1 }  { dest_15_we0 mem_we 1 1 }  { dest_15_d0 mem_din 1 32 } } }
	source { ap_none {  { source in_data 0 21 } } }
}
