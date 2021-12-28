open_project -reset matrix_prj

add_files ./source/matrix.c

add_files -tb ./source/matrix_test.c

set_top matrix

set all_solutions	{sol1 	sol2 	sol3 	sol4	sol5	sol6	sol7	sol8	sol9}
set all_period		{{4}	{6}		{8}		{10}	{12}	{14}	{16}	{18}	{20}}

foreach the_solution $all_solutions the_period $all_period	{
	
	open_solution -reset $the_solution
	
	# Insert the command to associate clock period to the solution1
	create_clock -period $the_period -name clk
	set_clock_uncertainty 0.1

	# Insert the command to associate the device to the solution1
	set_part {xa7a12tcsg325-1Q}

	csim_design
	
	# Insert the comamnd to Synthesize the design
	csynth_design

	# Insert the comamnd to perform C/RTL Cosimulation 
	# cosim_design -trace_level all -tool xsim
}
