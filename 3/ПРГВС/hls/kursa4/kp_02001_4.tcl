#############################################
#                   Lab                     #
#############################################
open_project -reset kp_02001_4_prj
set_top kp_02001_4
add_files ./source/kp_02001_4.c
add_files -tb ./source/kp_02001_4_test.c

open_solution -reset sol1
create_clock -period 6 -name clk
set_clock_uncertainty 0.1
set_part {xa7a12tcsg325-1Q}

csim_design
csynth_design
#cosim_design -trace_level all
#############################################
#                 Solutions                 #
#############################################
set all_solutions {sol2 sol3 sol4 sol5}
set all_periods   {{8}  {10} {12} {16}}

foreach the_solution $all_solutions the_period $all_periods {
open_solution -reset $the_solution
create_clock -period $the_period -name clk
set_clock_uncertainty 0.1
set_part {xa7a12tcsg325-1Q}

csim_design
csynth_design
#cosim_design -trace_level all
}

exit
