############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_interface -mode ap_fifo "gauss_blur" inImage
set_directive_interface -mode ap_fifo "gauss_blur" outImage
set_directive_array_partition -type cyclic -factor 3 -dim 1 "gauss_blur" window
set_directive_array_partition -type cyclic -factor 3 -dim 1 "gauss_blur" kernel
set_directive_unroll -skip_exit_check "filter/col_loop"
set_directive_pipeline -II 1 "gauss_blur/L1"
