
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set data_out_group [add_wave_group data_out(memory) -into $coutputgroup]
add_wave /apatb_foo_b_top/AESL_inst_foo_b/data_out_d0 -into $data_out_group -radix hex
add_wave /apatb_foo_b_top/AESL_inst_foo_b/data_out_we0 -into $data_out_group -color #ffff00 -radix hex
add_wave /apatb_foo_b_top/AESL_inst_foo_b/data_out_ce0 -into $data_out_group -color #ffff00 -radix hex
add_wave /apatb_foo_b_top/AESL_inst_foo_b/data_out_address0 -into $data_out_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set scale_group [add_wave_group scale(memory) -into $cinputgroup]
add_wave /apatb_foo_b_top/AESL_inst_foo_b/scale_q1 -into $scale_group -radix hex
add_wave /apatb_foo_b_top/AESL_inst_foo_b/scale_ce1 -into $scale_group -color #ffff00 -radix hex
add_wave /apatb_foo_b_top/AESL_inst_foo_b/scale_address1 -into $scale_group -radix hex
add_wave /apatb_foo_b_top/AESL_inst_foo_b/scale_q0 -into $scale_group -radix hex
add_wave /apatb_foo_b_top/AESL_inst_foo_b/scale_ce0 -into $scale_group -color #ffff00 -radix hex
add_wave /apatb_foo_b_top/AESL_inst_foo_b/scale_address0 -into $scale_group -radix hex
set data_in_group [add_wave_group data_in(memory) -into $cinputgroup]
add_wave /apatb_foo_b_top/AESL_inst_foo_b/data_in_q0 -into $data_in_group -radix hex
add_wave /apatb_foo_b_top/AESL_inst_foo_b/data_in_ce0 -into $data_in_group -color #ffff00 -radix hex
add_wave /apatb_foo_b_top/AESL_inst_foo_b/data_in_address0 -into $data_in_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_foo_b_top/AESL_inst_foo_b/ap_start -into $blocksiggroup
add_wave /apatb_foo_b_top/AESL_inst_foo_b/ap_done -into $blocksiggroup
add_wave /apatb_foo_b_top/AESL_inst_foo_b/ap_idle -into $blocksiggroup
add_wave /apatb_foo_b_top/AESL_inst_foo_b/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_foo_b_top/AESL_inst_foo_b/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_foo_b_top/AESL_inst_foo_b/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_foo_b_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_foo_b_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_foo_b_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_foo_b_top/LENGTH_data_in -into $tb_portdepth_group -radix hex
add_wave /apatb_foo_b_top/LENGTH_scale -into $tb_portdepth_group -radix hex
add_wave /apatb_foo_b_top/LENGTH_data_out -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_data_out_group [add_wave_group data_out(memory) -into $tbcoutputgroup]
add_wave /apatb_foo_b_top/data_out_d0 -into $tb_data_out_group -radix hex
add_wave /apatb_foo_b_top/data_out_we0 -into $tb_data_out_group -color #ffff00 -radix hex
add_wave /apatb_foo_b_top/data_out_ce0 -into $tb_data_out_group -color #ffff00 -radix hex
add_wave /apatb_foo_b_top/data_out_address0 -into $tb_data_out_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_scale_group [add_wave_group scale(memory) -into $tbcinputgroup]
add_wave /apatb_foo_b_top/scale_q1 -into $tb_scale_group -radix hex
add_wave /apatb_foo_b_top/scale_ce1 -into $tb_scale_group -color #ffff00 -radix hex
add_wave /apatb_foo_b_top/scale_address1 -into $tb_scale_group -radix hex
add_wave /apatb_foo_b_top/scale_q0 -into $tb_scale_group -radix hex
add_wave /apatb_foo_b_top/scale_ce0 -into $tb_scale_group -color #ffff00 -radix hex
add_wave /apatb_foo_b_top/scale_address0 -into $tb_scale_group -radix hex
set tb_data_in_group [add_wave_group data_in(memory) -into $tbcinputgroup]
add_wave /apatb_foo_b_top/data_in_q0 -into $tb_data_in_group -radix hex
add_wave /apatb_foo_b_top/data_in_ce0 -into $tb_data_in_group -color #ffff00 -radix hex
add_wave /apatb_foo_b_top/data_in_address0 -into $tb_data_in_group -radix hex
save_wave_config foo_b.wcfg
run all
quit

