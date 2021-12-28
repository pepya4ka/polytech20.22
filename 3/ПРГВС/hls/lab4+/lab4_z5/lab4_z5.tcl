#############################################
#                   Lab                     #
#############################################
open_project -reset lab4_z5b_prj
set_top foo_b
add_files ./source/lab4_z5.c
add_files -tb ./source/lab4_z5_test.c

open_solution -reset sol1
create_clock -period 10 -name clk
set_clock_uncertainty 0.1
set_part {xa7a12tcsg325-1Q}
source ./directives_foob.tcl

csim_design
csynth_design
cosim_design -trace_level all
#############################################
#                 Solutions                 #
#############################################


exit
