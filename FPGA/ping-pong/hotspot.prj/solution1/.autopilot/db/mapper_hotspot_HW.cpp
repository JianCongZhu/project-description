#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
struct __cosim_s40__ { char data[64]; };
extern "C" void hotspot_HW(__cosim_s40__*, __cosim_s40__*, __cosim_s40__*, float, float, float, float, float, float);
extern "C" void apatb_hotspot_HW_hw(volatile void * __xlx_apatb_param_result, volatile void * __xlx_apatb_param_temp, volatile void * __xlx_apatb_param_power, float __xlx_apatb_param_Cap, float __xlx_apatb_param_Rx, float __xlx_apatb_param_Ry, float __xlx_apatb_param_Rz, float __xlx_apatb_param_dt, float __xlx_apatb_param_amb_temp) {
  // Collect __xlx_result__tmp_vec
  vector<sc_bv<512> >__xlx_result__tmp_vec;
  for (int j = 0, e = 32768; j != e; ++j) {
    sc_bv<512> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_result)[j*8+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_result)[j*8+1];
    _xlx_tmp_sc.range(191, 128) = ((long long*)__xlx_apatb_param_result)[j*8+2];
    _xlx_tmp_sc.range(255, 192) = ((long long*)__xlx_apatb_param_result)[j*8+3];
    _xlx_tmp_sc.range(319, 256) = ((long long*)__xlx_apatb_param_result)[j*8+4];
    _xlx_tmp_sc.range(383, 320) = ((long long*)__xlx_apatb_param_result)[j*8+5];
    _xlx_tmp_sc.range(447, 384) = ((long long*)__xlx_apatb_param_result)[j*8+6];
    _xlx_tmp_sc.range(511, 448) = ((long long*)__xlx_apatb_param_result)[j*8+7];
    __xlx_result__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_result = 32768;
  int __xlx_offset_param_result = 0;
  int __xlx_offset_byte_param_result = 0*64;
  __cosim_s40__* __xlx_result__input_buffer= new __cosim_s40__[__xlx_result__tmp_vec.size()];
  for (int i = 0; i < __xlx_result__tmp_vec.size(); ++i) {
    ((long long*)__xlx_result__input_buffer)[i*8+0] = __xlx_result__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_result__input_buffer)[i*8+1] = __xlx_result__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_result__input_buffer)[i*8+2] = __xlx_result__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_result__input_buffer)[i*8+3] = __xlx_result__tmp_vec[i].range(255, 192).to_uint64();
    ((long long*)__xlx_result__input_buffer)[i*8+4] = __xlx_result__tmp_vec[i].range(319, 256).to_uint64();
    ((long long*)__xlx_result__input_buffer)[i*8+5] = __xlx_result__tmp_vec[i].range(383, 320).to_uint64();
    ((long long*)__xlx_result__input_buffer)[i*8+6] = __xlx_result__tmp_vec[i].range(447, 384).to_uint64();
    ((long long*)__xlx_result__input_buffer)[i*8+7] = __xlx_result__tmp_vec[i].range(511, 448).to_uint64();
  }
  // Collect __xlx_temp__tmp_vec
  vector<sc_bv<512> >__xlx_temp__tmp_vec;
  for (int j = 0, e = 32768; j != e; ++j) {
    sc_bv<512> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_temp)[j*8+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_temp)[j*8+1];
    _xlx_tmp_sc.range(191, 128) = ((long long*)__xlx_apatb_param_temp)[j*8+2];
    _xlx_tmp_sc.range(255, 192) = ((long long*)__xlx_apatb_param_temp)[j*8+3];
    _xlx_tmp_sc.range(319, 256) = ((long long*)__xlx_apatb_param_temp)[j*8+4];
    _xlx_tmp_sc.range(383, 320) = ((long long*)__xlx_apatb_param_temp)[j*8+5];
    _xlx_tmp_sc.range(447, 384) = ((long long*)__xlx_apatb_param_temp)[j*8+6];
    _xlx_tmp_sc.range(511, 448) = ((long long*)__xlx_apatb_param_temp)[j*8+7];
    __xlx_temp__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_temp = 32768;
  int __xlx_offset_param_temp = 0;
  int __xlx_offset_byte_param_temp = 0*64;
  __cosim_s40__* __xlx_temp__input_buffer= new __cosim_s40__[__xlx_temp__tmp_vec.size()];
  for (int i = 0; i < __xlx_temp__tmp_vec.size(); ++i) {
    ((long long*)__xlx_temp__input_buffer)[i*8+0] = __xlx_temp__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_temp__input_buffer)[i*8+1] = __xlx_temp__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_temp__input_buffer)[i*8+2] = __xlx_temp__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_temp__input_buffer)[i*8+3] = __xlx_temp__tmp_vec[i].range(255, 192).to_uint64();
    ((long long*)__xlx_temp__input_buffer)[i*8+4] = __xlx_temp__tmp_vec[i].range(319, 256).to_uint64();
    ((long long*)__xlx_temp__input_buffer)[i*8+5] = __xlx_temp__tmp_vec[i].range(383, 320).to_uint64();
    ((long long*)__xlx_temp__input_buffer)[i*8+6] = __xlx_temp__tmp_vec[i].range(447, 384).to_uint64();
    ((long long*)__xlx_temp__input_buffer)[i*8+7] = __xlx_temp__tmp_vec[i].range(511, 448).to_uint64();
  }
  // Collect __xlx_power__tmp_vec
  vector<sc_bv<512> >__xlx_power__tmp_vec;
  for (int j = 0, e = 32768; j != e; ++j) {
    sc_bv<512> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_power)[j*8+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_power)[j*8+1];
    _xlx_tmp_sc.range(191, 128) = ((long long*)__xlx_apatb_param_power)[j*8+2];
    _xlx_tmp_sc.range(255, 192) = ((long long*)__xlx_apatb_param_power)[j*8+3];
    _xlx_tmp_sc.range(319, 256) = ((long long*)__xlx_apatb_param_power)[j*8+4];
    _xlx_tmp_sc.range(383, 320) = ((long long*)__xlx_apatb_param_power)[j*8+5];
    _xlx_tmp_sc.range(447, 384) = ((long long*)__xlx_apatb_param_power)[j*8+6];
    _xlx_tmp_sc.range(511, 448) = ((long long*)__xlx_apatb_param_power)[j*8+7];
    __xlx_power__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_power = 32768;
  int __xlx_offset_param_power = 0;
  int __xlx_offset_byte_param_power = 0*64;
  __cosim_s40__* __xlx_power__input_buffer= new __cosim_s40__[__xlx_power__tmp_vec.size()];
  for (int i = 0; i < __xlx_power__tmp_vec.size(); ++i) {
    ((long long*)__xlx_power__input_buffer)[i*8+0] = __xlx_power__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_power__input_buffer)[i*8+1] = __xlx_power__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_power__input_buffer)[i*8+2] = __xlx_power__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_power__input_buffer)[i*8+3] = __xlx_power__tmp_vec[i].range(255, 192).to_uint64();
    ((long long*)__xlx_power__input_buffer)[i*8+4] = __xlx_power__tmp_vec[i].range(319, 256).to_uint64();
    ((long long*)__xlx_power__input_buffer)[i*8+5] = __xlx_power__tmp_vec[i].range(383, 320).to_uint64();
    ((long long*)__xlx_power__input_buffer)[i*8+6] = __xlx_power__tmp_vec[i].range(447, 384).to_uint64();
    ((long long*)__xlx_power__input_buffer)[i*8+7] = __xlx_power__tmp_vec[i].range(511, 448).to_uint64();
  }
  // DUT call
  hotspot_HW(__xlx_result__input_buffer, __xlx_temp__input_buffer, __xlx_power__input_buffer, __xlx_apatb_param_Cap, __xlx_apatb_param_Rx, __xlx_apatb_param_Ry, __xlx_apatb_param_Rz, __xlx_apatb_param_dt, __xlx_apatb_param_amb_temp);
