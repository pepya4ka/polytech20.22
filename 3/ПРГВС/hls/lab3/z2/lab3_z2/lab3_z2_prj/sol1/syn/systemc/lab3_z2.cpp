// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "lab3_z2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic lab3_z2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic lab3_z2::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<7> lab3_z2::ap_ST_fsm_state1 = "1";
const sc_lv<7> lab3_z2::ap_ST_fsm_state2 = "10";
const sc_lv<7> lab3_z2::ap_ST_fsm_state3 = "100";
const sc_lv<7> lab3_z2::ap_ST_fsm_state4 = "1000";
const sc_lv<7> lab3_z2::ap_ST_fsm_state5 = "10000";
const sc_lv<7> lab3_z2::ap_ST_fsm_state6 = "100000";
const sc_lv<7> lab3_z2::ap_ST_fsm_state7 = "1000000";
const sc_lv<32> lab3_z2::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> lab3_z2::ap_const_lv32_1 = "1";
const sc_lv<1> lab3_z2::ap_const_lv1_0 = "0";
const sc_lv<32> lab3_z2::ap_const_lv32_2 = "10";
const sc_lv<32> lab3_z2::ap_const_lv32_3 = "11";
const sc_lv<32> lab3_z2::ap_const_lv32_6 = "110";
const sc_lv<9> lab3_z2::ap_const_lv9_0 = "000000000";
const sc_lv<1> lab3_z2::ap_const_lv1_1 = "1";
const sc_lv<5> lab3_z2::ap_const_lv5_0 = "00000";
const sc_lv<32> lab3_z2::ap_const_lv32_10 = "10000";
const sc_lv<9> lab3_z2::ap_const_lv9_100 = "100000000";
const sc_lv<9> lab3_z2::ap_const_lv9_1 = "1";
const sc_lv<5> lab3_z2::ap_const_lv5_10 = "10000";
const sc_lv<5> lab3_z2::ap_const_lv5_1 = "1";
const sc_lv<32> lab3_z2::ap_const_lv32_4 = "100";
const bool lab3_z2::ap_const_boolean_1 = true;

