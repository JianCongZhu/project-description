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
extern "C" void hotspot_HW(volatile void *, volatile void *, volatile void *, float, float, float, float, float, float);
extern "C" void apatb_hotspot_HW_hw(volatile void * __xlx_apatb_param_result, volatile void * __xlx_apatb_param_temp, volatile void * __xlx_apatb_param_power, float __xlx_apatb_param_Cap, float __xlx_apatb_param_Rx, float __xlx_apatb_param_Ry, float __xlx_apatb_param_Rz, float __xlx_apatb_param_dt, float __xlx_apatb_param_amb_temp) {
  // DUT call
  hotspot_HW(__xlx_apatb_param_result, __xlx_apatb_param_temp, __xlx_apatb_param_power, __xlx_apatb_param_Cap, __xlx_apatb_param_Rx, __xlx_apatb_param_Ry, __xlx_apatb_param_Rz, __xlx_apatb_param_dt, __xlx_apatb_param_amb_temp);
}
