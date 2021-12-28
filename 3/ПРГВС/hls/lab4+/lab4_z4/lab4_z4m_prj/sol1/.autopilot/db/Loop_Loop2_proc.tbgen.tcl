set moduleName Loop_Loop2_proc
set isTopModule 0
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
set C_modelName {Loop_Loop2_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ temp1 int 32 regular {array 16384 { 1 3 } 1 1 }  }
	{ tmp3_loc int 32 regular {fifo 0}  }
	{ temp3 int 32 regular {array 16384 { 0 3 } 0 1 }  }
	{ temp2 int 32 regular {array 16384 { 1 3 } 1 1 }  }
	{ temp4 int 32 regular {array 16384 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "temp1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp3_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ temp1_address0 sc_out sc_lv 14 signal 0 } 
	{ temp1_ce0 sc_out sc_logic 1 signal 0 } 
	{ temp1_q0 sc_in sc_lv 32 signal 0 } 
	{ tmp3_loc_dout sc_in sc_lv 32 signal 1 } 
	{ tmp3_loc_empty_n sc_in sc_logic 1 signal 1 } 
	{ tmp3_loc_read sc_out sc_logic 1 signal 1 } 
	{ temp3_address0 sc_out sc_lv 14 signal 2 } 
	{ temp3_ce0 sc_out sc_logic 1 signal 2 } 
	{ temp3_we0 sc_out sc_logic 1 signal 2 } 
	{ temp3_d0 sc_out sc_lv 32 signal 2 } 
	{ temp2_address0 sc_out sc_lv 14 signal 3 } 
	{ temp2_ce0 sc_out sc_logic 1 signal 3 } 
	{ temp2_q0 sc_in sc_lv 32 signal 3 } 
	{ temp4_address0 sc_out sc_lv 14 signal 4 } 
	{ temp4_ce0 sc_out sc_logic 1 signal 4 } 
	{ temp4_we0 sc_out sc_logic 1 signal 4 } 
	{ temp4_d0 sc_out sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "temp1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "temp1", "role": "address0" }} , 
 	{ "name": "temp1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp1", "role": "ce0" }} , 
 	{ "name": "temp1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp1", "role": "q0" }} , 
 	{ "name": "tmp3_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp3_loc", "role": "dout" }} , 
 	{ "name": "tmp3_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp3_loc", "role": "empty_n" }} , 
 	{ "name": "tmp3_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp3_loc", "role": "read" }} , 
 	{ "name": "temp3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "temp3", "role": "address0" }} , 
 	{ "name": "temp3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp3", "role": "ce0" }} , 
 	{ "name": "temp3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp3", "role": "we0" }} , 
 	{ "name": "temp3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp3", "role": "d0" }} , 
 	{ "name": "temp2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "temp2", "role": "address0" }} , 
 	{ "name": "temp2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp2", "role": "ce0" }} , 
 	{ "name": "temp2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp2", "role": "q0" }} , 
 	{ "name": "temp4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "temp4", "role": "address0" }} , 
 	{ "name": "temp4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp4", "role": "ce0" }} , 
 	{ "name": "temp4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp4", "role": "we0" }} , 
 	{ "name": "temp4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp4", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "temp1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "tmp3_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "tmp3_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "temp2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "temp4", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"}]}]}


set ArgLastReadFirstWriteLatency {
	Loop_Loop2_proc {
		temp1 {Type I LastRead 1 FirstWrite -1}
		tmp3_loc {Type I LastRead 0 FirstWrite -1}
		temp3 {Type O LastRead -1 FirstWrite 4}
		temp2 {Type I LastRead 1 FirstWrite -1}
		temp4 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16388", "Max" : "16388"}
	, {"Name" : "Interval", "Min" : "16388", "Max" : "16388"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	temp1 { ap_memory {  { temp1_address0 mem_address 1 14 }  { temp1_ce0 mem_ce 1 1 }  { temp1_q0 mem_dout 0 32 } } }
	tmp3_loc { ap_fifo {  { tmp3_loc_dout fifo_data 0 32 }  { tmp3_loc_empty_n fifo_status 0 1 }  { tmp3_loc_read fifo_update 1 1 } } }
	temp3 { ap_memory {  { temp3_address0 mem_address 1 14 }  { temp3_ce0 mem_ce 1 1 }  { temp3_we0 mem_we 1 1 }  { temp3_d0 mem_din 1 32 } } }
	temp2 { ap_memory {  { temp2_address0 mem_address 1 14 }  { temp2_ce0 mem_ce 1 1 }  { temp2_q0 mem_dout 0 32 } } }
	temp4 { ap_memory {  { temp4_address0 mem_address 1 14 }  { temp4_ce0 mem_ce 1 1 }  { temp4_we0 mem_we 1 1 }  { temp4_d0 mem_din 1 32 } } }
}
