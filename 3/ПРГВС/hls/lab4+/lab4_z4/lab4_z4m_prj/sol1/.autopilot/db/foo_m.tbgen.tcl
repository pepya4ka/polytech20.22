set moduleName foo_m
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {foo_m}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_in int 32 regular {array 16384 { 1 3 } 1 1 }  }
	{ scale int 32 regular {array 3 { 1 1 } 1 1 }  }
	{ data_out int 32 regular {array 16384 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_in", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_in","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 16383,"step" : 1}]}]}]} , 
 	{ "Name" : "scale", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "scale","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 16383,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ data_in_address0 sc_out sc_lv 14 signal 0 } 
	{ data_in_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_in_d0 sc_out sc_lv 32 signal 0 } 
	{ data_in_q0 sc_in sc_lv 32 signal 0 } 
	{ data_in_we0 sc_out sc_logic 1 signal 0 } 
	{ data_in_address1 sc_out sc_lv 14 signal 0 } 
	{ data_in_ce1 sc_out sc_logic 1 signal 0 } 
	{ data_in_d1 sc_out sc_lv 32 signal 0 } 
	{ data_in_q1 sc_in sc_lv 32 signal 0 } 
	{ data_in_we1 sc_out sc_logic 1 signal 0 } 
	{ scale_address0 sc_out sc_lv 2 signal 1 } 
	{ scale_ce0 sc_out sc_logic 1 signal 1 } 
	{ scale_d0 sc_out sc_lv 32 signal 1 } 
	{ scale_q0 sc_in sc_lv 32 signal 1 } 
	{ scale_we0 sc_out sc_logic 1 signal 1 } 
	{ scale_address1 sc_out sc_lv 2 signal 1 } 
	{ scale_ce1 sc_out sc_logic 1 signal 1 } 
	{ scale_d1 sc_out sc_lv 32 signal 1 } 
	{ scale_q1 sc_in sc_lv 32 signal 1 } 
	{ scale_we1 sc_out sc_logic 1 signal 1 } 
	{ data_out_address0 sc_out sc_lv 14 signal 2 } 
	{ data_out_ce0 sc_out sc_logic 1 signal 2 } 
	{ data_out_d0 sc_out sc_lv 32 signal 2 } 
	{ data_out_q0 sc_in sc_lv 32 signal 2 } 
	{ data_out_we0 sc_out sc_logic 1 signal 2 } 
	{ data_out_address1 sc_out sc_lv 14 signal 2 } 
	{ data_out_ce1 sc_out sc_logic 1 signal 2 } 
	{ data_out_d1 sc_out sc_lv 32 signal 2 } 
	{ data_out_q1 sc_in sc_lv 32 signal 2 } 
	{ data_out_we1 sc_out sc_logic 1 signal 2 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "data_in_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_in", "role": "address0" }} , 
 	{ "name": "data_in_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in", "role": "ce0" }} , 
 	{ "name": "data_in_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in", "role": "d0" }} , 
 	{ "name": "data_in_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in", "role": "q0" }} , 
 	{ "name": "data_in_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in", "role": "we0" }} , 
 	{ "name": "data_in_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_in", "role": "address1" }} , 
 	{ "name": "data_in_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in", "role": "ce1" }} , 
 	{ "name": "data_in_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in", "role": "d1" }} , 
 	{ "name": "data_in_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in", "role": "q1" }} , 
 	{ "name": "data_in_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in", "role": "we1" }} , 
 	{ "name": "scale_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scale", "role": "address0" }} , 
 	{ "name": "scale_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale", "role": "ce0" }} , 
 	{ "name": "scale_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "scale", "role": "d0" }} , 
 	{ "name": "scale_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "scale", "role": "q0" }} , 
 	{ "name": "scale_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale", "role": "we0" }} , 
 	{ "name": "scale_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scale", "role": "address1" }} , 
 	{ "name": "scale_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale", "role": "ce1" }} , 
 	{ "name": "scale_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "scale", "role": "d1" }} , 
 	{ "name": "scale_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "scale", "role": "q1" }} , 
 	{ "name": "scale_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale", "role": "we1" }} , 
 	{ "name": "data_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_out", "role": "address0" }} , 
 	{ "name": "data_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out", "role": "ce0" }} , 
 	{ "name": "data_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out", "role": "d0" }} , 
 	{ "name": "data_out_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out", "role": "q0" }} , 
 	{ "name": "data_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out", "role": "we0" }} , 
 	{ "name": "data_out_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_out", "role": "address1" }} , 
 	{ "name": "data_out_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out", "role": "ce1" }} , 
 	{ "name": "data_out_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out", "role": "d1" }} , 
 	{ "name": "data_out_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out", "role": "q1" }} , 
 	{ "name": "data_out_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out", "role": "we1" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
		"CDFG" : "foo_m",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49167", "EstimateLatencyMax" : "49167",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "5", "Name" : "Block_codeRepl8_proc_U0", "ReadyCount" : "Block_codeRepl8_proc_U0_ap_ready_count"},
			{"ID" : "6", "Name" : "Loop_Loop1_proc_U0", "ReadyCount" : "Loop_Loop1_proc_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "8", "Name" : "Loop_Loop3_proc_U0"}],
		"Port" : [
			{"Name" : "data_in", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "Loop_Loop1_proc_U0", "Port" : "data_in"}]},
			{"Name" : "scale", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "Block_codeRepl8_proc_U0", "Port" : "scale"}]},
			{"Name" : "data_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "Loop_Loop3_proc_U0", "Port" : "data_out"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp3_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp4_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl8_proc_U0", "Parent" : "0",
		"CDFG" : "Block_codeRepl8_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "scale", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp3_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "9",
				"BlockSignal" : [
					{"Name" : "tmp3_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_Loop1_proc_U0", "Parent" : "0",
		"CDFG" : "Loop_Loop1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16388", "EstimateLatencyMax" : "16388",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "10"},
			{"Name" : "temp1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "11"},
			{"Name" : "temp2", "Type" : "Memory", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "2"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_Loop2_proc_U0", "Parent" : "0",
		"CDFG" : "Loop_Loop2_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16388", "EstimateLatencyMax" : "16388",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "1"},
			{"Name" : "tmp3_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "9",
				"BlockSignal" : [
					{"Name" : "tmp3_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "3"},
			{"Name" : "temp2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "2"},
			{"Name" : "temp4", "Type" : "Memory", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "4"}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_Loop3_proc_U0", "Parent" : "0",
		"CDFG" : "Loop_Loop3_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16386", "EstimateLatencyMax" : "16386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp4", "Type" : "Memory", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "4"},
			{"Name" : "temp3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "3"},
			{"Name" : "data_out", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp3_loc_c_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp1_loc_channel_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp2_loc_channel_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	foo_m {
		data_in {Type I LastRead 1 FirstWrite -1}
		scale {Type I LastRead 2 FirstWrite -1}
		data_out {Type O LastRead -1 FirstWrite 2}}
	Block_codeRepl8_proc {
		scale {Type I LastRead 2 FirstWrite -1}
		tmp3_out_out {Type O LastRead -1 FirstWrite 2}}
	Loop_Loop1_proc {
		data_in {Type I LastRead 1 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		temp1 {Type O LastRead -1 FirstWrite 4}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		temp2 {Type O LastRead -1 FirstWrite 4}}
	Loop_Loop2_proc {
		temp1 {Type I LastRead 1 FirstWrite -1}
		tmp3_loc {Type I LastRead 0 FirstWrite -1}
		temp3 {Type O LastRead -1 FirstWrite 4}
		temp2 {Type I LastRead 1 FirstWrite -1}
		temp4 {Type O LastRead -1 FirstWrite 2}}
	Loop_Loop3_proc {
		temp4 {Type I LastRead 1 FirstWrite -1}
		temp3 {Type I LastRead 1 FirstWrite -1}
		data_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "49167", "Max" : "49167"}
	, {"Name" : "Interval", "Min" : "16389", "Max" : "16389"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_in { ap_memory {  { data_in_address0 mem_address 1 14 }  { data_in_ce0 mem_ce 1 1 }  { data_in_d0 mem_din 1 32 }  { data_in_q0 mem_dout 0 32 }  { data_in_we0 mem_we 1 1 }  { data_in_address1 mem_address 1 14 }  { data_in_ce1 mem_ce 1 1 }  { data_in_d1 mem_din 1 32 }  { data_in_q1 mem_dout 0 32 }  { data_in_we1 mem_we 1 1 } } }
	scale { ap_memory {  { scale_address0 mem_address 1 2 }  { scale_ce0 mem_ce 1 1 }  { scale_d0 mem_din 1 32 }  { scale_q0 mem_dout 0 32 }  { scale_we0 mem_we 1 1 }  { scale_address1 MemPortADDR2 1 2 }  { scale_ce1 MemPortCE2 1 1 }  { scale_d1 mem_din 1 32 }  { scale_q1 MemPortDOUT2 0 32 }  { scale_we1 mem_we 1 1 } } }
	data_out { ap_memory {  { data_out_address0 mem_address 1 14 }  { data_out_ce0 mem_ce 1 1 }  { data_out_d0 mem_din 1 32 }  { data_out_q0 mem_dout 0 32 }  { data_out_we0 mem_we 1 1 }  { data_out_address1 mem_address 1 14 }  { data_out_ce1 mem_ce 1 1 }  { data_out_d1 mem_din 1 32 }  { data_out_q1 mem_dout 0 32 }  { data_out_we1 mem_we 1 1 } } }
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
