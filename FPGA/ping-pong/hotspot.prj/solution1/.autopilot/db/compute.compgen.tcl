# This script segment is generated automatically by AutoPilot

set id 71
set name hotspot_HW_fadd_32ns_32ns_32_7_full_dsp_1
set corename simcore_fadd
set op fadd
set stage_num 7
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fadd] == "ap_gen_simcore_fadd"} {
eval "ap_gen_simcore_fadd { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fadd, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fadd
set corename FAddSub_fulldsp
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 157
set name hotspot_HW_fmul_32ns_32ns_32_4_max_dsp_1
set corename simcore_fmul
set op fmul
set stage_num 4
set max_latency -1
set registered_input 1
set impl_style max_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fmul] == "ap_gen_simcore_fmul"} {
eval "ap_gen_simcore_fmul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fmul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fmul
set corename FMul_maxdsp
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 242
set name hotspot_HW_fdiv_32ns_32ns_32_12_no_dsp_1
set corename simcore_fdiv
set op fdiv
set stage_num 12
set max_latency -1
set registered_input 1
set impl_style no_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fdiv] == "ap_gen_simcore_fdiv"} {
eval "ap_gen_simcore_fdiv { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fdiv, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fdiv
set corename FDiv
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 247 \
    name result_buf_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename result_buf_0 \
    op interface \
    ports { result_buf_0_address0 { O 8 vector } result_buf_0_ce0 { O 1 bit } result_buf_0_we0 { O 1 bit } result_buf_0_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'result_buf_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 248 \
    name result_buf_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename result_buf_1 \
    op interface \
    ports { result_buf_1_address0 { O 8 vector } result_buf_1_ce0 { O 1 bit } result_buf_1_we0 { O 1 bit } result_buf_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'result_buf_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 249 \
    name result_buf_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename result_buf_2 \
    op interface \
    ports { result_buf_2_address0 { O 8 vector } result_buf_2_ce0 { O 1 bit } result_buf_2_we0 { O 1 bit } result_buf_2_d0 { O 32 vector } result_buf_2_address1 { O 8 vector } result_buf_2_ce1 { O 1 bit } result_buf_2_we1 { O 1 bit } result_buf_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'result_buf_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 250 \
    name result_buf_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename result_buf_3 \
    op interface \
    ports { result_buf_3_address0 { O 8 vector } result_buf_3_ce0 { O 1 bit } result_buf_3_we0 { O 1 bit } result_buf_3_d0 { O 32 vector } result_buf_3_address1 { O 8 vector } result_buf_3_ce1 { O 1 bit } result_buf_3_we1 { O 1 bit } result_buf_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'result_buf_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 251 \
    name result_buf_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename result_buf_4 \
    op interface \
    ports { result_buf_4_address0 { O 8 vector } result_buf_4_ce0 { O 1 bit } result_buf_4_we0 { O 1 bit } result_buf_4_d0 { O 32 vector } result_buf_4_address1 { O 8 vector } result_buf_4_ce1 { O 1 bit } result_buf_4_we1 { O 1 bit } result_buf_4_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'result_buf_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 252 \
    name result_buf_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename result_buf_5 \
    op interface \
    ports { result_buf_5_address0 { O 8 vector } result_buf_5_ce0 { O 1 bit } result_buf_5_we0 { O 1 bit } result_buf_5_d0 { O 32 vector } result_buf_5_address1 { O 8 vector } result_buf_5_ce1 { O 1 bit } result_buf_5_we1 { O 1 bit } result_buf_5_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'result_buf_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 253 \
    name result_buf_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename result_buf_6 \
    op interface \
    ports { result_buf_6_address0 { O 8 vector } result_buf_6_ce0 { O 1 bit } result_buf_6_we0 { O 1 bit } result_buf_6_d0 { O 32 vector } result_buf_6_address1 { O 8 vector } result_buf_6_ce1 { O 1 bit } result_buf_6_we1 { O 1 bit } result_buf_6_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'result_buf_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 254 \
    name result_buf_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename result_buf_7 \
    op interface \
    ports { result_buf_7_address0 { O 8 vector } result_buf_7_ce0 { O 1 bit } result_buf_7_we0 { O 1 bit } result_buf_7_d0 { O 32 vector } result_buf_7_address1 { O 8 vector } result_buf_7_ce1 { O 1 bit } result_buf_7_we1 { O 1 bit } result_buf_7_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'result_buf_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 255 \
    name result_buf_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename result_buf_8 \
    op interface \
    ports { result_buf_8_address0 { O 8 vector } result_buf_8_ce0 { O 1 bit } result_buf_8_we0 { O 1 bit } result_buf_8_d0 { O 32 vector } result_buf_8_address1 { O 8 vector } result_buf_8_ce1 { O 1 bit } result_buf_8_we1 { O 1 bit } result_buf_8_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'result_buf_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 256 \
    name result_buf_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename result_buf_9 \
    op interface \
    ports { result_buf_9_address0 { O 8 vector } result_buf_9_ce0 { O 1 bit } result_buf_9_we0 { O 1 bit } result_buf_9_d0 { O 32 vector } result_buf_9_address1 { O 8 vector } result_buf_9_ce1 { O 1 bit } result_buf_9_we1 { O 1 bit } result_buf_9_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'result_buf_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 257 \
    name result_buf_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename result_buf_10 \
    op interface \
    ports { result_buf_10_address0 { O 8 vector } result_buf_10_ce0 { O 1 bit } result_buf_10_we0 { O 1 bit } result_buf_10_d0 { O 32 vector } result_buf_10_address1 { O 8 vector } result_buf_10_ce1 { O 1 bit } result_buf_10_we1 { O 1 bit } result_buf_10_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'result_buf_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 258 \
    name result_buf_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename result_buf_11 \
    op interface \
    ports { result_buf_11_address0 { O 8 vector } result_buf_11_ce0 { O 1 bit } result_buf_11_we0 { O 1 bit } result_buf_11_d0 { O 32 vector } result_buf_11_address1 { O 8 vector } result_buf_11_ce1 { O 1 bit } result_buf_11_we1 { O 1 bit } result_buf_11_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'result_buf_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 259 \
    name result_buf_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename result_buf_12 \
    op interface \
    ports { result_buf_12_address0 { O 8 vector } result_buf_12_ce0 { O 1 bit } result_buf_12_we0 { O 1 bit } result_buf_12_d0 { O 32 vector } result_buf_12_address1 { O 8 vector } result_buf_12_ce1 { O 1 bit } result_buf_12_we1 { O 1 bit } result_buf_12_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'result_buf_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 260 \
    name result_buf_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename result_buf_13 \
    op interface \
    ports { result_buf_13_address0 { O 8 vector } result_buf_13_ce0 { O 1 bit } result_buf_13_we0 { O 1 bit } result_buf_13_d0 { O 32 vector } result_buf_13_address1 { O 8 vector } result_buf_13_ce1 { O 1 bit } result_buf_13_we1 { O 1 bit } result_buf_13_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'result_buf_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 261 \
    name result_buf_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename result_buf_14 \
    op interface \
    ports { result_buf_14_address0 { O 8 vector } result_buf_14_ce0 { O 1 bit } result_buf_14_we0 { O 1 bit } result_buf_14_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'result_buf_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 262 \
    name result_buf_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename result_buf_15 \
    op interface \
    ports { result_buf_15_address0 { O 8 vector } result_buf_15_ce0 { O 1 bit } result_buf_15_we0 { O 1 bit } result_buf_15_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'result_buf_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 263 \
    name center_buf_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename center_buf_0 \
    op interface \
    ports { center_buf_0_address0 { O 8 vector } center_buf_0_ce0 { O 1 bit } center_buf_0_q0 { I 32 vector } center_buf_0_address1 { O 8 vector } center_buf_0_ce1 { O 1 bit } center_buf_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 264 \
    name center_buf_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename center_buf_1 \
    op interface \
    ports { center_buf_1_address0 { O 8 vector } center_buf_1_ce0 { O 1 bit } center_buf_1_q0 { I 32 vector } center_buf_1_address1 { O 8 vector } center_buf_1_ce1 { O 1 bit } center_buf_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 265 \
    name center_buf_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename center_buf_2 \
    op interface \
    ports { center_buf_2_address0 { O 8 vector } center_buf_2_ce0 { O 1 bit } center_buf_2_q0 { I 32 vector } center_buf_2_address1 { O 8 vector } center_buf_2_ce1 { O 1 bit } center_buf_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 266 \
    name center_buf_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename center_buf_3 \
    op interface \
    ports { center_buf_3_address0 { O 8 vector } center_buf_3_ce0 { O 1 bit } center_buf_3_q0 { I 32 vector } center_buf_3_address1 { O 8 vector } center_buf_3_ce1 { O 1 bit } center_buf_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 267 \
    name center_buf_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename center_buf_4 \
    op interface \
    ports { center_buf_4_address0 { O 8 vector } center_buf_4_ce0 { O 1 bit } center_buf_4_q0 { I 32 vector } center_buf_4_address1 { O 8 vector } center_buf_4_ce1 { O 1 bit } center_buf_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 268 \
    name center_buf_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename center_buf_5 \
    op interface \
    ports { center_buf_5_address0 { O 8 vector } center_buf_5_ce0 { O 1 bit } center_buf_5_q0 { I 32 vector } center_buf_5_address1 { O 8 vector } center_buf_5_ce1 { O 1 bit } center_buf_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 269 \
    name center_buf_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename center_buf_6 \
    op interface \
    ports { center_buf_6_address0 { O 8 vector } center_buf_6_ce0 { O 1 bit } center_buf_6_q0 { I 32 vector } center_buf_6_address1 { O 8 vector } center_buf_6_ce1 { O 1 bit } center_buf_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 270 \
    name center_buf_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename center_buf_7 \
    op interface \
    ports { center_buf_7_address0 { O 8 vector } center_buf_7_ce0 { O 1 bit } center_buf_7_q0 { I 32 vector } center_buf_7_address1 { O 8 vector } center_buf_7_ce1 { O 1 bit } center_buf_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 271 \
    name center_buf_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename center_buf_8 \
    op interface \
    ports { center_buf_8_address0 { O 8 vector } center_buf_8_ce0 { O 1 bit } center_buf_8_q0 { I 32 vector } center_buf_8_address1 { O 8 vector } center_buf_8_ce1 { O 1 bit } center_buf_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 272 \
    name center_buf_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename center_buf_9 \
    op interface \
    ports { center_buf_9_address0 { O 8 vector } center_buf_9_ce0 { O 1 bit } center_buf_9_q0 { I 32 vector } center_buf_9_address1 { O 8 vector } center_buf_9_ce1 { O 1 bit } center_buf_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 273 \
    name center_buf_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename center_buf_10 \
    op interface \
    ports { center_buf_10_address0 { O 8 vector } center_buf_10_ce0 { O 1 bit } center_buf_10_q0 { I 32 vector } center_buf_10_address1 { O 8 vector } center_buf_10_ce1 { O 1 bit } center_buf_10_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 274 \
    name center_buf_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename center_buf_11 \
    op interface \
    ports { center_buf_11_address0 { O 8 vector } center_buf_11_ce0 { O 1 bit } center_buf_11_q0 { I 32 vector } center_buf_11_address1 { O 8 vector } center_buf_11_ce1 { O 1 bit } center_buf_11_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 275 \
    name center_buf_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename center_buf_12 \
    op interface \
    ports { center_buf_12_address0 { O 8 vector } center_buf_12_ce0 { O 1 bit } center_buf_12_q0 { I 32 vector } center_buf_12_address1 { O 8 vector } center_buf_12_ce1 { O 1 bit } center_buf_12_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 276 \
    name center_buf_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename center_buf_13 \
    op interface \
    ports { center_buf_13_address0 { O 8 vector } center_buf_13_ce0 { O 1 bit } center_buf_13_q0 { I 32 vector } center_buf_13_address1 { O 8 vector } center_buf_13_ce1 { O 1 bit } center_buf_13_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 277 \
    name center_buf_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename center_buf_14 \
    op interface \
    ports { center_buf_14_address0 { O 8 vector } center_buf_14_ce0 { O 1 bit } center_buf_14_q0 { I 32 vector } center_buf_14_address1 { O 8 vector } center_buf_14_ce1 { O 1 bit } center_buf_14_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 278 \
    name center_buf_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename center_buf_15 \
    op interface \
    ports { center_buf_15_address0 { O 8 vector } center_buf_15_ce0 { O 1 bit } center_buf_15_q0 { I 32 vector } center_buf_15_address1 { O 8 vector } center_buf_15_ce1 { O 1 bit } center_buf_15_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 279 \
    name top_buf_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename top_buf_0 \
    op interface \
    ports { top_buf_0_address0 { O 8 vector } top_buf_0_ce0 { O 1 bit } top_buf_0_q0 { I 32 vector } top_buf_0_address1 { O 8 vector } top_buf_0_ce1 { O 1 bit } top_buf_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 280 \
    name top_buf_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename top_buf_1 \
    op interface \
    ports { top_buf_1_address0 { O 8 vector } top_buf_1_ce0 { O 1 bit } top_buf_1_q0 { I 32 vector } top_buf_1_address1 { O 8 vector } top_buf_1_ce1 { O 1 bit } top_buf_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 281 \
    name top_buf_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename top_buf_2 \
    op interface \
    ports { top_buf_2_address0 { O 8 vector } top_buf_2_ce0 { O 1 bit } top_buf_2_q0 { I 32 vector } top_buf_2_address1 { O 8 vector } top_buf_2_ce1 { O 1 bit } top_buf_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 282 \
    name top_buf_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename top_buf_3 \
    op interface \
    ports { top_buf_3_address0 { O 8 vector } top_buf_3_ce0 { O 1 bit } top_buf_3_q0 { I 32 vector } top_buf_3_address1 { O 8 vector } top_buf_3_ce1 { O 1 bit } top_buf_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 283 \
    name top_buf_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename top_buf_4 \
    op interface \
    ports { top_buf_4_address0 { O 8 vector } top_buf_4_ce0 { O 1 bit } top_buf_4_q0 { I 32 vector } top_buf_4_address1 { O 8 vector } top_buf_4_ce1 { O 1 bit } top_buf_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 284 \
    name top_buf_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename top_buf_5 \
    op interface \
    ports { top_buf_5_address0 { O 8 vector } top_buf_5_ce0 { O 1 bit } top_buf_5_q0 { I 32 vector } top_buf_5_address1 { O 8 vector } top_buf_5_ce1 { O 1 bit } top_buf_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 285 \
    name top_buf_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename top_buf_6 \
    op interface \
    ports { top_buf_6_address0 { O 8 vector } top_buf_6_ce0 { O 1 bit } top_buf_6_q0 { I 32 vector } top_buf_6_address1 { O 8 vector } top_buf_6_ce1 { O 1 bit } top_buf_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 286 \
    name top_buf_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename top_buf_7 \
    op interface \
    ports { top_buf_7_address0 { O 8 vector } top_buf_7_ce0 { O 1 bit } top_buf_7_q0 { I 32 vector } top_buf_7_address1 { O 8 vector } top_buf_7_ce1 { O 1 bit } top_buf_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 287 \
    name top_buf_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename top_buf_8 \
    op interface \
    ports { top_buf_8_address0 { O 8 vector } top_buf_8_ce0 { O 1 bit } top_buf_8_q0 { I 32 vector } top_buf_8_address1 { O 8 vector } top_buf_8_ce1 { O 1 bit } top_buf_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 288 \
    name top_buf_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename top_buf_9 \
    op interface \
    ports { top_buf_9_address0 { O 8 vector } top_buf_9_ce0 { O 1 bit } top_buf_9_q0 { I 32 vector } top_buf_9_address1 { O 8 vector } top_buf_9_ce1 { O 1 bit } top_buf_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 289 \
    name top_buf_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename top_buf_10 \
    op interface \
    ports { top_buf_10_address0 { O 8 vector } top_buf_10_ce0 { O 1 bit } top_buf_10_q0 { I 32 vector } top_buf_10_address1 { O 8 vector } top_buf_10_ce1 { O 1 bit } top_buf_10_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 290 \
    name top_buf_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename top_buf_11 \
    op interface \
    ports { top_buf_11_address0 { O 8 vector } top_buf_11_ce0 { O 1 bit } top_buf_11_q0 { I 32 vector } top_buf_11_address1 { O 8 vector } top_buf_11_ce1 { O 1 bit } top_buf_11_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 291 \
    name top_buf_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename top_buf_12 \
    op interface \
    ports { top_buf_12_address0 { O 8 vector } top_buf_12_ce0 { O 1 bit } top_buf_12_q0 { I 32 vector } top_buf_12_address1 { O 8 vector } top_buf_12_ce1 { O 1 bit } top_buf_12_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 292 \
    name top_buf_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename top_buf_13 \
    op interface \
    ports { top_buf_13_address0 { O 8 vector } top_buf_13_ce0 { O 1 bit } top_buf_13_q0 { I 32 vector } top_buf_13_address1 { O 8 vector } top_buf_13_ce1 { O 1 bit } top_buf_13_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 293 \
    name top_buf_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename top_buf_14 \
    op interface \
    ports { top_buf_14_address0 { O 8 vector } top_buf_14_ce0 { O 1 bit } top_buf_14_q0 { I 32 vector } top_buf_14_address1 { O 8 vector } top_buf_14_ce1 { O 1 bit } top_buf_14_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 294 \
    name top_buf_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename top_buf_15 \
    op interface \
    ports { top_buf_15_address0 { O 8 vector } top_buf_15_ce0 { O 1 bit } top_buf_15_q0 { I 32 vector } top_buf_15_address1 { O 8 vector } top_buf_15_ce1 { O 1 bit } top_buf_15_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 295 \
    name bottom_buf_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bottom_buf_0 \
    op interface \
    ports { bottom_buf_0_address0 { O 8 vector } bottom_buf_0_ce0 { O 1 bit } bottom_buf_0_q0 { I 32 vector } bottom_buf_0_address1 { O 8 vector } bottom_buf_0_ce1 { O 1 bit } bottom_buf_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 296 \
    name bottom_buf_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bottom_buf_1 \
    op interface \
    ports { bottom_buf_1_address0 { O 8 vector } bottom_buf_1_ce0 { O 1 bit } bottom_buf_1_q0 { I 32 vector } bottom_buf_1_address1 { O 8 vector } bottom_buf_1_ce1 { O 1 bit } bottom_buf_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 297 \
    name bottom_buf_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bottom_buf_2 \
    op interface \
    ports { bottom_buf_2_address0 { O 8 vector } bottom_buf_2_ce0 { O 1 bit } bottom_buf_2_q0 { I 32 vector } bottom_buf_2_address1 { O 8 vector } bottom_buf_2_ce1 { O 1 bit } bottom_buf_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 298 \
    name bottom_buf_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bottom_buf_3 \
    op interface \
    ports { bottom_buf_3_address0 { O 8 vector } bottom_buf_3_ce0 { O 1 bit } bottom_buf_3_q0 { I 32 vector } bottom_buf_3_address1 { O 8 vector } bottom_buf_3_ce1 { O 1 bit } bottom_buf_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 299 \
    name bottom_buf_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bottom_buf_4 \
    op interface \
    ports { bottom_buf_4_address0 { O 8 vector } bottom_buf_4_ce0 { O 1 bit } bottom_buf_4_q0 { I 32 vector } bottom_buf_4_address1 { O 8 vector } bottom_buf_4_ce1 { O 1 bit } bottom_buf_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 300 \
    name bottom_buf_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bottom_buf_5 \
    op interface \
    ports { bottom_buf_5_address0 { O 8 vector } bottom_buf_5_ce0 { O 1 bit } bottom_buf_5_q0 { I 32 vector } bottom_buf_5_address1 { O 8 vector } bottom_buf_5_ce1 { O 1 bit } bottom_buf_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 301 \
    name bottom_buf_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bottom_buf_6 \
    op interface \
    ports { bottom_buf_6_address0 { O 8 vector } bottom_buf_6_ce0 { O 1 bit } bottom_buf_6_q0 { I 32 vector } bottom_buf_6_address1 { O 8 vector } bottom_buf_6_ce1 { O 1 bit } bottom_buf_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 302 \
    name bottom_buf_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bottom_buf_7 \
    op interface \
    ports { bottom_buf_7_address0 { O 8 vector } bottom_buf_7_ce0 { O 1 bit } bottom_buf_7_q0 { I 32 vector } bottom_buf_7_address1 { O 8 vector } bottom_buf_7_ce1 { O 1 bit } bottom_buf_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 303 \
    name bottom_buf_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bottom_buf_8 \
    op interface \
    ports { bottom_buf_8_address0 { O 8 vector } bottom_buf_8_ce0 { O 1 bit } bottom_buf_8_q0 { I 32 vector } bottom_buf_8_address1 { O 8 vector } bottom_buf_8_ce1 { O 1 bit } bottom_buf_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 304 \
    name bottom_buf_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bottom_buf_9 \
    op interface \
    ports { bottom_buf_9_address0 { O 8 vector } bottom_buf_9_ce0 { O 1 bit } bottom_buf_9_q0 { I 32 vector } bottom_buf_9_address1 { O 8 vector } bottom_buf_9_ce1 { O 1 bit } bottom_buf_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 305 \
    name bottom_buf_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bottom_buf_10 \
    op interface \
    ports { bottom_buf_10_address0 { O 8 vector } bottom_buf_10_ce0 { O 1 bit } bottom_buf_10_q0 { I 32 vector } bottom_buf_10_address1 { O 8 vector } bottom_buf_10_ce1 { O 1 bit } bottom_buf_10_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 306 \
    name bottom_buf_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bottom_buf_11 \
    op interface \
    ports { bottom_buf_11_address0 { O 8 vector } bottom_buf_11_ce0 { O 1 bit } bottom_buf_11_q0 { I 32 vector } bottom_buf_11_address1 { O 8 vector } bottom_buf_11_ce1 { O 1 bit } bottom_buf_11_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 307 \
    name bottom_buf_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bottom_buf_12 \
    op interface \
    ports { bottom_buf_12_address0 { O 8 vector } bottom_buf_12_ce0 { O 1 bit } bottom_buf_12_q0 { I 32 vector } bottom_buf_12_address1 { O 8 vector } bottom_buf_12_ce1 { O 1 bit } bottom_buf_12_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 308 \
    name bottom_buf_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bottom_buf_13 \
    op interface \
    ports { bottom_buf_13_address0 { O 8 vector } bottom_buf_13_ce0 { O 1 bit } bottom_buf_13_q0 { I 32 vector } bottom_buf_13_address1 { O 8 vector } bottom_buf_13_ce1 { O 1 bit } bottom_buf_13_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 309 \
    name bottom_buf_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bottom_buf_14 \
    op interface \
    ports { bottom_buf_14_address0 { O 8 vector } bottom_buf_14_ce0 { O 1 bit } bottom_buf_14_q0 { I 32 vector } bottom_buf_14_address1 { O 8 vector } bottom_buf_14_ce1 { O 1 bit } bottom_buf_14_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 310 \
    name bottom_buf_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bottom_buf_15 \
    op interface \
    ports { bottom_buf_15_address0 { O 8 vector } bottom_buf_15_ce0 { O 1 bit } bottom_buf_15_q0 { I 32 vector } bottom_buf_15_address1 { O 8 vector } bottom_buf_15_ce1 { O 1 bit } bottom_buf_15_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 311 \
    name power_buf_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename power_buf_0 \
    op interface \
    ports { power_buf_0_address0 { O 8 vector } power_buf_0_ce0 { O 1 bit } power_buf_0_q0 { I 32 vector } power_buf_0_address1 { O 8 vector } power_buf_0_ce1 { O 1 bit } power_buf_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'power_buf_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 312 \
    name power_buf_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename power_buf_1 \
    op interface \
    ports { power_buf_1_address0 { O 8 vector } power_buf_1_ce0 { O 1 bit } power_buf_1_q0 { I 32 vector } power_buf_1_address1 { O 8 vector } power_buf_1_ce1 { O 1 bit } power_buf_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'power_buf_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 313 \
    name power_buf_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename power_buf_2 \
    op interface \
    ports { power_buf_2_address0 { O 8 vector } power_buf_2_ce0 { O 1 bit } power_buf_2_q0 { I 32 vector } power_buf_2_address1 { O 8 vector } power_buf_2_ce1 { O 1 bit } power_buf_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'power_buf_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 314 \
    name power_buf_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename power_buf_3 \
    op interface \
    ports { power_buf_3_address0 { O 8 vector } power_buf_3_ce0 { O 1 bit } power_buf_3_q0 { I 32 vector } power_buf_3_address1 { O 8 vector } power_buf_3_ce1 { O 1 bit } power_buf_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'power_buf_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 315 \
    name power_buf_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename power_buf_4 \
    op interface \
    ports { power_buf_4_address0 { O 8 vector } power_buf_4_ce0 { O 1 bit } power_buf_4_q0 { I 32 vector } power_buf_4_address1 { O 8 vector } power_buf_4_ce1 { O 1 bit } power_buf_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'power_buf_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 316 \
    name power_buf_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename power_buf_5 \
    op interface \
    ports { power_buf_5_address0 { O 8 vector } power_buf_5_ce0 { O 1 bit } power_buf_5_q0 { I 32 vector } power_buf_5_address1 { O 8 vector } power_buf_5_ce1 { O 1 bit } power_buf_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'power_buf_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 317 \
    name power_buf_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename power_buf_6 \
    op interface \
    ports { power_buf_6_address0 { O 8 vector } power_buf_6_ce0 { O 1 bit } power_buf_6_q0 { I 32 vector } power_buf_6_address1 { O 8 vector } power_buf_6_ce1 { O 1 bit } power_buf_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'power_buf_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 318 \
    name power_buf_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename power_buf_7 \
    op interface \
    ports { power_buf_7_address0 { O 8 vector } power_buf_7_ce0 { O 1 bit } power_buf_7_q0 { I 32 vector } power_buf_7_address1 { O 8 vector } power_buf_7_ce1 { O 1 bit } power_buf_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'power_buf_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 319 \
    name power_buf_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename power_buf_8 \
    op interface \
    ports { power_buf_8_address0 { O 8 vector } power_buf_8_ce0 { O 1 bit } power_buf_8_q0 { I 32 vector } power_buf_8_address1 { O 8 vector } power_buf_8_ce1 { O 1 bit } power_buf_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'power_buf_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 320 \
    name power_buf_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename power_buf_9 \
    op interface \
    ports { power_buf_9_address0 { O 8 vector } power_buf_9_ce0 { O 1 bit } power_buf_9_q0 { I 32 vector } power_buf_9_address1 { O 8 vector } power_buf_9_ce1 { O 1 bit } power_buf_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'power_buf_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 321 \
    name power_buf_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename power_buf_10 \
    op interface \
    ports { power_buf_10_address0 { O 8 vector } power_buf_10_ce0 { O 1 bit } power_buf_10_q0 { I 32 vector } power_buf_10_address1 { O 8 vector } power_buf_10_ce1 { O 1 bit } power_buf_10_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'power_buf_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 322 \
    name power_buf_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename power_buf_11 \
    op interface \
    ports { power_buf_11_address0 { O 8 vector } power_buf_11_ce0 { O 1 bit } power_buf_11_q0 { I 32 vector } power_buf_11_address1 { O 8 vector } power_buf_11_ce1 { O 1 bit } power_buf_11_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'power_buf_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 323 \
    name power_buf_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename power_buf_12 \
    op interface \
    ports { power_buf_12_address0 { O 8 vector } power_buf_12_ce0 { O 1 bit } power_buf_12_q0 { I 32 vector } power_buf_12_address1 { O 8 vector } power_buf_12_ce1 { O 1 bit } power_buf_12_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'power_buf_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 324 \
    name power_buf_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename power_buf_13 \
    op interface \
    ports { power_buf_13_address0 { O 8 vector } power_buf_13_ce0 { O 1 bit } power_buf_13_q0 { I 32 vector } power_buf_13_address1 { O 8 vector } power_buf_13_ce1 { O 1 bit } power_buf_13_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'power_buf_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 325 \
    name power_buf_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename power_buf_14 \
    op interface \
    ports { power_buf_14_address0 { O 8 vector } power_buf_14_ce0 { O 1 bit } power_buf_14_q0 { I 32 vector } power_buf_14_address1 { O 8 vector } power_buf_14_ce1 { O 1 bit } power_buf_14_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'power_buf_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 326 \
    name power_buf_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename power_buf_15 \
    op interface \
    ports { power_buf_15_address0 { O 8 vector } power_buf_15_ce0 { O 1 bit } power_buf_15_q0 { I 32 vector } power_buf_15_address1 { O 8 vector } power_buf_15_ce1 { O 1 bit } power_buf_15_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'power_buf_15'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name compute_flag \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_compute_flag \
    op interface \
    ports { compute_flag { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name cc \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cc \
    op interface \
    ports { cc { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name cn \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cn \
    op interface \
    ports { cn { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name cs \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cs \
    op interface \
    ports { cs { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name ce_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ce_r \
    op interface \
    ports { ce_r { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name cw \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cw \
    op interface \
    ports { cw { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name ct \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ct \
    op interface \
    ports { ct { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name cb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cb \
    op interface \
    ports { cb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name Cap \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Cap \
    op interface \
    ports { Cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name dt \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dt \
    op interface \
    ports { dt { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name amb_temp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_amb_temp \
    op interface \
    ports { amb_temp { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


