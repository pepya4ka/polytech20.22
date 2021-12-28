set moduleName gauss_blur
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {gauss_blur}
set C_modelType { void 0 }
set C_modelArgList {
	{ inImage int 8 regular {fifo 0 volatile }  }
	{ gauss_kernel int 8 regular {array 9 { 1 3 } 1 1 }  }
	{ outImage int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inImage", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inImage","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 1919,"step" : 1},{"low" : 0,"up" : 1079,"step" : 1}]}]}]} , 
 	{ "Name" : "gauss_kernel", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "gauss_kernel","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "outImage", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outImage","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 1919,"step" : 1},{"low" : 0,"up" : 1079,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inImage_dout sc_in sc_lv 8 signal 0 } 
	{ inImage_empty_n sc_in sc_logic 1 signal 0 } 
	{ inImage_read sc_out sc_logic 1 signal 0 } 
	{ gauss_kernel_address0 sc_out sc_lv 4 signal 1 } 
	{ gauss_kernel_ce0 sc_out sc_logic 1 signal 1 } 
	{ gauss_kernel_q0 sc_in sc_lv 8 signal 1 } 
	{ outImage_din sc_out sc_lv 8 signal 2 } 
	{ outImage_full_n sc_in sc_logic 1 signal 2 } 
	{ outImage_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inImage_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inImage", "role": "dout" }} , 
 	{ "name": "inImage_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inImage", "role": "empty_n" }} , 
 	{ "name": "inImage_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inImage", "role": "read" }} , 
 	{ "name": "gauss_kernel_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gauss_kernel", "role": "address0" }} , 
 	{ "name": "gauss_kernel_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gauss_kernel", "role": "ce0" }} , 
 	{ "name": "gauss_kernel_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gauss_kernel", "role": "q0" }} , 
 	{ "name": "outImage_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outImage", "role": "din" }} , 
 	{ "name": "outImage_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outImage", "role": "full_n" }} , 
 	{ "name": "outImage_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outImage", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "gauss_blur",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2076643", "EstimateLatencyMax" : "2076643",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "inImage", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inImage_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gauss_kernel", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outImage", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outImage_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.part_buffer_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.part_buffer_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gauss_blur_mac_mudEe_U1", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gauss_blur_mac_mudEe_U2", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gauss_blur_mac_mudEe_U3", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gauss_blur_mac_mudEe_U4", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gauss_blur_mac_mueOg_U5", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gauss_blur {
		inImage {Type I LastRead 3 FirstWrite -1}
		gauss_kernel {Type I LastRead 2 FirstWrite -1}
		outImage {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2076643", "Max" : "2076643"}
	, {"Name" : "Interval", "Min" : "2076644", "Max" : "2076644"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	inImage { ap_fifo {  { inImage_dout fifo_data 0 8 }  { inImage_empty_n fifo_status 0 1 }  { inImage_read fifo_update 1 1 } } }
	gauss_kernel { ap_memory {  { gauss_kernel_address0 mem_address 1 4 }  { gauss_kernel_ce0 mem_ce 1 1 }  { gauss_kernel_q0 mem_dout 0 8 } } }
	outImage { ap_fifo {  { outImage_din fifo_data 1 8 }  { outImage_full_n fifo_status 0 1 }  { outImage_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	inImage { fifo_read 2076601 has_conditional }
	outImage { fifo_write 4153202 has_conditional }
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
