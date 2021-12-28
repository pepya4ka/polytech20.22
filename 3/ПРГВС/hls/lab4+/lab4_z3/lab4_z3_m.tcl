#############################################
#                   Lab                     #
#############################################
open_project -reset lab4_z3m_prj
set_top foo_m
add_files ./source/lab4_z3.c
add_files -tb ./source/lab4_z3_test.c

open_solution -reset sol1
create_clock -period 10 -name clk
set_clock_uncertainty 0.1
set_part {xa7a12tcsg325-1Q}
source ./directives_foom.tcl

csim_design
csynth_design
cosim_design -trace_level all
#############################################
#                 Solutions                 #
#############################################

exit