// print __xlx_apatb_param_result
  sc_bv<512>*__xlx_result_output_buffer = new sc_bv<512>[__xlx_size_param_result];
  for (int i = 0; i < __xlx_size_param_result; ++i) {
    char* start = (char*)(&(__xlx_result__input_buffer[__xlx_offset_param_result]));
    __xlx_result_output_buffer[i].range(63, 0) = ((long long*)start)[i*8+0];
    __xlx_result_output_buffer[i].range(127, 64) = ((long long*)start)[i*8+1];
    __xlx_result_output_buffer[i].range(191, 128) = ((long long*)start)[i*8+2];
    __xlx_result_output_buffer[i].range(255, 192) = ((long long*)start)[i*8+3];
    __xlx_result_output_buffer[i].range(319, 256) = ((long long*)start)[i*8+4];
    __xlx_result_output_buffer[i].range(383, 320) = ((long long*)start)[i*8+5];
    __xlx_result_output_buffer[i].range(447, 384) = ((long long*)start)[i*8+6];
    __xlx_result_output_buffer[i].range(511, 448) = ((long long*)start)[i*8+7];
  }
  for (int i = 0; i < __xlx_size_param_result; ++i) {
    ((long long*)__xlx_apatb_param_result)[i*8+0] = __xlx_result_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_result)[i*8+1] = __xlx_result_output_buffer[i].range(127, 64).to_uint64();
    ((long long*)__xlx_apatb_param_result)[i*8+2] = __xlx_result_output_buffer[i].range(191, 128).to_uint64();
    ((long long*)__xlx_apatb_param_result)[i*8+3] = __xlx_result_output_buffer[i].range(255, 192).to_uint64();
    ((long long*)__xlx_apatb_param_result)[i*8+4] = __xlx_result_output_buffer[i].range(319, 256).to_uint64();
    ((long long*)__xlx_apatb_param_result)[i*8+5] = __xlx_result_output_buffer[i].range(383, 320).to_uint64();
    ((long long*)__xlx_apatb_param_result)[i*8+6] = __xlx_result_output_buffer[i].range(447, 384).to_uint64();
    ((long long*)__xlx_apatb_param_result)[i*8+7] = __xlx_result_output_buffer[i].range(511, 448).to_uint64();
  }