lab3_z2::lab3_z2(sc_module_name name) : sc_module(name), mVcdFile(0) {
    lab3_z2_mul_32s_3bkb_U1 = new lab3_z2_mul_32s_3bkb<1,3,32,32,32>("lab3_z2_mul_32s_3bkb_U1");
    lab3_z2_mul_32s_3bkb_U1->clk(ap_clk);
    lab3_z2_mul_32s_3bkb_U1->reset(ap_rst);
    lab3_z2_mul_32s_3bkb_U1->din0(C_I_read_reg_186);
    lab3_z2_mul_32s_3bkb_U1->din1(macc_0_reg_99);
    lab3_z2_mul_32s_3bkb_U1->ce(ap_var_for_const0);
    lab3_z2_mul_32s_3bkb_U1->dout(grp_fu_150_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_C_I_address);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln5_fu_121_p2 );

    SC_METHOD(thread_C_I_dataout);

    SC_METHOD(thread_C_I_req_din);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln5_fu_121_p2 );

    SC_METHOD(thread_C_I_req_write);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln5_fu_121_p2 );

    SC_METHOD(thread_C_I_rsp_read);
    sensitive << ( C_I_rsp_empty_n );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln7_fu_138_p2 );

    SC_METHOD(thread_C_I_size);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln5_fu_121_p2 );

    SC_METHOD(thread_D_I_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln6_fu_133_p1 );

    SC_METHOD(thread_D_I_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_D_O_address0);
    sensitive << ( zext_ln6_reg_163 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_D_O_ce0);
    sensitive << ( C_I_rsp_empty_n );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln7_fu_138_p2 );

    SC_METHOD(thread_D_O_d0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( macc_0_reg_99 );

    SC_METHOD(thread_D_O_we0);
    sensitive << ( C_I_rsp_empty_n );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln7_fu_138_p2 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state4);
    sensitive << ( C_I_rsp_empty_n );
    sensitive << ( icmp_ln7_fu_138_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln5_fu_121_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln5_fu_121_p2 );

    SC_METHOD(thread_i_fu_127_p2);
    sensitive << ( i_0_reg_88 );

    SC_METHOD(thread_icmp_ln5_fu_121_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_0_reg_88 );

    SC_METHOD(thread_icmp_ln7_fu_138_p2);
    sensitive << ( C_I_rsp_empty_n );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln7_fu_138_p2 );
    sensitive << ( j_0_reg_110 );

    SC_METHOD(thread_j_fu_144_p2);
    sensitive << ( j_0_reg_110 );

    SC_METHOD(thread_zext_ln6_fu_133_p1);
    sensitive << ( i_0_reg_88 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( C_I_rsp_empty_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln5_fu_121_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln7_fu_138_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "0000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "lab3_z2_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, D_I_address0, "(port)D_I_address0");
    sc_trace(mVcdFile, D_I_ce0, "(port)D_I_ce0");
    sc_trace(mVcdFile, D_I_q0, "(port)D_I_q0");
    sc_trace(mVcdFile, C_I_req_din, "(port)C_I_req_din");
    sc_trace(mVcdFile, C_I_req_full_n, "(port)C_I_req_full_n");
    sc_trace(mVcdFile, C_I_req_write, "(port)C_I_req_write");
    sc_trace(mVcdFile, C_I_rsp_empty_n, "(port)C_I_rsp_empty_n");
    sc_trace(mVcdFile, C_I_rsp_read, "(port)C_I_rsp_read");
    sc_trace(mVcdFile, C_I_address, "(port)C_I_address");
    sc_trace(mVcdFile, C_I_datain, "(port)C_I_datain");
    sc_trace(mVcdFile, C_I_dataout, "(port)C_I_dataout");
    sc_trace(mVcdFile, C_I_size, "(port)C_I_size");
    sc_trace(mVcdFile, D_O_address0, "(port)D_O_address0");
    sc_trace(mVcdFile, D_O_ce0, "(port)D_O_ce0");
    sc_trace(mVcdFile, D_O_we0, "(port)D_O_we0");
    sc_trace(mVcdFile, D_O_d0, "(port)D_O_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, i_fu_127_p2, "i_fu_127_p2");
    sc_trace(mVcdFile, i_reg_158, "i_reg_158");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, zext_ln6_fu_133_p1, "zext_ln6_fu_133_p1");
    sc_trace(mVcdFile, zext_ln6_reg_163, "zext_ln6_reg_163");
    sc_trace(mVcdFile, icmp_ln5_fu_121_p2, "icmp_ln5_fu_121_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, j_fu_144_p2, "j_fu_144_p2");
    sc_trace(mVcdFile, j_reg_181, "j_reg_181");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, icmp_ln7_fu_138_p2, "icmp_ln7_fu_138_p2");
    sc_trace(mVcdFile, ap_block_state4, "ap_block_state4");
    sc_trace(mVcdFile, C_I_read_reg_186, "C_I_read_reg_186");
    sc_trace(mVcdFile, grp_fu_150_p2, "grp_fu_150_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, i_0_reg_88, "i_0_reg_88");
    sc_trace(mVcdFile, macc_0_reg_99, "macc_0_reg_99");
    sc_trace(mVcdFile, j_0_reg_110, "j_0_reg_110");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("lab3_z2.hdltvin.dat");
    mHdltvoutHandle.open("lab3_z2.hdltvout.dat");
}

lab3_z2::~lab3_z2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete lab3_z2_mul_32s_3bkb_U1;
}

void lab3_z2::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void lab3_z2::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, C_I_rsp_empty_n.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln7_fu_138_p2.read())) && 
         esl_seteq<1,1,1>(icmp_ln7_fu_138_p2.read(), ap_const_lv1_1))) {
        i_0_reg_88 = i_reg_158.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_88 = ap_const_lv9_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        j_0_reg_110 = j_reg_181.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        j_0_reg_110 = ap_const_lv5_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        macc_0_reg_99 = grp_fu_150_p2.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        macc_0_reg_99 = D_I_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln7_fu_138_p2.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, C_I_rsp_empty_n.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln7_fu_138_p2.read())))) {
        C_I_read_reg_186 = C_I_datain.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_158 = i_fu_127_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, C_I_rsp_empty_n.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln7_fu_138_p2.read())))) {
        j_reg_181 = j_fu_144_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln5_fu_121_p2.read(), ap_const_lv1_0))) {
        zext_ln6_reg_163 = zext_ln6_fu_133_p1.read();
    }
}

void lab3_z2::thread_C_I_address() {
    C_I_address = ap_const_lv32_0;
}

void lab3_z2::thread_C_I_dataout() {
    C_I_dataout = ap_const_lv32_0;
}

void lab3_z2::thread_C_I_req_din() {
    C_I_req_din = ap_const_logic_0;
}

void lab3_z2::thread_C_I_req_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln5_fu_121_p2.read(), ap_const_lv1_0))) {
        C_I_req_write = ap_const_logic_1;
    } else {
        C_I_req_write = ap_const_logic_0;
    }
}

