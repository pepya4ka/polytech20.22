
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $coutputgroup]
add_wave /apatb_find_max_top/AESL_inst_find_max/ap_return -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set a_in_group [add_wave_group a_in(memory) -into $cinputgroup]
add_wave /apatb_find_max_top/AESL_inst_find_max/a_in_q0 -into $a_in_group -radix hex
add_wave /apatb_find_max_top/AESL_inst_find_max/a_in_ce0 -into $a_in_group -color #ffff00 -radix hex
add_wave /apatb_find_max_top/AESL_inst_find_max/a_in_address0 -into $a_in_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_find_max_top/AESL_inst_find_max/ap_start -into $blocksiggroup
add_wave /apatb_find_max_top/AESL_inst_find_max/ap_done -into $blocksiggroup
add_wave /apatb_find_max_top/AESL_inst_find_max/ap_idle -into $blocksiggroup
add_wave /apatb_find_max_top/AESL_inst_find_max/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_find_max_top/AESL_inst_find_max/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_find_max_top/AESL_inst_find_max/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_find_max_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_find_max_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_find_max_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_find_max_top/LENGTH_a_in -into $tb_portdepth_group -radix hex
add_wave /apatb_find_max_top/LENGTH_ap_return -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcoutputgroup]
add_wave /apatb_find_max_top/ap_return -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_a_in_group [add_wave_group a_in(memory) -into $tbcinputgroup]
add_wave /apatb_find_max_top/a_in_q0 -into $tb_a_in_group -radix hex
add_wave /apatb_find_max_top/a_in_ce0 -into $tb_a_in_group -color #ffff00 -radix hex
add_wave /apatb_find_max_top/a_in_address0 -into $tb_a_in_group -radix hex
save_wave_config find_max.wcfg
run all
quit

