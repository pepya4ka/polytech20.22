
/home/sokrat/tools/Xilinx/Vivado/2020.1/bin/xelab xil_defaultlib.apatb_find_max_top glbl -prj find_max.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "/home/sokrat/tools/Xilinx/Vivado/2020.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s find_max -debug wave
/home/sokrat/tools/Xilinx/Vivado/2020.1/bin/xsim --noieeewarnings find_max -tclbatch find_max.tcl

