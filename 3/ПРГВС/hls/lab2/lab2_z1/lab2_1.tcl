# The command to create new project
open_project -reset lab2_1_prj

# The  command to add design file 
add_file ./source/lab2_1.c

# The  command to specify the top-level function
set_top find_max

# The  command to add testbench file 
add_files -tb ./source/lab2_1_test.c

# The  command to create the base solution named base 
open_solution -reset "base"

# The  command to associate the device to the solution1
set_part {xa7a12tcsg325-1Q}

# The  command to associate clock period to the solution1
create_clock -period 6 -name clk
set_clock_uncertainty 0.1

# The  comamnd to run the base C simulaiton
csim_design -clean
csynth_design
cosim_design -trace_level all -tool xsim

# Build the lists of solution's name and target delay
set all_solutions {ex_sol1 ex_sol2 ex_sol3 ex_sol4 ex_sol5 ex_sol6 ex_sol7}
set all_period 	  {{8}	     {10}   {12}     {14}    {16}   {18}     {20} }

# The comamnd to run the loop for the lists
foreach the_solution $all_solutions the_period $all_period { 

# The command to create the solution named from the list 
open_solution -reset $the_solution


# The command to associate clock period to the solution from the list
create_clock -period $the_period -name clk
set_clock_uncertainty 0.1

# The  command to associate the device to the solution1
set_part {xa7a12tcsg325-1Q}

# The comamnd to Synthesize the design
csynth_design

# The comamnd to perform C/RTL Cosimmulation 
cosim_design -trace_level all -tool xsim

# The closing bracket for the loop 
}

