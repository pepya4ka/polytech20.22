############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lab3_z2_prj
set_top lab3_z2
add_files source/lab3_z2b.c
add_files -tb source/lab3_z2_test.c -cflags "-Wno-unknown-pragmas"
open_solution "sol2"
set_part {xa7a12t-csg325-1Q}
create_clock -period 6 -name clk
set_clock_uncertainty 0.1
source "./lab3_z2_prj/sol2/directives.tcl"
csim_design -clean
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
