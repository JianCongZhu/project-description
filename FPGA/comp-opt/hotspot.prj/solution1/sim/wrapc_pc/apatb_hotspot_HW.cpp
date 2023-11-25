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

// wrapc file define:
#define AUTOTB_TVIN_result "../tv/cdatafile/c.hotspot_HW.autotvin_result.dat"
#define AUTOTB_TVOUT_result "../tv/cdatafile/c.hotspot_HW.autotvout_result.dat"
// wrapc file define:
#define AUTOTB_TVIN_temp "../tv/cdatafile/c.hotspot_HW.autotvin_temp.dat"
#define AUTOTB_TVOUT_temp "../tv/cdatafile/c.hotspot_HW.autotvout_temp.dat"
// wrapc file define:
#define AUTOTB_TVIN_power "../tv/cdatafile/c.hotspot_HW.autotvin_power.dat"
#define AUTOTB_TVOUT_power "../tv/cdatafile/c.hotspot_HW.autotvout_power.dat"
// wrapc file define:
#define AUTOTB_TVIN_Cap "../tv/cdatafile/c.hotspot_HW.autotvin_Cap.dat"
#define AUTOTB_TVOUT_Cap "../tv/cdatafile/c.hotspot_HW.autotvout_Cap.dat"
// wrapc file define:
#define AUTOTB_TVIN_Rx "../tv/cdatafile/c.hotspot_HW.autotvin_Rx.dat"
#define AUTOTB_TVOUT_Rx "../tv/cdatafile/c.hotspot_HW.autotvout_Rx.dat"
// wrapc file define:
#define AUTOTB_TVIN_Ry "../tv/cdatafile/c.hotspot_HW.autotvin_Ry.dat"
#define AUTOTB_TVOUT_Ry "../tv/cdatafile/c.hotspot_HW.autotvout_Ry.dat"
// wrapc file define:
#define AUTOTB_TVIN_Rz "../tv/cdatafile/c.hotspot_HW.autotvin_Rz.dat"
#define AUTOTB_TVOUT_Rz "../tv/cdatafile/c.hotspot_HW.autotvout_Rz.dat"
// wrapc file define:
#define AUTOTB_TVIN_dt "../tv/cdatafile/c.hotspot_HW.autotvin_dt.dat"
#define AUTOTB_TVOUT_dt "../tv/cdatafile/c.hotspot_HW.autotvout_dt.dat"
// wrapc file define:
#define AUTOTB_TVIN_amb_temp "../tv/cdatafile/c.hotspot_HW.autotvin_amb_temp.dat"
#define AUTOTB_TVOUT_amb_temp "../tv/cdatafile/c.hotspot_HW.autotvout_amb_temp.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_result "../tv/rtldatafile/rtl.hotspot_HW.autotvout_result.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_temp "../tv/rtldatafile/rtl.hotspot_HW.autotvout_temp.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_power "../tv/rtldatafile/rtl.hotspot_HW.autotvout_power.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_Cap "../tv/rtldatafile/rtl.hotspot_HW.autotvout_Cap.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_Rx "../tv/rtldatafile/rtl.hotspot_HW.autotvout_Rx.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_Ry "../tv/rtldatafile/rtl.hotspot_HW.autotvout_Ry.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_Rz "../tv/rtldatafile/rtl.hotspot_HW.autotvout_Rz.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_dt "../tv/rtldatafile/rtl.hotspot_HW.autotvout_dt.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_amb_temp "../tv/rtldatafile/rtl.hotspot_HW.autotvout_amb_temp.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  result_depth = 0;
  temp_depth = 0;
  power_depth = 0;
  Cap_depth = 0;
  Rx_depth = 0;
  Ry_depth = 0;
  Rz_depth = 0;
  dt_depth = 0;
  amb_temp_depth = 0;
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
  total_list << "{result " << result_depth << "}\n";
  total_list << "{temp " << temp_depth << "}\n";
  total_list << "{power " << power_depth << "}\n";
  total_list << "{Cap " << Cap_depth << "}\n";
  total_list << "{Rx " << Rx_depth << "}\n";
  total_list << "{Ry " << Ry_depth << "}\n";
  total_list << "{Rz " << Rz_depth << "}\n";
  total_list << "{dt " << dt_depth << "}\n";
  total_list << "{amb_temp " << amb_temp_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int result_depth;
    int temp_depth;
    int power_depth;
    int Cap_depth;
    int Rx_depth;
    int Ry_depth;
    int Rz_depth;
    int dt_depth;
    int amb_temp_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void hotspot_HW_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, float, float, float, float, float, float);

