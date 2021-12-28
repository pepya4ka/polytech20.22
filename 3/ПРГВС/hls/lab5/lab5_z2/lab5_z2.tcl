# Project settings

# Create a project
open_project -reset lab5_z2_prj

# The source file and test bench
add_files 	./source/lab5_z2.c
add_files -tb	./source/lab5_z2_test.c

# Specify the top-level function for synthesis
set_top		lab5_z2

###########################
# Solution settings

# Create solution1
open_solution -reset solution1

# Specify a Xilinx device and clock period
# - Do not specify a clock uncertainty (margin)
# - Let the  margin to default to 12.5% of clock period
set_part  {xa7a12tcsg325-1q}
create_clock -period 20

# Simulate the C code 
csim_design

# Directives - RESOURCE (RAM_1P);
set_directive_resource -core RAM_1P "lab5_z2" d_in
set_directive_array_partition -type block -factor 4 "lab5_z2" d_in
set_directive_pipeline "lab5_z2/for_label0"

# synthesis and c/rtl sim
csynth_design
cosim_design -trace_level all

exit

