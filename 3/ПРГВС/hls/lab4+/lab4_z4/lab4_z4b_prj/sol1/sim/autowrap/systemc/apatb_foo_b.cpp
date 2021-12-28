// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "data_in"
#define AUTOTB_TVIN_data_in  "../tv/cdatafile/c.foo_b.autotvin_data_in.dat"
// wrapc file define: "scale"
#define AUTOTB_TVIN_scale  "../tv/cdatafile/c.foo_b.autotvin_scale.dat"
// wrapc file define: "data_out"
#define AUTOTB_TVOUT_data_out  "../tv/cdatafile/c.foo_b.autotvout_data_out.dat"
#define AUTOTB_TVIN_data_out  "../tv/cdatafile/c.foo_b.autotvin_data_out.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "data_out"
#define AUTOTB_TVOUT_PC_data_out  "../tv/rtldatafile/rtl.foo_b.autotvout_data_out.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			data_in_depth = 0;
			scale_depth = 0;
			data_out_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{data_in " << data_in_depth << "}\n";
			total_list << "{scale " << scale_depth << "}\n";
			total_list << "{data_out " << data_out_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int data_in_depth;
		int scale_depth;
		int data_out_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void foo_b (
int data_in[16384],
int scale[3],
int data_out[16384]);

extern "C" void AESL_WRAP_foo_b (
int data_in[16384],
int scale[3],
int data_out[16384])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "data_out"
		aesl_fh.read(AUTOTB_TVOUT_PC_data_out, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_data_out, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_data_out, AESL_token); // data

			sc_bv<32> *data_out_pc_buffer = new sc_bv<32>[16384];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'data_out', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'data_out', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					data_out_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_data_out, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_data_out))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: data_out
				{
					// bitslice(31, 0)
					// {
						// celement: data_out(31, 0)
						// {
							sc_lv<32>* data_out_lv0_0_16383_1 = new sc_lv<32>[16384];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: data_out(31, 0)
						{
							// carray: (0) => (16383) @ (1)
							for (int i_0 = 0; i_0 <= 16383; i_0 += 1)
							{
								if (&(data_out[0]) != NULL) // check the null address if the c port is array or others
								{
									data_out_lv0_0_16383_1[hls_map_index].range(31, 0) = sc_bv<32>(data_out_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: data_out(31, 0)
						{
							// carray: (0) => (16383) @ (1)
							for (int i_0 = 0; i_0 <= 16383; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : data_out[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : data_out[0]
								// output_left_conversion : data_out[i_0]
								// output_type_conversion : (data_out_lv0_0_16383_1[hls_map_index]).to_uint64()
								if (&(data_out[0]) != NULL) // check the null address if the c port is array or others
								{
									data_out[i_0] = (data_out_lv0_0_16383_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] data_out_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "data_in"
		char* tvin_data_in = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_data_in);

		// "scale"
		char* tvin_scale = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_scale);

		// "data_out"
		char* tvin_data_out = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_data_out);
		char* tvout_data_out = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_data_out);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_data_in, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_data_in, tvin_data_in);

		sc_bv<32>* data_in_tvin_wrapc_buffer = new sc_bv<32>[16384];

		// RTL Name: data_in
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: data_in(31, 0)
				{
					// carray: (0) => (16383) @ (1)
					for (int i_0 = 0; i_0 <= 16383; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_in[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_in[0]
						// regulate_c_name       : data_in
						// input_type_conversion : data_in[i_0]
						if (&(data_in[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> data_in_tmp_mem;
							data_in_tmp_mem = data_in[i_0];
							data_in_tvin_wrapc_buffer[hls_map_index].range(31, 0) = data_in_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16384; i++)
		{
			sprintf(tvin_data_in, "%s\n", (data_in_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_data_in, tvin_data_in);
		}

		tcl_file.set_num(16384, &tcl_file.data_in_depth);
		sprintf(tvin_data_in, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_data_in, tvin_data_in);

		// release memory allocation
		delete [] data_in_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_scale, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_scale, tvin_scale);

		sc_bv<32>* scale_tvin_wrapc_buffer = new sc_bv<32>[3];

		// RTL Name: scale
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: scale(31, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : scale[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : scale[0]
						// regulate_c_name       : scale
						// input_type_conversion : scale[i_0]
						if (&(scale[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> scale_tmp_mem;
							scale_tmp_mem = scale[i_0];
							scale_tvin_wrapc_buffer[hls_map_index].range(31, 0) = scale_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 3; i++)
		{
			sprintf(tvin_scale, "%s\n", (scale_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_scale, tvin_scale);
		}

		tcl_file.set_num(3, &tcl_file.scale_depth);
		sprintf(tvin_scale, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_scale, tvin_scale);

		// release memory allocation
		delete [] scale_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_data_out, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_data_out, tvin_data_out);

		sc_bv<32>* data_out_tvin_wrapc_buffer = new sc_bv<32>[16384];

		// RTL Name: data_out
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: data_out(31, 0)
				{
					// carray: (0) => (16383) @ (1)
					for (int i_0 = 0; i_0 <= 16383; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_out[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_out[0]
						// regulate_c_name       : data_out
						// input_type_conversion : data_out[i_0]
						if (&(data_out[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> data_out_tmp_mem;
							data_out_tmp_mem = data_out[i_0];
							data_out_tvin_wrapc_buffer[hls_map_index].range(31, 0) = data_out_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16384; i++)
		{
			sprintf(tvin_data_out, "%s\n", (data_out_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_data_out, tvin_data_out);
		}

		tcl_file.set_num(16384, &tcl_file.data_out_depth);
		sprintf(tvin_data_out, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_data_out, tvin_data_out);

		// release memory allocation
		delete [] data_out_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		foo_b(data_in, scale, data_out);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_data_out, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_data_out, tvout_data_out);

		sc_bv<32>* data_out_tvout_wrapc_buffer = new sc_bv<32>[16384];

		// RTL Name: data_out
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: data_out(31, 0)
				{
					// carray: (0) => (16383) @ (1)
					for (int i_0 = 0; i_0 <= 16383; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_out[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_out[0]
						// regulate_c_name       : data_out
						// input_type_conversion : data_out[i_0]
						if (&(data_out[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> data_out_tmp_mem;
							data_out_tmp_mem = data_out[i_0];
							data_out_tvout_wrapc_buffer[hls_map_index].range(31, 0) = data_out_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16384; i++)
		{
			sprintf(tvout_data_out, "%s\n", (data_out_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_data_out, tvout_data_out);
		}

		tcl_file.set_num(16384, &tcl_file.data_out_depth);
		sprintf(tvout_data_out, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_data_out, tvout_data_out);

		// release memory allocation
		delete [] data_out_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "data_in"
		delete [] tvin_data_in;
		// release memory allocation: "scale"
		delete [] tvin_scale;
		// release memory allocation: "data_out"
		delete [] tvout_data_out;
		delete [] tvin_data_out;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

