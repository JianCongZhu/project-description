set moduleName hotspot_HW
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {hotspot_HW}
set C_modelType { void 0 }
set C_modelArgList {
	{ result int 32 regular {pointer 1}  }
	{ temp int 32 regular {pointer 2}  }
	{ power int 32 regular {pointer 0}  }
	{ Cap float 32 regular  }
	{ Rx float 32 regular  }
	{ Ry float 32 regular  }
	{ Rz float 32 regular  }
	{ dt float 32 regular  }
	{ amb_temp float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "result", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "result","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "temp", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "temp","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "power", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "power","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Cap", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Cap","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Rx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Rx","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Ry", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Ry","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Rz", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Rz","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dt", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dt","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "amb_temp", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "amb_temp","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ result sc_out sc_lv 32 signal 0 } 
	{ result_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ temp_i sc_in sc_lv 32 signal 1 } 
	{ temp_o sc_out sc_lv 32 signal 1 } 
	{ temp_o_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ power sc_in sc_lv 32 signal 2 } 
	{ Cap sc_in sc_lv 32 signal 3 } 
	{ Rx sc_in sc_lv 32 signal 4 } 
	{ Ry sc_in sc_lv 32 signal 5 } 
	{ Rz sc_in sc_lv 32 signal 6 } 
	{ dt sc_in sc_lv 32 signal 7 } 
	{ amb_temp sc_in sc_lv 32 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "result", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result", "role": "default" }} , 
 	{ "name": "result_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "result", "role": "ap_vld" }} , 
 	{ "name": "temp_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp", "role": "i" }} , 
 	{ "name": "temp_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp", "role": "o" }} , 
 	{ "name": "temp_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp", "role": "o_ap_vld" }} , 
 	{ "name": "power", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "power", "role": "default" }} , 
 	{ "name": "Cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Cap", "role": "default" }} , 
 	{ "name": "Rx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Rx", "role": "default" }} , 
 	{ "name": "Ry", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Ry", "role": "default" }} , 
 	{ "name": "Rz", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Rz", "role": "default" }} , 
 	{ "name": "dt", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dt", "role": "default" }} , 
 	{ "name": "amb_temp", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "amb_temp", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "14", "15", "16", "17", "18", "19", "20", "21"],
		"CDFG" : "hotspot_HW",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "262837560", "EstimateLatencyMax" : "262837560",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "result", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "power", "Type" : "None", "Direction" : "I"},
			{"Name" : "Cap", "Type" : "None", "Direction" : "I"},
			{"Name" : "Rx", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ry", "Type" : "None", "Direction" : "I"},
			{"Name" : "Rz", "Type" : "None", "Direction" : "I"},
			{"Name" : "dt", "Type" : "None", "Direction" : "I"},
			{"Name" : "amb_temp", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_821", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12", "13"],
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_821.fadd_32ns_32ns_32_7_full_dsp_1_U1", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_821.fadd_32ns_32ns_32_7_full_dsp_1_U2", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_821.fadd_32ns_32ns_32_7_full_dsp_1_U3", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_821.fmul_32ns_32ns_32_4_max_dsp_1_U4", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_821.fmul_32ns_32ns_32_4_max_dsp_1_U5", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_821.fmul_32ns_32ns_32_4_max_dsp_1_U6", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_821.fdiv_32ns_32ns_32_12_no_dsp_1_U7", "Parent" : "6"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_12_no_dsp_1_U26", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_12_no_dsp_1_U27", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_2_no_dsp_1_U28", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U29", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U30", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_8_full_dsp_1_U31", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_8_max_dsp_1_U32", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_8_max_dsp_1_U33", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hotspot_HW {
		result {Type O LastRead -1 FirstWrite 72}
		temp {Type IO LastRead 60 FirstWrite 73}
		power {Type I LastRead 59 FirstWrite -1}
		Cap {Type I LastRead 0 FirstWrite -1}
		Rx {Type I LastRead 12 FirstWrite -1}
		Ry {Type I LastRead 12 FirstWrite -1}
		Rz {Type I LastRead 20 FirstWrite -1}
		dt {Type I LastRead 0 FirstWrite -1}
		amb_temp {Type I LastRead 59 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "262837560", "Max" : "262837560"}
	, {"Name" : "Interval", "Min" : "262837561", "Max" : "262837561"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "10", "EnableSignal" : "ap_enable_pp10"}
	{"Pipeline" : "21", "EnableSignal" : "ap_enable_pp21"}
]}

set Spec2ImplPortList { 
	result { ap_vld {  { result out_data 1 32 }  { result_ap_vld out_vld 1 1 } } }
	temp { ap_ovld {  { temp_i in_data 0 32 }  { temp_o out_data 1 32 }  { temp_o_ap_vld out_vld 1 1 } } }
	power { ap_none {  { power in_data 0 32 } } }
	Cap { ap_none {  { Cap in_data 0 32 } } }
	Rx { ap_none {  { Rx in_data 0 32 } } }
	Ry { ap_none {  { Ry in_data 0 32 } } }
	Rz { ap_none {  { Rz in_data 0 32 } } }
	dt { ap_none {  { dt in_data 0 32 } } }
	amb_temp { ap_none {  { amb_temp in_data 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
