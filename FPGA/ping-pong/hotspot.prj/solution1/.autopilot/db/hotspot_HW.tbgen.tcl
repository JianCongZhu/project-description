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
	{ result int 512 regular {array 32768 { 2 3 } 2 1 }  }
	{ temp int 512 regular {array 32768 { 2 3 } 2 1 }  }
	{ power int 512 regular {array 32768 { 1 3 } 2 1 }  }
	{ Cap float 32 regular  }
	{ Rx float 32 regular  }
	{ Ry float 32 regular  }
	{ Rz float 32 regular  }
	{ dt float 32 regular  }
	{ amb_temp float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "result", "interface" : "memory", "bitwidth" : 512, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "result","cData": "int512","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "temp", "interface" : "memory", "bitwidth" : 512, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "temp","cData": "int512","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "power", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "power","cData": "int512","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Cap", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Cap","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Rx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Rx","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Ry", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Ry","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Rz", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Rz","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dt", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dt","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "amb_temp", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "amb_temp","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 25
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
	{ result_q0 sc_in sc_lv 512 signal 0 } 
	{ temp_address0 sc_out sc_lv 15 signal 1 } 
	{ temp_ce0 sc_out sc_logic 1 signal 1 } 
	{ temp_we0 sc_out sc_logic 1 signal 1 } 
	{ temp_d0 sc_out sc_lv 512 signal 1 } 
	{ temp_q0 sc_in sc_lv 512 signal 1 } 
	{ power_address0 sc_out sc_lv 15 signal 2 } 
	{ power_ce0 sc_out sc_logic 1 signal 2 } 
	{ power_q0 sc_in sc_lv 512 signal 2 } 
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
 	{ "name": "result_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "result", "role": "address0" }} , 
 	{ "name": "result_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "ce0" }} , 
 	{ "name": "result_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "we0" }} , 
 	{ "name": "result_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "result", "role": "d0" }} , 
 	{ "name": "result_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "result", "role": "q0" }} , 
 	{ "name": "temp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "temp", "role": "address0" }} , 
 	{ "name": "temp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp", "role": "ce0" }} , 
 	{ "name": "temp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp", "role": "we0" }} , 
 	{ "name": "temp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "temp", "role": "d0" }} , 
 	{ "name": "temp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "temp", "role": "q0" }} , 
 	{ "name": "power_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "power", "role": "address0" }} , 
 	{ "name": "power_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "power", "role": "ce0" }} , 
 	{ "name": "power_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "power", "role": "q0" }} , 
 	{ "name": "Cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Cap", "role": "default" }} , 
 	{ "name": "Rx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Rx", "role": "default" }} , 
 	{ "name": "Ry", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Ry", "role": "default" }} , 
 	{ "name": "Rz", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Rz", "role": "default" }} , 
 	{ "name": "dt", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dt", "role": "default" }} , 
 	{ "name": "amb_temp", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "amb_temp", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "414", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425"],
		"CDFG" : "hotspot_HW",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "111560", "EstimateLatencyMax" : "7881560",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "result", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "grp_buffer_store_fu_1333", "Port" : "result"},
					{"ID" : "414", "SubInstance" : "grp_selectLayer_fu_1274", "Port" : "temp"}]},
			{"Name" : "temp", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "grp_buffer_store_fu_1333", "Port" : "result"},
					{"ID" : "414", "SubInstance" : "grp_selectLayer_fu_1274", "Port" : "temp"}]},
			{"Name" : "power", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "417", "SubInstance" : "grp_buffer_load_fu_1358", "Port" : "temp"}]},
			{"Name" : "Cap", "Type" : "None", "Direction" : "I"},
			{"Name" : "Rx", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ry", "Type" : "None", "Direction" : "I"},
			{"Name" : "Rz", "Type" : "None", "Direction" : "I"},
			{"Name" : "dt", "Type" : "None", "Direction" : "I"},
			{"Name" : "amb_temp", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf0_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf0_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf0_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf0_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf0_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf0_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf0_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf0_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf0_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf0_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf0_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf0_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf0_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf0_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf0_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf0_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf0_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf0_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf0_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf0_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf0_5_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf0_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf0_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf0_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf0_9_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf0_10_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf0_11_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf0_12_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf0_13_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf0_14_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf0_15_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf0_0_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf0_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf0_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf0_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf0_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf0_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf0_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf0_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf0_8_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf0_9_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf0_10_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf0_11_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf0_12_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf0_13_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf0_14_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf0_15_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf0_0_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf0_1_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf0_2_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf0_3_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf0_4_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf0_5_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf0_6_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf0_7_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf0_8_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf0_9_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf0_10_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf0_11_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf0_12_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf0_13_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf0_14_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf0_15_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf0_0_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf0_1_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf0_2_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf0_3_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf0_4_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf0_5_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf0_6_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf0_7_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf0_8_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf0_9_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf0_10_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf0_11_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf0_12_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf0_13_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf0_14_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf0_15_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf1_0_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf1_1_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf1_2_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf1_3_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf1_4_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf1_5_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf1_6_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf1_7_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf1_8_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf1_9_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf1_10_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf1_11_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf1_12_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf1_13_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf1_14_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf1_15_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf1_0_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf1_1_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf1_2_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf1_3_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf1_4_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf1_5_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf1_6_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf1_7_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf1_8_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf1_9_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf1_10_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf1_11_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf1_12_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf1_13_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf1_14_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf1_15_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf1_0_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf1_1_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf1_2_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf1_3_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf1_4_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf1_5_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf1_6_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf1_7_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf1_8_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf1_9_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf1_10_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf1_11_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf1_12_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf1_13_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf1_14_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf1_15_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf1_0_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf1_1_U", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf1_2_U", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf1_3_U", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf1_4_U", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf1_5_U", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf1_6_U", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf1_7_U", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf1_8_U", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf1_9_U", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf1_10_U", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf1_11_U", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf1_12_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf1_13_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf1_14_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf1_15_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf1_0_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf1_1_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf1_2_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf1_3_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf1_4_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf1_5_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf1_6_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf1_7_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf1_8_U", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf1_9_U", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf1_10_U", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf1_11_U", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf1_12_U", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf1_13_U", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf1_14_U", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf1_15_U", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf2_0_U", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf2_1_U", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf2_2_U", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf2_3_U", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf2_4_U", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf2_5_U", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf2_6_U", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf2_7_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf2_8_U", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf2_9_U", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf2_10_U", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf2_11_U", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf2_12_U", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf2_13_U", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf2_14_U", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_buf2_15_U", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf2_0_U", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf2_1_U", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf2_2_U", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf2_3_U", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf2_4_U", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf2_5_U", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf2_6_U", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf2_7_U", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf2_8_U", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf2_9_U", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf2_10_U", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf2_11_U", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf2_12_U", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf2_13_U", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf2_14_U", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.center_buf2_15_U", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf2_0_U", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf2_1_U", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf2_2_U", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf2_3_U", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf2_4_U", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf2_5_U", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf2_6_U", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf2_7_U", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf2_8_U", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf2_9_U", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf2_10_U", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf2_11_U", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf2_12_U", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf2_13_U", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf2_14_U", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_buf2_15_U", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf2_0_U", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf2_1_U", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf2_2_U", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf2_3_U", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf2_4_U", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf2_5_U", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf2_6_U", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf2_7_U", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf2_8_U", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf2_9_U", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf2_10_U", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf2_11_U", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf2_12_U", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf2_13_U", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf2_14_U", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.power_buf2_15_U", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf2_0_U", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf2_1_U", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf2_2_U", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf2_3_U", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf2_4_U", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf2_5_U", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf2_6_U", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf2_7_U", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf2_8_U", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf2_9_U", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf2_10_U", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf2_11_U", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf2_12_U", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf2_13_U", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf2_14_U", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf2_15_U", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179", "Parent" : "0", "Child" : ["242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413"],
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
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U71", "Parent" : "241"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U72", "Parent" : "241"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U73", "Parent" : "241"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U74", "Parent" : "241"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U75", "Parent" : "241"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U76", "Parent" : "241"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U77", "Parent" : "241"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U78", "Parent" : "241"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U79", "Parent" : "241"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U80", "Parent" : "241"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U81", "Parent" : "241"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U82", "Parent" : "241"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U83", "Parent" : "241"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U84", "Parent" : "241"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U85", "Parent" : "241"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U86", "Parent" : "241"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U87", "Parent" : "241"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U88", "Parent" : "241"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U89", "Parent" : "241"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U90", "Parent" : "241"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U91", "Parent" : "241"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U92", "Parent" : "241"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U93", "Parent" : "241"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U94", "Parent" : "241"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U95", "Parent" : "241"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U96", "Parent" : "241"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U97", "Parent" : "241"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U98", "Parent" : "241"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U99", "Parent" : "241"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U100", "Parent" : "241"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U101", "Parent" : "241"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U102", "Parent" : "241"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U103", "Parent" : "241"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U104", "Parent" : "241"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U105", "Parent" : "241"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U106", "Parent" : "241"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U107", "Parent" : "241"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U108", "Parent" : "241"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U109", "Parent" : "241"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U110", "Parent" : "241"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U111", "Parent" : "241"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U112", "Parent" : "241"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U113", "Parent" : "241"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U114", "Parent" : "241"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U115", "Parent" : "241"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U116", "Parent" : "241"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U117", "Parent" : "241"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U118", "Parent" : "241"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U119", "Parent" : "241"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U120", "Parent" : "241"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U121", "Parent" : "241"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U122", "Parent" : "241"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U123", "Parent" : "241"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U124", "Parent" : "241"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U125", "Parent" : "241"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U126", "Parent" : "241"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U127", "Parent" : "241"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U128", "Parent" : "241"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U129", "Parent" : "241"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U130", "Parent" : "241"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U131", "Parent" : "241"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U132", "Parent" : "241"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U133", "Parent" : "241"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U134", "Parent" : "241"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U135", "Parent" : "241"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U136", "Parent" : "241"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U137", "Parent" : "241"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U138", "Parent" : "241"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U139", "Parent" : "241"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U140", "Parent" : "241"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U141", "Parent" : "241"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U142", "Parent" : "241"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U143", "Parent" : "241"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U144", "Parent" : "241"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U145", "Parent" : "241"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U146", "Parent" : "241"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U147", "Parent" : "241"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U148", "Parent" : "241"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U149", "Parent" : "241"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U150", "Parent" : "241"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U151", "Parent" : "241"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U152", "Parent" : "241"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U153", "Parent" : "241"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U154", "Parent" : "241"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U155", "Parent" : "241"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fadd_32ns_32ns_32_7_full_dsp_1_U156", "Parent" : "241"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U157", "Parent" : "241"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U158", "Parent" : "241"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U159", "Parent" : "241"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U160", "Parent" : "241"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U161", "Parent" : "241"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U162", "Parent" : "241"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U163", "Parent" : "241"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U164", "Parent" : "241"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U165", "Parent" : "241"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U166", "Parent" : "241"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U167", "Parent" : "241"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U168", "Parent" : "241"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U169", "Parent" : "241"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U170", "Parent" : "241"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U171", "Parent" : "241"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U172", "Parent" : "241"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U173", "Parent" : "241"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U174", "Parent" : "241"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U175", "Parent" : "241"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U176", "Parent" : "241"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U177", "Parent" : "241"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U178", "Parent" : "241"},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U179", "Parent" : "241"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U180", "Parent" : "241"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U181", "Parent" : "241"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U182", "Parent" : "241"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U183", "Parent" : "241"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U184", "Parent" : "241"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U185", "Parent" : "241"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U186", "Parent" : "241"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U187", "Parent" : "241"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U188", "Parent" : "241"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U189", "Parent" : "241"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U190", "Parent" : "241"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U191", "Parent" : "241"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U192", "Parent" : "241"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U193", "Parent" : "241"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U194", "Parent" : "241"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U195", "Parent" : "241"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U196", "Parent" : "241"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U197", "Parent" : "241"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U198", "Parent" : "241"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U199", "Parent" : "241"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U200", "Parent" : "241"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U201", "Parent" : "241"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U202", "Parent" : "241"},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U203", "Parent" : "241"},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U204", "Parent" : "241"},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U205", "Parent" : "241"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U206", "Parent" : "241"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U207", "Parent" : "241"},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U208", "Parent" : "241"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U209", "Parent" : "241"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U210", "Parent" : "241"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U211", "Parent" : "241"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U212", "Parent" : "241"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U213", "Parent" : "241"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U214", "Parent" : "241"},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U215", "Parent" : "241"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U216", "Parent" : "241"},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U217", "Parent" : "241"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U218", "Parent" : "241"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U219", "Parent" : "241"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U220", "Parent" : "241"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U221", "Parent" : "241"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U222", "Parent" : "241"},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U223", "Parent" : "241"},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U224", "Parent" : "241"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U225", "Parent" : "241"},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U226", "Parent" : "241"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U227", "Parent" : "241"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U228", "Parent" : "241"},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U229", "Parent" : "241"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U230", "Parent" : "241"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U231", "Parent" : "241"},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U232", "Parent" : "241"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U233", "Parent" : "241"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U234", "Parent" : "241"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U235", "Parent" : "241"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U236", "Parent" : "241"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U237", "Parent" : "241"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U238", "Parent" : "241"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U239", "Parent" : "241"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U240", "Parent" : "241"},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fmul_32ns_32ns_32_4_max_dsp_1_U241", "Parent" : "241"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1179.fdiv_32ns_32ns_32_12_no_dsp_1_U242", "Parent" : "241"},
	{"ID" : "414", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_selectLayer_fu_1274", "Parent" : "0", "Child" : ["415"],
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
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "temp"}]},
			{"Name" : "load_flag", "Type" : "None", "Direction" : "I"},
			{"Name" : "center_buf_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_0"}]},
			{"Name" : "center_buf_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_1"}]},
			{"Name" : "center_buf_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_2"}]},
			{"Name" : "center_buf_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_3"}]},
			{"Name" : "center_buf_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_4"}]},
			{"Name" : "center_buf_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_5"}]},
			{"Name" : "center_buf_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_6"}]},
			{"Name" : "center_buf_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_7"}]},
			{"Name" : "center_buf_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_8"}]},
			{"Name" : "center_buf_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_9"}]},
			{"Name" : "center_buf_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_10"}]},
			{"Name" : "center_buf_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_11"}]},
			{"Name" : "center_buf_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_12"}]},
			{"Name" : "center_buf_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_13"}]},
			{"Name" : "center_buf_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_14"}]},
			{"Name" : "center_buf_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_15"}]},
			{"Name" : "top_buf_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_0"}]},
			{"Name" : "top_buf_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_1"}]},
			{"Name" : "top_buf_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_2"}]},
			{"Name" : "top_buf_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_3"}]},
			{"Name" : "top_buf_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_4"}]},
			{"Name" : "top_buf_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_5"}]},
			{"Name" : "top_buf_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_6"}]},
			{"Name" : "top_buf_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_7"}]},
			{"Name" : "top_buf_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_8"}]},
			{"Name" : "top_buf_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_9"}]},
			{"Name" : "top_buf_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_10"}]},
			{"Name" : "top_buf_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_11"}]},
			{"Name" : "top_buf_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_12"}]},
			{"Name" : "top_buf_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_13"}]},
			{"Name" : "top_buf_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_14"}]},
			{"Name" : "top_buf_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_15"}]},
			{"Name" : "bottom_buf_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_0"}]},
			{"Name" : "bottom_buf_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_1"}]},
			{"Name" : "bottom_buf_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_2"}]},
			{"Name" : "bottom_buf_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_3"}]},
			{"Name" : "bottom_buf_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_4"}]},
			{"Name" : "bottom_buf_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_5"}]},
			{"Name" : "bottom_buf_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_6"}]},
			{"Name" : "bottom_buf_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_7"}]},
			{"Name" : "bottom_buf_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_8"}]},
			{"Name" : "bottom_buf_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_9"}]},
			{"Name" : "bottom_buf_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_10"}]},
			{"Name" : "bottom_buf_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_11"}]},
			{"Name" : "bottom_buf_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_12"}]},
			{"Name" : "bottom_buf_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_13"}]},
			{"Name" : "bottom_buf_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_14"}]},
			{"Name" : "bottom_buf_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_buffer_load_fu_174", "Port" : "dest_15"}]},
			{"Name" : "layer", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_selectLayer_fu_1274.grp_buffer_load_fu_174", "Parent" : "414",
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
			{"Name" : "source", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "416", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_buffer_store_fu_1333", "Parent" : "0",
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
			{"Name" : "source_15", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "417", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_buffer_load_fu_1358", "Parent" : "0",
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
			{"Name" : "source", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "418", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_12_no_dsp_1_U356", "Parent" : "0"},
	{"ID" : "419", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_12_no_dsp_1_U357", "Parent" : "0"},
	{"ID" : "420", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_2_no_dsp_1_U358", "Parent" : "0"},
	{"ID" : "421", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U359", "Parent" : "0"},
	{"ID" : "422", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U360", "Parent" : "0"},
	{"ID" : "423", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_8_full_dsp_1_U361", "Parent" : "0"},
	{"ID" : "424", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_8_max_dsp_1_U362", "Parent" : "0"},
	{"ID" : "425", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_8_max_dsp_1_U363", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hotspot_HW {
		result {Type IO LastRead 1 FirstWrite -1}
		temp {Type IO LastRead 1 FirstWrite -1}
		power {Type I LastRead 1 FirstWrite -1}
		Cap {Type I LastRead 0 FirstWrite -1}
		Rx {Type I LastRead 12 FirstWrite -1}
		Ry {Type I LastRead 12 FirstWrite -1}
		Rz {Type I LastRead 20 FirstWrite -1}
		dt {Type I LastRead 0 FirstWrite -1}
		amb_temp {Type I LastRead 59 FirstWrite -1}}
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
		amb_temp {Type I LastRead 0 FirstWrite -1}}
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
		source {Type I LastRead 0 FirstWrite -1}}
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
		source_15 {Type I LastRead 1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "111560", "Max" : "7881560"}
	, {"Name" : "Interval", "Min" : "111561", "Max" : "7881561"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	result { ap_memory {  { result_address0 mem_address 1 15 }  { result_ce0 mem_ce 1 1 }  { result_we0 mem_we 1 1 }  { result_d0 mem_din 1 512 }  { result_q0 mem_dout 0 512 } } }
	temp { ap_memory {  { temp_address0 mem_address 1 15 }  { temp_ce0 mem_ce 1 1 }  { temp_we0 mem_we 1 1 }  { temp_d0 mem_din 1 512 }  { temp_q0 mem_dout 0 512 } } }
	power { ap_memory {  { power_address0 mem_address 1 15 }  { power_ce0 mem_ce 1 1 }  { power_q0 mem_dout 0 512 } } }
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
	{ result 2 }
	{ temp 2 }
	{ power 2 }
}
