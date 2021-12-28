############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lab4_z4m_prj
set_top foo_m
add_files ./source/lab4_z4.c
add_files -tb source/lab4_z4_test.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "sol1"
set_part {xa7a12t-csg325-1Q}
create_clock -period 10 -name clk
config_dataflow -default_channel pingpong -fifo_depth 2 -scalar_fifo_depth 2 -start_fifo_depth 2 -strict_mode warning
set_clock_uncertainty 0.1
source "./lab4_z4m_prj/sol1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
