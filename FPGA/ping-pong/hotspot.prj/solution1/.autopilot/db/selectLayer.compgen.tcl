# This script segment is generated automatically by AutoPilot

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
    id 20 \
    name temp \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename temp \
    op interface \
    ports { temp_address0 { O 15 vector } temp_ce0 { O 1 bit } temp_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'temp'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 22 \
    name center_buf_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename center_buf_0 \
    op interface \
    ports { center_buf_0_address0 { O 8 vector } center_buf_0_ce0 { O 1 bit } center_buf_0_we0 { O 1 bit } center_buf_0_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 23 \
    name center_buf_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename center_buf_1 \
    op interface \
    ports { center_buf_1_address0 { O 8 vector } center_buf_1_ce0 { O 1 bit } center_buf_1_we0 { O 1 bit } center_buf_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 24 \
    name center_buf_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename center_buf_2 \
    op interface \
    ports { center_buf_2_address0 { O 8 vector } center_buf_2_ce0 { O 1 bit } center_buf_2_we0 { O 1 bit } center_buf_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 25 \
    name center_buf_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename center_buf_3 \
    op interface \
    ports { center_buf_3_address0 { O 8 vector } center_buf_3_ce0 { O 1 bit } center_buf_3_we0 { O 1 bit } center_buf_3_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 26 \
    name center_buf_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename center_buf_4 \
    op interface \
    ports { center_buf_4_address0 { O 8 vector } center_buf_4_ce0 { O 1 bit } center_buf_4_we0 { O 1 bit } center_buf_4_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 27 \
    name center_buf_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename center_buf_5 \
    op interface \
    ports { center_buf_5_address0 { O 8 vector } center_buf_5_ce0 { O 1 bit } center_buf_5_we0 { O 1 bit } center_buf_5_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 28 \
    name center_buf_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename center_buf_6 \
    op interface \
    ports { center_buf_6_address0 { O 8 vector } center_buf_6_ce0 { O 1 bit } center_buf_6_we0 { O 1 bit } center_buf_6_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 29 \
    name center_buf_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename center_buf_7 \
    op interface \
    ports { center_buf_7_address0 { O 8 vector } center_buf_7_ce0 { O 1 bit } center_buf_7_we0 { O 1 bit } center_buf_7_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 30 \
    name center_buf_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename center_buf_8 \
    op interface \
    ports { center_buf_8_address0 { O 8 vector } center_buf_8_ce0 { O 1 bit } center_buf_8_we0 { O 1 bit } center_buf_8_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 31 \
    name center_buf_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename center_buf_9 \
    op interface \
    ports { center_buf_9_address0 { O 8 vector } center_buf_9_ce0 { O 1 bit } center_buf_9_we0 { O 1 bit } center_buf_9_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 32 \
    name center_buf_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename center_buf_10 \
    op interface \
    ports { center_buf_10_address0 { O 8 vector } center_buf_10_ce0 { O 1 bit } center_buf_10_we0 { O 1 bit } center_buf_10_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 33 \
    name center_buf_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename center_buf_11 \
    op interface \
    ports { center_buf_11_address0 { O 8 vector } center_buf_11_ce0 { O 1 bit } center_buf_11_we0 { O 1 bit } center_buf_11_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 34 \
    name center_buf_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename center_buf_12 \
    op interface \
    ports { center_buf_12_address0 { O 8 vector } center_buf_12_ce0 { O 1 bit } center_buf_12_we0 { O 1 bit } center_buf_12_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 35 \
    name center_buf_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename center_buf_13 \
    op interface \
    ports { center_buf_13_address0 { O 8 vector } center_buf_13_ce0 { O 1 bit } center_buf_13_we0 { O 1 bit } center_buf_13_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 36 \
    name center_buf_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename center_buf_14 \
    op interface \
    ports { center_buf_14_address0 { O 8 vector } center_buf_14_ce0 { O 1 bit } center_buf_14_we0 { O 1 bit } center_buf_14_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 37 \
    name center_buf_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename center_buf_15 \
    op interface \
    ports { center_buf_15_address0 { O 8 vector } center_buf_15_ce0 { O 1 bit } center_buf_15_we0 { O 1 bit } center_buf_15_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'center_buf_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 38 \
    name top_buf_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename top_buf_0 \
    op interface \
    ports { top_buf_0_address0 { O 8 vector } top_buf_0_ce0 { O 1 bit } top_buf_0_we0 { O 1 bit } top_buf_0_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 39 \
    name top_buf_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename top_buf_1 \
    op interface \
    ports { top_buf_1_address0 { O 8 vector } top_buf_1_ce0 { O 1 bit } top_buf_1_we0 { O 1 bit } top_buf_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 40 \
    name top_buf_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename top_buf_2 \
    op interface \
    ports { top_buf_2_address0 { O 8 vector } top_buf_2_ce0 { O 1 bit } top_buf_2_we0 { O 1 bit } top_buf_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 41 \
    name top_buf_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename top_buf_3 \
    op interface \
    ports { top_buf_3_address0 { O 8 vector } top_buf_3_ce0 { O 1 bit } top_buf_3_we0 { O 1 bit } top_buf_3_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 42 \
    name top_buf_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename top_buf_4 \
    op interface \
    ports { top_buf_4_address0 { O 8 vector } top_buf_4_ce0 { O 1 bit } top_buf_4_we0 { O 1 bit } top_buf_4_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 43 \
    name top_buf_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename top_buf_5 \
    op interface \
    ports { top_buf_5_address0 { O 8 vector } top_buf_5_ce0 { O 1 bit } top_buf_5_we0 { O 1 bit } top_buf_5_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 44 \
    name top_buf_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename top_buf_6 \
    op interface \
    ports { top_buf_6_address0 { O 8 vector } top_buf_6_ce0 { O 1 bit } top_buf_6_we0 { O 1 bit } top_buf_6_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 45 \
    name top_buf_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename top_buf_7 \
    op interface \
    ports { top_buf_7_address0 { O 8 vector } top_buf_7_ce0 { O 1 bit } top_buf_7_we0 { O 1 bit } top_buf_7_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 46 \
    name top_buf_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename top_buf_8 \
    op interface \
    ports { top_buf_8_address0 { O 8 vector } top_buf_8_ce0 { O 1 bit } top_buf_8_we0 { O 1 bit } top_buf_8_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 47 \
    name top_buf_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename top_buf_9 \
    op interface \
    ports { top_buf_9_address0 { O 8 vector } top_buf_9_ce0 { O 1 bit } top_buf_9_we0 { O 1 bit } top_buf_9_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 48 \
    name top_buf_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename top_buf_10 \
    op interface \
    ports { top_buf_10_address0 { O 8 vector } top_buf_10_ce0 { O 1 bit } top_buf_10_we0 { O 1 bit } top_buf_10_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 49 \
    name top_buf_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename top_buf_11 \
    op interface \
    ports { top_buf_11_address0 { O 8 vector } top_buf_11_ce0 { O 1 bit } top_buf_11_we0 { O 1 bit } top_buf_11_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 50 \
    name top_buf_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename top_buf_12 \
    op interface \
    ports { top_buf_12_address0 { O 8 vector } top_buf_12_ce0 { O 1 bit } top_buf_12_we0 { O 1 bit } top_buf_12_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 51 \
    name top_buf_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename top_buf_13 \
    op interface \
    ports { top_buf_13_address0 { O 8 vector } top_buf_13_ce0 { O 1 bit } top_buf_13_we0 { O 1 bit } top_buf_13_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 52 \
    name top_buf_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename top_buf_14 \
    op interface \
    ports { top_buf_14_address0 { O 8 vector } top_buf_14_ce0 { O 1 bit } top_buf_14_we0 { O 1 bit } top_buf_14_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 53 \
    name top_buf_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename top_buf_15 \
    op interface \
    ports { top_buf_15_address0 { O 8 vector } top_buf_15_ce0 { O 1 bit } top_buf_15_we0 { O 1 bit } top_buf_15_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_buf_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 54 \
    name bottom_buf_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bottom_buf_0 \
    op interface \
    ports { bottom_buf_0_address0 { O 8 vector } bottom_buf_0_ce0 { O 1 bit } bottom_buf_0_we0 { O 1 bit } bottom_buf_0_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 55 \
    name bottom_buf_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bottom_buf_1 \
    op interface \
    ports { bottom_buf_1_address0 { O 8 vector } bottom_buf_1_ce0 { O 1 bit } bottom_buf_1_we0 { O 1 bit } bottom_buf_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 56 \
    name bottom_buf_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bottom_buf_2 \
    op interface \
    ports { bottom_buf_2_address0 { O 8 vector } bottom_buf_2_ce0 { O 1 bit } bottom_buf_2_we0 { O 1 bit } bottom_buf_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 57 \
    name bottom_buf_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bottom_buf_3 \
    op interface \
    ports { bottom_buf_3_address0 { O 8 vector } bottom_buf_3_ce0 { O 1 bit } bottom_buf_3_we0 { O 1 bit } bottom_buf_3_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 58 \
    name bottom_buf_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bottom_buf_4 \
    op interface \
    ports { bottom_buf_4_address0 { O 8 vector } bottom_buf_4_ce0 { O 1 bit } bottom_buf_4_we0 { O 1 bit } bottom_buf_4_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 59 \
    name bottom_buf_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bottom_buf_5 \
    op interface \
    ports { bottom_buf_5_address0 { O 8 vector } bottom_buf_5_ce0 { O 1 bit } bottom_buf_5_we0 { O 1 bit } bottom_buf_5_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 60 \
    name bottom_buf_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bottom_buf_6 \
    op interface \
    ports { bottom_buf_6_address0 { O 8 vector } bottom_buf_6_ce0 { O 1 bit } bottom_buf_6_we0 { O 1 bit } bottom_buf_6_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 61 \
    name bottom_buf_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bottom_buf_7 \
    op interface \
    ports { bottom_buf_7_address0 { O 8 vector } bottom_buf_7_ce0 { O 1 bit } bottom_buf_7_we0 { O 1 bit } bottom_buf_7_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 62 \
    name bottom_buf_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bottom_buf_8 \
    op interface \
    ports { bottom_buf_8_address0 { O 8 vector } bottom_buf_8_ce0 { O 1 bit } bottom_buf_8_we0 { O 1 bit } bottom_buf_8_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 63 \
    name bottom_buf_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bottom_buf_9 \
    op interface \
    ports { bottom_buf_9_address0 { O 8 vector } bottom_buf_9_ce0 { O 1 bit } bottom_buf_9_we0 { O 1 bit } bottom_buf_9_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 64 \
    name bottom_buf_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bottom_buf_10 \
    op interface \
    ports { bottom_buf_10_address0 { O 8 vector } bottom_buf_10_ce0 { O 1 bit } bottom_buf_10_we0 { O 1 bit } bottom_buf_10_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 65 \
    name bottom_buf_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bottom_buf_11 \
    op interface \
    ports { bottom_buf_11_address0 { O 8 vector } bottom_buf_11_ce0 { O 1 bit } bottom_buf_11_we0 { O 1 bit } bottom_buf_11_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 66 \
    name bottom_buf_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bottom_buf_12 \
    op interface \
    ports { bottom_buf_12_address0 { O 8 vector } bottom_buf_12_ce0 { O 1 bit } bottom_buf_12_we0 { O 1 bit } bottom_buf_12_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 67 \
    name bottom_buf_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bottom_buf_13 \
    op interface \
    ports { bottom_buf_13_address0 { O 8 vector } bottom_buf_13_ce0 { O 1 bit } bottom_buf_13_we0 { O 1 bit } bottom_buf_13_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 68 \
    name bottom_buf_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bottom_buf_14 \
    op interface \
    ports { bottom_buf_14_address0 { O 8 vector } bottom_buf_14_ce0 { O 1 bit } bottom_buf_14_we0 { O 1 bit } bottom_buf_14_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 69 \
    name bottom_buf_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bottom_buf_15 \
    op interface \
    ports { bottom_buf_15_address0 { O 8 vector } bottom_buf_15_ce0 { O 1 bit } bottom_buf_15_we0 { O 1 bit } bottom_buf_15_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bottom_buf_15'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name load_flag \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_load_flag \
    op interface \
    ports { load_flag { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name layer \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_layer \
    op interface \
    ports { layer { I 4 vector } } \
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


