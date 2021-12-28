// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _foo_b_HH_
#define _foo_b_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "foo_b_temp1.h"

namespace ap_rtl {

struct foo_b : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<14> > data_in_address0;
    sc_out< sc_logic > data_in_ce0;
    sc_in< sc_lv<32> > data_in_q0;
    sc_out< sc_lv<2> > scale_address0;
    sc_out< sc_logic > scale_ce0;
    sc_in< sc_lv<32> > scale_q0;
    sc_out< sc_lv<2> > scale_address1;
    sc_out< sc_logic > scale_ce1;
    sc_in< sc_lv<32> > scale_q1;
    sc_out< sc_lv<14> > data_out_address0;
    sc_out< sc_logic > data_out_ce0;
    sc_out< sc_logic > data_out_we0;
    sc_out< sc_lv<32> > data_out_d0;


    // Module declarations
    foo_b(sc_module_name name);
    SC_HAS_PROCESS(foo_b);

    ~foo_b();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    foo_b_temp1* temp1_U;
    foo_b_temp1* temp2_U;
    foo_b_temp1* temp3_U;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<15> > i_0_reg_181;
    sc_signal< sc_lv<15> > j_0_reg_192;
    sc_signal< sc_lv<15> > k_0_reg_203;
    sc_signal< sc_lv<32> > reg_214;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > scale_load_1_reg_301;
    sc_signal< sc_lv<1> > icmp_ln7_fu_218_p2;
    sc_signal< sc_lv<1> > icmp_ln7_reg_306;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln7_reg_306_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_306_pp0_iter2_reg;
    sc_signal< sc_lv<15> > i_fu_224_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<64> > zext_ln8_fu_230_p1;
    sc_signal< sc_lv<64> > zext_ln8_reg_315;
    sc_signal< sc_lv<64> > zext_ln8_reg_315_pp0_iter1_reg;
    sc_signal< sc_lv<64> > zext_ln8_reg_315_pp0_iter2_reg;
    sc_signal< sc_lv<32> > data_in_load_reg_326;
    sc_signal< sc_lv<32> > mul_ln8_fu_235_p2;
    sc_signal< sc_lv<32> > mul_ln8_reg_332;
    sc_signal< sc_lv<32> > mul_ln9_fu_240_p2;
    sc_signal< sc_lv<32> > mul_ln9_reg_337;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > icmp_ln11_fu_244_p2;
    sc_signal< sc_lv<1> > icmp_ln11_reg_347;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state9_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state10_pp1_stage0_iter1;
    sc_signal< bool > ap_block_state11_pp1_stage0_iter2;
    sc_signal< bool > ap_block_state12_pp1_stage0_iter3;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln11_reg_347_pp1_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln11_reg_347_pp1_iter2_reg;
    sc_signal< sc_lv<15> > j_fu_250_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<64> > zext_ln12_fu_256_p1;
    sc_signal< sc_lv<64> > zext_ln12_reg_356;
    sc_signal< sc_lv<64> > zext_ln12_reg_356_pp1_iter1_reg;
    sc_signal< sc_lv<64> > zext_ln12_reg_356_pp1_iter2_reg;
    sc_signal< sc_lv<32> > temp1_q0;
    sc_signal< sc_lv<32> > temp1_load_reg_366;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< sc_lv<32> > mul_ln12_fu_261_p2;
    sc_signal< sc_lv<32> > mul_ln12_reg_371;
    sc_signal< sc_lv<1> > icmp_ln14_fu_266_p2;
    sc_signal< sc_lv<1> > icmp_ln14_reg_376;
    sc_signal< sc_logic > ap_CS_fsm_pp2_stage0;
    sc_signal< bool > ap_block_state14_pp2_stage0_iter0;
    sc_signal< bool > ap_block_state15_pp2_stage0_iter1;
    sc_signal< bool > ap_block_pp2_stage0_11001;
    sc_signal< sc_lv<15> > k_fu_272_p2;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter0;
    sc_signal< sc_lv<64> > zext_ln15_fu_278_p1;
    sc_signal< sc_lv<64> > zext_ln15_reg_385;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state9;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter3;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< bool > ap_block_pp2_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp2_exit_iter0_state14;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter1;
    sc_signal< sc_lv<14> > temp1_address0;
    sc_signal< sc_logic > temp1_ce0;
    sc_signal< sc_logic > temp1_we0;
    sc_signal< sc_lv<14> > temp2_address0;
    sc_signal< sc_logic > temp2_ce0;
    sc_signal< sc_logic > temp2_we0;
    sc_signal< sc_lv<32> > temp2_q0;
    sc_signal< sc_lv<14> > temp3_address0;
    sc_signal< sc_logic > temp3_ce0;
    sc_signal< sc_logic > temp3_we0;
    sc_signal< sc_lv<32> > temp3_q0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< bool > ap_block_pp2_stage0;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    sc_signal< sc_logic > ap_idle_pp2;
    sc_signal< sc_logic > ap_enable_pp2;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_state2;
    static const sc_lv<9> ap_ST_fsm_pp0_stage0;
    static const sc_lv<9> ap_ST_fsm_state7;
    static const sc_lv<9> ap_ST_fsm_state8;
    static const sc_lv<9> ap_ST_fsm_pp1_stage0;
    static const sc_lv<9> ap_ST_fsm_state13;
    static const sc_lv<9> ap_ST_fsm_pp2_stage0;
    static const sc_lv<9> ap_ST_fsm_state16;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<15> ap_const_lv15_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<15> ap_const_lv15_4000;
    static const sc_lv<15> ap_const_lv15_1;
    static const sc_lv<32> ap_const_lv32_8;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_pp2_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_pp2_stage0();
    void thread_ap_block_pp2_stage0_11001();
    void thread_ap_block_pp2_stage0_subdone();
    void thread_ap_block_state10_pp1_stage0_iter1();
    void thread_ap_block_state11_pp1_stage0_iter2();
    void thread_ap_block_state12_pp1_stage0_iter3();
    void thread_ap_block_state14_pp2_stage0_iter0();
    void thread_ap_block_state15_pp2_stage0_iter1();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state5_pp0_stage0_iter2();
    void thread_ap_block_state6_pp0_stage0_iter3();
    void thread_ap_block_state9_pp1_stage0_iter0();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_condition_pp1_exit_iter0_state9();
    void thread_ap_condition_pp2_exit_iter0_state14();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_enable_pp2();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_idle_pp2();
    void thread_ap_ready();
    void thread_data_in_address0();
    void thread_data_in_ce0();
    void thread_data_out_address0();
    void thread_data_out_ce0();
    void thread_data_out_d0();
    void thread_data_out_we0();
    void thread_i_fu_224_p2();
    void thread_icmp_ln11_fu_244_p2();
    void thread_icmp_ln14_fu_266_p2();
    void thread_icmp_ln7_fu_218_p2();
    void thread_j_fu_250_p2();
    void thread_k_fu_272_p2();
    void thread_mul_ln12_fu_261_p2();
    void thread_mul_ln8_fu_235_p2();
    void thread_mul_ln9_fu_240_p2();
    void thread_scale_address0();
    void thread_scale_address1();
    void thread_scale_ce0();
    void thread_scale_ce1();
    void thread_temp1_address0();
    void thread_temp1_ce0();
    void thread_temp1_we0();
    void thread_temp2_address0();
    void thread_temp2_ce0();
    void thread_temp2_we0();
    void thread_temp3_address0();
    void thread_temp3_ce0();
    void thread_temp3_we0();
    void thread_zext_ln12_fu_256_p1();
    void thread_zext_ln15_fu_278_p1();
    void thread_zext_ln8_fu_230_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