// print __xlx_apatb_param_temp
  sc_bv<512>*__xlx_temp_output_buffer = new sc_bv<512>[__xlx_size_param_temp];
  for (int i = 0; i < __xlx_size_param_temp; ++i) {
    char* start = (char*)(&(__xlx_temp__input_buffer[__xlx_offset_param_temp]));
    __xlx_temp_output_buffer[i].range(63, 0) = ((long long*)start)[i*8+0];
    __xlx_temp_output_buffer[i].range(127, 64) = ((long long*)start)[i*8+1];
    __xlx_temp_output_buffer[i].range(191, 128) = ((long long*)start)[i*8+2];
    __xlx_temp_output_buffer[i].range(255, 192) = ((long long*)start)[i*8+3];
    __xlx_temp_output_buffer[i].range(319, 256) = ((long long*)start)[i*8+4];
    __xlx_temp_output_buffer[i].range(383, 320) = ((long long*)start)[i*8+5];
    __xlx_temp_output_buffer[i].range(447, 384) = ((long long*)start)[i*8+6];
    __xlx_temp_output_buffer[i].range(511, 448) = ((long long*)start)[i*8+7];
  }
  for (int i = 0; i < __xlx_size_param_temp; ++i) {
    ((long long*)__xlx_apatb_param_temp)[i*8+0] = __xlx_temp_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_temp)[i*8+1] = __xlx_temp_output_buffer[i].range(127, 64).to_uint64();
    ((long long*)__xlx_apatb_param_temp)[i*8+2] = __xlx_temp_output_buffer[i].range(191, 128).to_uint64();
    ((long long*)__xlx_apatb_param_temp)[i*8+3] = __xlx_temp_output_buffer[i].range(255, 192).to_uint64();
    ((long long*)__xlx_apatb_param_temp)[i*8+4] = __xlx_temp_output_buffer[i].range(319, 256).to_uint64();
    ((long long*)__xlx_apatb_param_temp)[i*8+5] = __xlx_temp_output_buffer[i].range(383, 320).to_uint64();
    ((long long*)__xlx_apatb_param_temp)[i*8+6] = __xlx_temp_output_buffer[i].range(447, 384).to_uint64();
    ((long long*)__xlx_apatb_param_temp)[i*8+7] = __xlx_temp_output_buffer[i].range(511, 448).to_uint64();
  }
// print __xlx_apatb_param_power
  sc_bv<512>*__xlx_power_output_buffer = new sc_bv<512>[__xlx_size_param_power];
  for (int i = 0; i < __xlx_size_param_power; ++i) {
    char* start = (char*)(&(__xlx_power__input_buffer[__xlx_offset_param_power]));
    __xlx_power_output_buffer[i].range(63, 0) = ((long long*)start)[i*8+0];
    __xlx_power_output_buffer[i].range(127, 64) = ((long long*)start)[i*8+1];
    __xlx_power_output_buffer[i].range(191, 128) = ((long long*)start)[i*8+2];
    __xlx_power_output_buffer[i].range(255, 192) = ((long long*)start)[i*8+3];
    __xlx_power_output_buffer[i].range(319, 256) = ((long long*)start)[i*8+4];
    __xlx_power_output_buffer[i].range(383, 320) = ((long long*)start)[i*8+5];
    __xlx_power_output_buffer[i].range(447, 384) = ((long long*)start)[i*8+6];
    __xlx_power_output_buffer[i].range(511, 448) = ((long long*)start)[i*8+7];
  }
  for (int i = 0; i < __xlx_size_param_power; ++i) {
    ((long long*)__xlx_apatb_param_power)[i*8+0] = __xlx_power_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_power)[i*8+1] = __xlx_power_output_buffer[i].range(127, 64).to_uint64();
    ((long long*)__xlx_apatb_param_power)[i*8+2] = __xlx_power_output_buffer[i].range(191, 128).to_uint64();
    ((long long*)__xlx_apatb_param_power)[i*8+3] = __xlx_power_output_buffer[i].range(255, 192).to_uint64();
    ((long long*)__xlx_apatb_param_power)[i*8+4] = __xlx_power_output_buffer[i].range(319, 256).to_uint64();
    ((long long*)__xlx_apatb_param_power)[i*8+5] = __xlx_power_output_buffer[i].range(383, 320).to_uint64();
    ((long long*)__xlx_apatb_param_power)[i*8+6] = __xlx_power_output_buffer[i].range(447, 384).to_uint64();
    ((long long*)__xlx_apatb_param_power)[i*8+7] = __xlx_power_output_buffer[i].range(511, 448).to_uint64();
  }
}
