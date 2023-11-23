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
	{ result_buf float 32 regular {array 4096 { 0 3 } 0 1 }  }
	{ center_buf float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ top_buf float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ bottom_buf float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ power_buf float 32 regular {array 4096 { 1 3 } 1 1 }  }
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
	{ "Name" : "result_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "center_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "power_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
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
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ result_buf_address0 sc_out sc_lv 12 signal 0 } 
	{ result_buf_ce0 sc_out sc_logic 1 signal 0 } 
	{ result_buf_we0 sc_out sc_logic 1 signal 0 } 
	{ result_buf_d0 sc_out sc_lv 32 signal 0 } 
	{ center_buf_address0 sc_out sc_lv 12 signal 1 } 
	{ center_buf_ce0 sc_out sc_logic 1 signal 1 } 
	{ center_buf_q0 sc_in sc_lv 32 signal 1 } 
	{ center_buf_address1 sc_out sc_lv 12 signal 1 } 
	{ center_buf_ce1 sc_out sc_logic 1 signal 1 } 
	{ center_buf_q1 sc_in sc_lv 32 signal 1 } 
	{ top_buf_address0 sc_out sc_lv 12 signal 2 } 
	{ top_buf_ce0 sc_out sc_logic 1 signal 2 } 
	{ top_buf_q0 sc_in sc_lv 32 signal 2 } 
	{ bottom_buf_address0 sc_out sc_lv 12 signal 3 } 
	{ bottom_buf_ce0 sc_out sc_logic 1 signal 3 } 
	{ bottom_buf_q0 sc_in sc_lv 32 signal 3 } 
	{ power_buf_address0 sc_out sc_lv 12 signal 4 } 
	{ power_buf_ce0 sc_out sc_logic 1 signal 4 } 
	{ power_buf_q0 sc_in sc_lv 32 signal 4 } 
	{ cc sc_in sc_lv 32 signal 5 } 
	{ cn sc_in sc_lv 32 signal 6 } 
	{ cs sc_in sc_lv 32 signal 7 } 
	{ ce_r sc_in sc_lv 32 signal 8 } 
	{ cw sc_in sc_lv 32 signal 9 } 
	{ ct sc_in sc_lv 32 signal 10 } 
	{ cb sc_in sc_lv 32 signal 11 } 
	{ Cap sc_in sc_lv 32 signal 12 } 
	{ dt sc_in sc_lv 32 signal 13 } 
	{ amb_temp sc_in sc_lv 32 signal 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "result_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "result_buf", "role": "address0" }} , 
 	{ "name": "result_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf", "role": "ce0" }} , 
 	{ "name": "result_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf", "role": "we0" }} , 
 	{ "name": "result_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf", "role": "d0" }} , 
 	{ "name": "center_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "center_buf", "role": "address0" }} , 
 	{ "name": "center_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf", "role": "ce0" }} , 
 	{ "name": "center_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf", "role": "q0" }} , 
 	{ "name": "center_buf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "center_buf", "role": "address1" }} , 
 	{ "name": "center_buf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "center_buf", "role": "ce1" }} , 
 	{ "name": "center_buf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "center_buf", "role": "q1" }} , 
 	{ "name": "top_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "top_buf", "role": "address0" }} , 
 	{ "name": "top_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_buf", "role": "ce0" }} , 
 	{ "name": "top_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_buf", "role": "q0" }} , 
 	{ "name": "bottom_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bottom_buf", "role": "address0" }} , 
 	{ "name": "bottom_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_buf", "role": "ce0" }} , 
 	{ "name": "bottom_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_buf", "role": "q0" }} , 
 	{ "name": "power_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "power_buf", "role": "address0" }} , 
 	{ "name": "power_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power_buf", "role": "ce0" }} , 
 	{ "name": "power_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power_buf", "role": "q0" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "compute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12362", "EstimateLatencyMax" : "12362",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "result_buf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "center_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bottom_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "power_buf", "Type" : "Memory", "Direction" : "I"},
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_12_no_dsp_1_U7", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute {
		result_buf {Type O LastRead -1 FirstWrite 76}
		center_buf {Type I LastRead 16 FirstWrite -1}
		top_buf {Type I LastRead 13 FirstWrite -1}
		bottom_buf {Type I LastRead 13 FirstWrite -1}
		power_buf {Type I LastRead 13 FirstWrite -1}
		cc {Type I LastRead 11 FirstWrite -1}
		cn {Type I LastRead 11 FirstWrite -1}
		cs {Type I LastRead 11 FirstWrite -1}
		ce_r {Type I LastRead 11 FirstWrite -1}
		cw {Type I LastRead 11 FirstWrite -1}
		ct {Type I LastRead 8 FirstWrite -1}
		cb {Type I LastRead 11 FirstWrite -1}
		Cap {Type I LastRead 0 FirstWrite -1}
		dt {Type I LastRead 0 FirstWrite -1}
		amb_temp {Type I LastRead 8 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12362", "Max" : "12362"}
	, {"Name" : "Interval", "Min" : "12362", "Max" : "12362"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	result_buf { ap_memory {  { result_buf_address0 mem_address 1 12 }  { result_buf_ce0 mem_ce 1 1 }  { result_buf_we0 mem_we 1 1 }  { result_buf_d0 mem_din 1 32 } } }
	center_buf { ap_memory {  { center_buf_address0 mem_address 1 12 }  { center_buf_ce0 mem_ce 1 1 }  { center_buf_q0 mem_dout 0 32 }  { center_buf_address1 MemPortADDR2 1 12 }  { center_buf_ce1 MemPortCE2 1 1 }  { center_buf_q1 MemPortDOUT2 0 32 } } }
	top_buf { ap_memory {  { top_buf_address0 mem_address 1 12 }  { top_buf_ce0 mem_ce 1 1 }  { top_buf_q0 mem_dout 0 32 } } }
	bottom_buf { ap_memory {  { bottom_buf_address0 mem_address 1 12 }  { bottom_buf_ce0 mem_ce 1 1 }  { bottom_buf_q0 mem_dout 0 32 } } }
	power_buf { ap_memory {  { power_buf_address0 mem_address 1 12 }  { power_buf_ce0 mem_ce 1 1 }  { power_buf_q0 mem_dout 0 32 } } }
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