void lab3_z2::thread_C_I_rsp_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln7_fu_138_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, C_I_rsp_empty_n.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln7_fu_138_p2.read())))) {
        C_I_rsp_read = ap_const_logic_1;
    } else {
        C_I_rsp_read = ap_const_logic_0;
    }
}

void lab3_z2::thread_C_I_size() {
    C_I_size = ap_const_lv32_10;
}

void lab3_z2::thread_D_I_address0() {
    D_I_address0 =  (sc_lv<8>) (zext_ln6_fu_133_p1.read());
}

void lab3_z2::thread_D_I_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        D_I_ce0 = ap_const_logic_1;
    } else {
        D_I_ce0 = ap_const_logic_0;
    }
}

void lab3_z2::thread_D_O_address0() {
    D_O_address0 =  (sc_lv<8>) (zext_ln6_reg_163.read());
}

void lab3_z2::thread_D_O_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, C_I_rsp_empty_n.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln7_fu_138_p2.read())))) {
        D_O_ce0 = ap_const_logic_1;
    } else {
        D_O_ce0 = ap_const_logic_0;
    }
}

void lab3_z2::thread_D_O_d0() {
    D_O_d0 = macc_0_reg_99.read();
}

void lab3_z2::thread_D_O_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, C_I_rsp_empty_n.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln7_fu_138_p2.read())) && 
         esl_seteq<1,1,1>(icmp_ln7_fu_138_p2.read(), ap_const_lv1_1))) {
        D_O_we0 = ap_const_logic_1;
    } else {
        D_O_we0 = ap_const_logic_0;
    }
}

void lab3_z2::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void lab3_z2::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void lab3_z2::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void lab3_z2::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void lab3_z2::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void lab3_z2::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void lab3_z2::thread_ap_block_state4() {
    ap_block_state4 = (esl_seteq<1,1,1>(ap_const_logic_0, C_I_rsp_empty_n.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln7_fu_138_p2.read()));
}

void lab3_z2::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln5_fu_121_p2.read(), ap_const_lv1_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void lab3_z2::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void lab3_z2::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln5_fu_121_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void lab3_z2::thread_i_fu_127_p2() {
    i_fu_127_p2 = (!i_0_reg_88.read().is_01() || !ap_const_lv9_1.is_01())? sc_lv<9>(): (sc_biguint<9>(i_0_reg_88.read()) + sc_biguint<9>(ap_const_lv9_1));
}

void lab3_z2::thread_icmp_ln5_fu_121_p2() {
    icmp_ln5_fu_121_p2 = (!i_0_reg_88.read().is_01() || !ap_const_lv9_100.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_88.read() == ap_const_lv9_100);
}

void lab3_z2::thread_icmp_ln7_fu_138_p2() {
    icmp_ln7_fu_138_p2 = (!j_0_reg_110.read().is_01() || !ap_const_lv5_10.is_01())? sc_lv<1>(): sc_lv<1>(j_0_reg_110.read() == ap_const_lv5_10);
}

void lab3_z2::thread_j_fu_144_p2() {
    j_fu_144_p2 = (!j_0_reg_110.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(j_0_reg_110.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void lab3_z2::thread_zext_ln6_fu_133_p1() {
    zext_ln6_fu_133_p1 = esl_zext<64,9>(i_0_reg_88.read());
}

void lab3_z2::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln5_fu_121_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, C_I_rsp_empty_n.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln7_fu_138_p2.read())) && esl_seteq<1,1,1>(icmp_ln7_fu_138_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln7_fu_138_p2.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, C_I_rsp_empty_n.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln7_fu_138_p2.read())))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        default : 
            ap_NS_fsm = "XXXXXXX";
            break;
    }
}

void lab3_z2::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"D_I_address0\" :  \"" << D_I_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"D_I_ce0\" :  \"" << D_I_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"D_I_q0\" :  \"" << D_I_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_I_req_din\" :  \"" << C_I_req_din.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"C_I_req_full_n\" :  \"" << C_I_req_full_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_I_req_write\" :  \"" << C_I_req_write.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"C_I_rsp_empty_n\" :  \"" << C_I_rsp_empty_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_I_rsp_read\" :  \"" << C_I_rsp_read.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_I_address\" :  \"" << C_I_address.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"C_I_datain\" :  \"" << C_I_datain.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_I_dataout\" :  \"" << C_I_dataout.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_I_size\" :  \"" << C_I_size.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"D_O_address0\" :  \"" << D_O_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"D_O_ce0\" :  \"" << D_O_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"D_O_we0\" :  \"" << D_O_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"D_O_d0\" :  \"" << D_O_d0.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

