############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lab2_1_prj
set_top find_max
add_files ./source/lab2_1.c
add_files -tb source/lab2_1_test.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "ex_sol3"
set_part {xa7a12t-csg325-1Q}
create_clock -period 12 -name clk
set_clock_uncertainty 0.1
#source "./lab2_1_prj/ex_sol3/directives.tcl"
csim_design -clean
csynth_design
cosim_design -trace_level all -tool xsim
export_design -format ip_catalog
