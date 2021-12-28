# Insert the command to create new project
open_project -reset lab3_z2_prj 

# Insert the command to add design file 
add_files -tb ./source/lab3_z2_test.c

# Insert the command to specify the top-level function
set_top lab3_z2

# Insert the command to add testbench file 


# Insert the command to create the solution named sol1 
open_solution -reset "sol1"
add_files ./source/lab3_z2s.c

set_part {xa7a12tcsg325-1Q}
create_clock -period 6 -name clk
set_clock_uncertainty 0.1

set_directive_interface -depth 1 -mode ap_bus "lab3_z2" C_I
csim_design -clean
csynth_design


# Insert the command to create the solution named sol2 
open_solution -reset "sol2"
#remove_files lab3_z2s.c
add_files ./source/lab3_z2b.c

set_part {xa7a12tcsg325-1Q}
create_clock -period 6 -name clk
set_clock_uncertainty 0.1

set_directive_interface -depth 1 -mode ap_bus "lab3_z2" C_I
csim_design -clean
csynth_design

exit 
