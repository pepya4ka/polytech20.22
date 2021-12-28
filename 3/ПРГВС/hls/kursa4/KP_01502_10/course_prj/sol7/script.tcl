############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project course_prj
set_top gauss_blur
add_files ./source/course_prj.c
add_files -tb source/course_prj_test.c -cflags "-Wno-unknown-pragmas"
add_files -tb source/testdata -cflags "-Wno-unknown-pragmas"
open_solution "sol7"
set_part {xa7a12t-csg325-1Q}
create_clock -period 6 -name clk
set_clock_uncertainty 0.1
source "./course_prj/sol7/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