extern "C" void apatb_hotspot_HW_hw(volatile void * __xlx_apatb_param_result, volatile void * __xlx_apatb_param_temp, volatile void * __xlx_apatb_param_power, float __xlx_apatb_param_Cap, float __xlx_apatb_param_Rx, float __xlx_apatb_param_Ry, float __xlx_apatb_param_Rz, float __xlx_apatb_param_dt, float __xlx_apatb_param_amb_temp) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_result);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > result_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "result");
  
            // push token into output port buffer
            if (AESL_token != "") {
              result_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_result)[0] = result_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_temp);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > temp_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "temp");
  
            // push token into output port buffer
            if (AESL_token != "") {
              temp_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_temp)[0] = temp_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//result
aesl_fh.touch(AUTOTB_TVIN_result);
aesl_fh.touch(AUTOTB_TVOUT_result);
//temp
aesl_fh.touch(AUTOTB_TVIN_temp);
aesl_fh.touch(AUTOTB_TVOUT_temp);
//power
aesl_fh.touch(AUTOTB_TVIN_power);
aesl_fh.touch(AUTOTB_TVOUT_power);
//Cap
aesl_fh.touch(AUTOTB_TVIN_Cap);
aesl_fh.touch(AUTOTB_TVOUT_Cap);
//Rx
aesl_fh.touch(AUTOTB_TVIN_Rx);
aesl_fh.touch(AUTOTB_TVOUT_Rx);
//Ry
aesl_fh.touch(AUTOTB_TVIN_Ry);
aesl_fh.touch(AUTOTB_TVOUT_Ry);
//Rz
aesl_fh.touch(AUTOTB_TVIN_Rz);
aesl_fh.touch(AUTOTB_TVOUT_Rz);
//dt
aesl_fh.touch(AUTOTB_TVIN_dt);
aesl_fh.touch(AUTOTB_TVOUT_dt);
//amb_temp
aesl_fh.touch(AUTOTB_TVIN_amb_temp);
aesl_fh.touch(AUTOTB_TVOUT_amb_temp);
CodeState = DUMP_INPUTS;
// print result Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_result, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_result);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_result, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.result_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_result, __xlx_sprintf_buffer.data());
}
// print temp Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_temp, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_temp);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_temp, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.temp_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_temp, __xlx_sprintf_buffer.data());
}
// print power Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_power, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_power);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_power, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.power_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_power, __xlx_sprintf_buffer.data());
}
// print Cap Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_Cap, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_Cap);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_Cap, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.Cap_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_Cap, __xlx_sprintf_buffer.data());
}
// print Rx Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_Rx, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_Rx);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_Rx, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.Rx_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_Rx, __xlx_sprintf_buffer.data());
}
// print Ry Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_Ry, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_Ry);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_Ry, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.Ry_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_Ry, __xlx_sprintf_buffer.data());
}
// print Rz Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_Rz, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_Rz);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_Rz, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.Rz_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_Rz, __xlx_sprintf_buffer.data());
}
// print dt Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_dt, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_dt);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_dt, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.dt_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_dt, __xlx_sprintf_buffer.data());
}
// print amb_temp Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_amb_temp, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_amb_temp);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_amb_temp, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.amb_temp_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_amb_temp, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
hotspot_HW_hw_stub_wrapper(__xlx_apatb_param_result, __xlx_apatb_param_temp, __xlx_apatb_param_power, __xlx_apatb_param_Cap, __xlx_apatb_param_Rx, __xlx_apatb_param_Ry, __xlx_apatb_param_Rz, __xlx_apatb_param_dt, __xlx_apatb_param_amb_temp);
CodeState = DUMP_OUTPUTS;
// print result Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_result, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_result);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_result, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.result_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_result, __xlx_sprintf_buffer.data());
}
// print temp Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_temp, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_temp);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_temp, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.temp_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_temp, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
