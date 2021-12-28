set moduleName lab3_z2
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
set C_modelName {lab3_z2}
set C_modelType { void 0 }
set C_modelArgList {
	{ D_I int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ C_I int 32 regular {bus 0}  }
	{ D_O int 32 regular {array 256 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "D_I", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "D_I","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "C_I", "interface" : "bus", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "C_I","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "D_O", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "D_O","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ D_I_address0 sc_out sc_lv 8 signal 0 } 
	{ D_I_ce0 sc_out sc_logic 1 signal 0 } 
	{ D_I_q0 sc_in sc_lv 32 signal 0 } 
	{ C_I_req_din sc_out sc_logic 1 signal 1 } 
	{ C_I_req_full_n sc_in sc_logic 1 signal 1 } 
	{ C_I_req_write sc_out sc_logic 1 signal 1 } 
	{ C_I_rsp_empty_n sc_in sc_logic 1 signal 1 } 
	{ C_I_rsp_read sc_out sc_logic 1 signal 1 } 
	{ C_I_address sc_out sc_lv 32 signal 1 } 
	{ C_I_datain sc_in sc_lv 32 signal 1 } 
	{ C_I_dataout sc_out sc_lv 32 signal 1 } 
	{ C_I_size sc_out sc_lv 32 signal 1 } 
	{ D_O_address0 sc_out sc_lv 8 signal 2 } 
	{ D_O_ce0 sc_out sc_logic 1 signal 2 } 
	{ D_O_we0 sc_out sc_logic 1 signal 2 } 
	{ D_O_d0 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "D_I_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "D_I", "role": "address0" }} , 
 	{ "name": "D_I_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_I", "role": "ce0" }} , 
 	{ "name": "D_I_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_I", "role": "q0" }} , 
 	{ "name": "C_I_req_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_I", "role": "req_din" }} , 
 	{ "name": "C_I_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_I", "role": "req_full_n" }} , 
 	{ "name": "C_I_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_I", "role": "req_write" }} , 
 	{ "name": "C_I_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_I", "role": "rsp_empty_n" }} , 
 	{ "name": "C_I_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_I", "role": "rsp_read" }} , 
 	{ "name": "C_I_address", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_I", "role": "address" }} , 
 	{ "name": "C_I_datain", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_I", "role": "datain" }} , 
 	{ "name": "C_I_dataout", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_I", "role": "dataout" }} , 
 	{ "name": "C_I_size", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_I", "role": "size" }} , 
 	{ "name": "D_O_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "D_O", "role": "address0" }} , 
 	{ "name": "D_O_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_O", "role": "ce0" }} , 
 	{ "name": "D_O_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_O", "role": "we0" }} , 
 	{ "name": "D_O_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_O", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "lab3_z2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17153", "EstimateLatencyMax" : "17153",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "D_I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_I", "Type" : "Bus", "Direction" : "I"},
			{"Name" : "D_O", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lab3_z2_mul_32s_3bkb_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lab3_z2 {
		D_I {Type I LastRead 1 FirstWrite -1}
		C_I {Type I LastRead 3 FirstWrite -1}
		D_O {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17153", "Max" : "17153"}
	, {"Name" : "Interval", "Min" : "17154", "Max" : "17154"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	D_I { ap_memory {  { D_I_address0 mem_address 1 8 }  { D_I_ce0 mem_ce 1 1 }  { D_I_q0 mem_dout 0 32 } } }
	C_I { ap_bus {  { C_I_req_din fifo_data 1 1 }  { C_I_req_full_n fifo_status 0 1 }  { C_I_req_write fifo_update 1 1 }  { C_I_rsp_empty_n fifo_status 0 1 }  { C_I_rsp_read fifo_update 1 1 }  { C_I_address unknown 1 32 }  { C_I_datain unknown 0 32 }  { C_I_dataout unknown 1 32 }  { C_I_size unknown 1 32 } } }
	D_O { ap_memory {  { D_O_address0 mem_address 1 8 }  { D_O_ce0 mem_ce 1 1 }  { D_O_we0 mem_we 1 1 }  { D_O_d0 mem_din 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ C_I 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ C_I 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
