#############################################
#                   Lab                     #
#############################################
open_project -reset lab4_z1_prj
set_top lab4_z1
add_files ./source/lab4_z1.c
add_files -tb ./source/lab4_z1_test.c

open_solution -reset sol1
create_clock -period 6 -name clk
set_clock_uncertainty 0.1
set_part {xa7a12tcsg325-1Q}

csim_design
csynth_design
cosim_design -trace_level all
#############################################
#                 Solutions                 #
#############################################
set all_solutions {sol2 sol3 sol4}
set all_periods   {{8} {10} {12}}

foreach the_solution $all_solutions the_period $all_periods {
open_solution -reset $the_solution
create_clock -period $the_period -name clk
set_clock_uncertainty 0.1
set_part {xa7a12tcsg325-1Q}

csim_design
csynth_design
cosim_design -trace_level all
}

exit
