set moduleName buffer_store
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
set C_modelName {buffer_store}
set C_modelType { void 0 }
set C_modelArgList {
	{ result int 512 regular {array 32768 { 0 3 } 0 1 }  }
	{ store_flag int 1 regular  }
	{ dest int 20 regular  }
	{ source_0 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ source_1 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ source_2 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ source_3 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ source_4 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ source_5 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ source_6 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ source_7 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ source_8 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ source_9 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ source_10 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ source_11 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ source_12 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ source_13 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ source_14 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ source_15 float 32 regular {array 256 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "result", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "store_flag", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "dest", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "source_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "source_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "source_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "source_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "source_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "source_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "source_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "source_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "source_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "source_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "source_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "source_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "source_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "source_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "source_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "source_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 60
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ result_address0 sc_out sc_lv 15 signal 0 } 
	{ result_ce0 sc_out sc_logic 1 signal 0 } 
	{ result_we0 sc_out sc_logic 1 signal 0 } 
	{ result_d0 sc_out sc_lv 512 signal 0 } 
	{ store_flag sc_in sc_lv 1 signal 1 } 
	{ dest sc_in sc_lv 20 signal 2 } 
	{ source_0_address0 sc_out sc_lv 8 signal 3 } 
	{ source_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ source_0_q0 sc_in sc_lv 32 signal 3 } 
	{ source_1_address0 sc_out sc_lv 8 signal 4 } 
	{ source_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ source_1_q0 sc_in sc_lv 32 signal 4 } 
	{ source_2_address0 sc_out sc_lv 8 signal 5 } 
	{ source_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ source_2_q0 sc_in sc_lv 32 signal 5 } 
	{ source_3_address0 sc_out sc_lv 8 signal 6 } 
	{ source_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ source_3_q0 sc_in sc_lv 32 signal 6 } 
	{ source_4_address0 sc_out sc_lv 8 signal 7 } 
	{ source_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ source_4_q0 sc_in sc_lv 32 signal 7 } 
	{ source_5_address0 sc_out sc_lv 8 signal 8 } 
	{ source_5_ce0 sc_out sc_logic 1 signal 8 } 
	{ source_5_q0 sc_in sc_lv 32 signal 8 } 
	{ source_6_address0 sc_out sc_lv 8 signal 9 } 
	{ source_6_ce0 sc_out sc_logic 1 signal 9 } 
	{ source_6_q0 sc_in sc_lv 32 signal 9 } 
	{ source_7_address0 sc_out sc_lv 8 signal 10 } 
	{ source_7_ce0 sc_out sc_logic 1 signal 10 } 
	{ source_7_q0 sc_in sc_lv 32 signal 10 } 
	{ source_8_address0 sc_out sc_lv 8 signal 11 } 
	{ source_8_ce0 sc_out sc_logic 1 signal 11 } 
	{ source_8_q0 sc_in sc_lv 32 signal 11 } 
	{ source_9_address0 sc_out sc_lv 8 signal 12 } 
	{ source_9_ce0 sc_out sc_logic 1 signal 12 } 
	{ source_9_q0 sc_in sc_lv 32 signal 12 } 
	{ source_10_address0 sc_out sc_lv 8 signal 13 } 
	{ source_10_ce0 sc_out sc_logic 1 signal 13 } 
	{ source_10_q0 sc_in sc_lv 32 signal 13 } 
	{ source_11_address0 sc_out sc_lv 8 signal 14 } 
	{ source_11_ce0 sc_out sc_logic 1 signal 14 } 
	{ source_11_q0 sc_in sc_lv 32 signal 14 } 
	{ source_12_address0 sc_out sc_lv 8 signal 15 } 
	{ source_12_ce0 sc_out sc_logic 1 signal 15 } 
	{ source_12_q0 sc_in sc_lv 32 signal 15 } 
	{ source_13_address0 sc_out sc_lv 8 signal 16 } 
	{ source_13_ce0 sc_out sc_logic 1 signal 16 } 
	{ source_13_q0 sc_in sc_lv 32 signal 16 } 
	{ source_14_address0 sc_out sc_lv 8 signal 17 } 
	{ source_14_ce0 sc_out sc_logic 1 signal 17 } 
	{ source_14_q0 sc_in sc_lv 32 signal 17 } 
	{ source_15_address0 sc_out sc_lv 8 signal 18 } 
	{ source_15_ce0 sc_out sc_logic 1 signal 18 } 
	{ source_15_q0 sc_in sc_lv 32 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "result_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "result", "role": "address0" }} , 
 	{ "name": "result_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "ce0" }} , 
 	{ "name": "result_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "we0" }} , 
 	{ "name": "result_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "result", "role": "d0" }} , 
 	{ "name": "store_flag", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "store_flag", "role": "default" }} , 
 	{ "name": "dest", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "dest", "role": "default" }} , 
 	{ "name": "source_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_0", "role": "address0" }} , 
 	{ "name": "source_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_0", "role": "ce0" }} , 
 	{ "name": "source_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "source_0", "role": "q0" }} , 
 	{ "name": "source_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_1", "role": "address0" }} , 
 	{ "name": "source_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_1", "role": "ce0" }} , 
 	{ "name": "source_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "source_1", "role": "q0" }} , 
 	{ "name": "source_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_2", "role": "address0" }} , 
 	{ "name": "source_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_2", "role": "ce0" }} , 
 	{ "name": "source_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "source_2", "role": "q0" }} , 
 	{ "name": "source_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_3", "role": "address0" }} , 
 	{ "name": "source_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_3", "role": "ce0" }} , 
 	{ "name": "source_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "source_3", "role": "q0" }} , 
 	{ "name": "source_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_4", "role": "address0" }} , 
 	{ "name": "source_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_4", "role": "ce0" }} , 
 	{ "name": "source_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "source_4", "role": "q0" }} , 
 	{ "name": "source_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_5", "role": "address0" }} , 
 	{ "name": "source_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_5", "role": "ce0" }} , 
 	{ "name": "source_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "source_5", "role": "q0" }} , 
 	{ "name": "source_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_6", "role": "address0" }} , 
 	{ "name": "source_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_6", "role": "ce0" }} , 
 	{ "name": "source_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "source_6", "role": "q0" }} , 
 	{ "name": "source_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_7", "role": "address0" }} , 
 	{ "name": "source_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_7", "role": "ce0" }} , 
 	{ "name": "source_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "source_7", "role": "q0" }} , 
 	{ "name": "source_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_8", "role": "address0" }} , 
 	{ "name": "source_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_8", "role": "ce0" }} , 
 	{ "name": "source_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "source_8", "role": "q0" }} , 
 	{ "name": "source_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_9", "role": "address0" }} , 
 	{ "name": "source_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_9", "role": "ce0" }} , 
 	{ "name": "source_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "source_9", "role": "q0" }} , 
 	{ "name": "source_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_10", "role": "address0" }} , 
 	{ "name": "source_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_10", "role": "ce0" }} , 
 	{ "name": "source_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "source_10", "role": "q0" }} , 
 	{ "name": "source_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_11", "role": "address0" }} , 
 	{ "name": "source_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_11", "role": "ce0" }} , 
 	{ "name": "source_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "source_11", "role": "q0" }} , 
 	{ "name": "source_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_12", "role": "address0" }} , 
 	{ "name": "source_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_12", "role": "ce0" }} , 
 	{ "name": "source_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "source_12", "role": "q0" }} , 
 	{ "name": "source_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_13", "role": "address0" }} , 
 	{ "name": "source_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_13", "role": "ce0" }} , 
 	{ "name": "source_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "source_13", "role": "q0" }} , 
 	{ "name": "source_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_14", "role": "address0" }} , 
 	{ "name": "source_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_14", "role": "ce0" }} , 
 	{ "name": "source_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "source_14", "role": "q0" }} , 
 	{ "name": "source_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_15", "role": "address0" }} , 
 	{ "name": "source_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_15", "role": "ce0" }} , 
 	{ "name": "source_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "source_15", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "buffer_store",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "result", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "store_flag", "Type" : "None", "Direction" : "I"},
			{"Name" : "dest", "Type" : "None", "Direction" : "I"},
			{"Name" : "source_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "source_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "source_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "source_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "source_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "source_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "source_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "source_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "source_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "source_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "source_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "source_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "source_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "source_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "source_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "source_15", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	buffer_store {
		result {Type O LastRead -1 FirstWrite 3}
		store_flag {Type I LastRead 0 FirstWrite -1}
		dest {Type I LastRead 0 FirstWrite -1}
		source_0 {Type I LastRead 1 FirstWrite -1}
		source_1 {Type I LastRead 1 FirstWrite -1}
		source_2 {Type I LastRead 1 FirstWrite -1}
		source_3 {Type I LastRead 1 FirstWrite -1}
		source_4 {Type I LastRead 1 FirstWrite -1}
		source_5 {Type I LastRead 1 FirstWrite -1}
		source_6 {Type I LastRead 1 FirstWrite -1}
		source_7 {Type I LastRead 1 FirstWrite -1}
		source_8 {Type I LastRead 1 FirstWrite -1}
		source_9 {Type I LastRead 1 FirstWrite -1}
		source_10 {Type I LastRead 1 FirstWrite -1}
		source_11 {Type I LastRead 1 FirstWrite -1}
		source_12 {Type I LastRead 1 FirstWrite -1}
		source_13 {Type I LastRead 1 FirstWrite -1}
		source_14 {Type I LastRead 1 FirstWrite -1}
		source_15 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "259"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "259"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	result { ap_memory {  { result_address0 mem_address 1 15 }  { result_ce0 mem_ce 1 1 }  { result_we0 mem_we 1 1 }  { result_d0 mem_din 1 512 } } }
	store_flag { ap_none {  { store_flag in_data 0 1 } } }
	dest { ap_none {  { dest in_data 0 20 } } }
	source_0 { ap_memory {  { source_0_address0 mem_address 1 8 }  { source_0_ce0 mem_ce 1 1 }  { source_0_q0 mem_dout 0 32 } } }
	source_1 { ap_memory {  { source_1_address0 mem_address 1 8 }  { source_1_ce0 mem_ce 1 1 }  { source_1_q0 mem_dout 0 32 } } }
	source_2 { ap_memory {  { source_2_address0 mem_address 1 8 }  { source_2_ce0 mem_ce 1 1 }  { source_2_q0 mem_dout 0 32 } } }
	source_3 { ap_memory {  { source_3_address0 mem_address 1 8 }  { source_3_ce0 mem_ce 1 1 }  { source_3_q0 mem_dout 0 32 } } }
	source_4 { ap_memory {  { source_4_address0 mem_address 1 8 }  { source_4_ce0 mem_ce 1 1 }  { source_4_q0 mem_dout 0 32 } } }
	source_5 { ap_memory {  { source_5_address0 mem_address 1 8 }  { source_5_ce0 mem_ce 1 1 }  { source_5_q0 mem_dout 0 32 } } }
	source_6 { ap_memory {  { source_6_address0 mem_address 1 8 }  { source_6_ce0 mem_ce 1 1 }  { source_6_q0 mem_dout 0 32 } } }
	source_7 { ap_memory {  { source_7_address0 mem_address 1 8 }  { source_7_ce0 mem_ce 1 1 }  { source_7_q0 mem_dout 0 32 } } }
	source_8 { ap_memory {  { source_8_address0 mem_address 1 8 }  { source_8_ce0 mem_ce 1 1 }  { source_8_q0 mem_dout 0 32 } } }
	source_9 { ap_memory {  { source_9_address0 mem_address 1 8 }  { source_9_ce0 mem_ce 1 1 }  { source_9_q0 mem_dout 0 32 } } }
	source_10 { ap_memory {  { source_10_address0 mem_address 1 8 }  { source_10_ce0 mem_ce 1 1 }  { source_10_q0 mem_dout 0 32 } } }
	source_11 { ap_memory {  { source_11_address0 mem_address 1 8 }  { source_11_ce0 mem_ce 1 1 }  { source_11_q0 mem_dout 0 32 } } }
	source_12 { ap_memory {  { source_12_address0 mem_address 1 8 }  { source_12_ce0 mem_ce 1 1 }  { source_12_q0 mem_dout 0 32 } } }
	source_13 { ap_memory {  { source_13_address0 mem_address 1 8 }  { source_13_ce0 mem_ce 1 1 }  { source_13_q0 mem_dout 0 32 } } }
	source_14 { ap_memory {  { source_14_address0 mem_address 1 8 }  { source_14_ce0 mem_ce 1 1 }  { source_14_q0 mem_dout 0 32 } } }
	source_15 { ap_memory {  { source_15_address0 mem_address 1 8 }  { source_15_ce0 mem_ce 1 1 }  { source_15_q0 mem_dout 0 32 } } }
}
