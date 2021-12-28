
/home/sokrat/tools/Xilinx/Vivado/2020.1/bin/xelab xil_defaultlib.apatb_foo_b_top glbl -prj foo_b.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "/home/sokrat/tools/Xilinx/Vivado/2020.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s foo_b -debug wave
/home/sokrat/tools/Xilinx/Vivado/2020.1/bin/xsim --noieeewarnings foo_b -tclbatch foo_b.tcl

