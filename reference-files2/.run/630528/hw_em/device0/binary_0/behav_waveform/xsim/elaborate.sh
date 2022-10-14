#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2022.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Thu Oct 13 19:36:23 CST 2022
# SW Build 3526262 on Mon Apr 18 15:47:01 MDT 2022
#
# IP Build 3524634 on Mon Apr 18 20:55:01 MDT 2022
#
# usage: elaborate.sh
#
# ****************************************************************************
xv_lib_path="/opt/Xilinx/Vivado/2022.1/lib/lnx64.o/Ubuntu/20:/opt/Xilinx/Vivado/2022.1/lib/lnx64.o/Ubuntu:/opt/Xilinx/Vivado/2022.1/lib/lnx64.o"
[ -z "$LIBRARY_PATH" ] && export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu || export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:$LIBRARY_PATH
set -Eeuo pipefail

xv_cxl_lib_path="/opt/Xilinx/Vivado/2022.1/data/xsim"
xv_cpt_lib_path="/opt/Xilinx/Vivado/2022.1/data/simmodels/xsim/2022.1/lnx64/6.2.0/systemc/protected"
xv_ext_lib_path="/opt/Xilinx/Vivado/2022.1/data/simmodels/xsim/2022.1/lnx64/6.2.0/ext"
xv_boost_lib_path="/opt/Xilinx/Vivado/2022.1/tps/boost_1_72_0"

# link design libraries
echo "xsc --shared --cppversion 14 -lib xil_defaultlib -gcc_link_options "-L$xv_cxl_lib_path/ip/sim_qdma_sc_v1_0 -lsim_qdma_sc_v1_0" -gcc_link_options "-L$xv_ext_lib_path/protobuf -lprotobuf" -gcc_link_options "-L$xv_cxl_lib_path/ip/xtlm_ipc_v1_0 -lxtlm_ipc_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/xtlm -lxtlm" -gcc_link_options "-L$xv_cxl_lib_path/ip/xscl -lxscl" -gcc_link_options "-L$xv_cxl_lib_path/ip/sim_qdma_cpp_v1_0 -lsim_qdma_cpp_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/xtlm_ap_ctrl_v1_0 -lxtlm_ap_ctrl_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0 -lxtlm_simple_interconnect_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/common_rpc_v1 -lcommon_rpc_v1" -gcc_link_options "-L$xv_cxl_lib_path/ip/common_cpp_v1_0 -lcommon_cpp_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/emu_perf_common_v1_0 -lemu_perf_common_v1_0" -o libdpi.so"
xsc --shared --cppversion 14 -lib xil_defaultlib -gcc_link_options "-L$xv_cxl_lib_path/ip/sim_qdma_sc_v1_0 -lsim_qdma_sc_v1_0" -gcc_link_options "-L$xv_ext_lib_path/protobuf -lprotobuf" -gcc_link_options "-L$xv_cxl_lib_path/ip/xtlm_ipc_v1_0 -lxtlm_ipc_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/xtlm -lxtlm" -gcc_link_options "-L$xv_cxl_lib_path/ip/xscl -lxscl" -gcc_link_options "-L$xv_cxl_lib_path/ip/sim_qdma_cpp_v1_0 -lsim_qdma_cpp_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/xtlm_ap_ctrl_v1_0 -lxtlm_ap_ctrl_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0 -lxtlm_simple_interconnect_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/common_rpc_v1 -lcommon_rpc_v1" -gcc_link_options "-L$xv_cxl_lib_path/ip/common_cpp_v1_0 -lcommon_cpp_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/emu_perf_common_v1_0 -lemu_perf_common_v1_0" -o libdpi.so

# elaborate design
echo "xelab --incr --debug typical --relax --mt 8 -sv_root "$xv_cxl_lib_path/ip/sim_qdma_sc_v1_0" -sc_lib libsim_qdma_sc_v1_0.so --include "$xv_cxl_lib_path/ip/sim_qdma_sc_v1_0/include" -sv_root "$xv_ext_lib_path/protobuf" -sc_lib libprotobuf.so --include "$xv_ext_lib_path/protobuf/include" -sv_root "$xv_cxl_lib_path/ip/xtlm_ipc_v1_0" -sc_lib libxtlm_ipc_v1_0.so --include "$xv_cxl_lib_path/ip/xtlm_ipc_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/xtlm" -sc_lib libxtlm.so --include "$xv_cxl_lib_path/ip/xtlm/include" -sv_root "$xv_cxl_lib_path/ip/xscl" -sc_lib libxscl.so --include "$xv_cxl_lib_path/ip/xscl/include" -sv_root "$xv_cxl_lib_path/ip/sim_qdma_cpp_v1_0" -sc_lib libsim_qdma_cpp_v1_0.so --include "$xv_cxl_lib_path/ip/sim_qdma_cpp_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/xtlm_ap_ctrl_v1_0" -sc_lib libxtlm_ap_ctrl_v1_0.so --include "$xv_cxl_lib_path/ip/xtlm_ap_ctrl_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0" -sc_lib libxtlm_simple_interconnect_v1_0.so --include "$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/common_rpc_v1" -sc_lib libcommon_rpc_v1.so --include "$xv_cxl_lib_path/ip/common_rpc_v1/include" -sv_root "$xv_cxl_lib_path/ip/common_cpp_v1_0" -sc_lib libcommon_cpp_v1_0.so --include "$xv_cxl_lib_path/ip/common_cpp_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/emu_perf_common_v1_0" -sc_lib libemu_perf_common_v1_0.so --include "$xv_cxl_lib_path/ip/emu_perf_common_v1_0/include" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_smartconn_data_0_0/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_smartconn_data_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_3/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_3/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_4/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_4/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_5/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_5/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_6/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_6/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_7/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_7/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_8/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_8/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_17/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_17/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_9/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_9/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_11/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_11/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_13/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_13/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_15/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_15/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_0/sysc/include" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_5/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_5/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_8/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_8/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_11/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_11/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_14/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_14/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_3/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_3/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_4/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_4/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_6/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_6/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_7/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_7/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_9/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_9/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_10/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_10/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_12/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_12/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_13/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_13/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_profile_vip_0_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_profile_vip_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_irq_const_tieoff_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_hub_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_hub_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon0_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon1_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon1_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon2_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon2_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon3_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon3_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon4_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon4_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_xbar_3/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_xbar_3/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_xbar_4/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_xbar_4/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m01_regslice_4/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m01_regslice_4/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m02_regslice_4/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m02_regslice_4/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m03_regslice_4/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m03_regslice_4/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_1/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_1/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_s00_regslice_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_s00_regslice_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m00_regslice_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m00_regslice_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_2/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_2/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m01_regslice_5/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m01_regslice_5/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_3/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_3/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m02_regslice_5/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m02_regslice_5/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_4/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_4/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m03_regslice_5/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m03_regslice_5/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_5/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_5/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m04_regslice_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m04_regslice_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_6/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_6/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m05_regslice_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m05_regslice_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_7/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_7/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m06_regslice_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m06_regslice_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_8/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_8/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/sim" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_embedded_schedular_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_embedded_schedular_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_smartconnect_0_0/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_smartconnect_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_axi_vip_0_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_axi_vip_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_sim_address_0_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_sim_address_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_sim_qdma_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_top/sim" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_xbar_0/src" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_xbar_0/sim" --include "$xv_boost_lib_path" -L xil_defaultlib -L sim_clk_gen_v1_0_3 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xlconcat_v2_1_4 -L blk_mem_gen_v8_4_5 -L lib_pkg_v1_0_2 -L axi_apb_bridge_v3_0_17 -L util_reduced_logic_v2_0_4 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_28 -L uvm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm -sv_root "." -sc_lib libdpi.so --snapshot pfm_top_wrapper_behav xil_defaultlib.pfm_top_wrapper xil_defaultlib.glbl -log elaborate.log   -ignore_assertions  --debug sc"
xelab --incr --debug typical --relax --mt 8 -sv_root "$xv_cxl_lib_path/ip/sim_qdma_sc_v1_0" -sc_lib libsim_qdma_sc_v1_0.so --include "$xv_cxl_lib_path/ip/sim_qdma_sc_v1_0/include" -sv_root "$xv_ext_lib_path/protobuf" -sc_lib libprotobuf.so --include "$xv_ext_lib_path/protobuf/include" -sv_root "$xv_cxl_lib_path/ip/xtlm_ipc_v1_0" -sc_lib libxtlm_ipc_v1_0.so --include "$xv_cxl_lib_path/ip/xtlm_ipc_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/xtlm" -sc_lib libxtlm.so --include "$xv_cxl_lib_path/ip/xtlm/include" -sv_root "$xv_cxl_lib_path/ip/xscl" -sc_lib libxscl.so --include "$xv_cxl_lib_path/ip/xscl/include" -sv_root "$xv_cxl_lib_path/ip/sim_qdma_cpp_v1_0" -sc_lib libsim_qdma_cpp_v1_0.so --include "$xv_cxl_lib_path/ip/sim_qdma_cpp_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/xtlm_ap_ctrl_v1_0" -sc_lib libxtlm_ap_ctrl_v1_0.so --include "$xv_cxl_lib_path/ip/xtlm_ap_ctrl_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0" -sc_lib libxtlm_simple_interconnect_v1_0.so --include "$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/common_rpc_v1" -sc_lib libcommon_rpc_v1.so --include "$xv_cxl_lib_path/ip/common_rpc_v1/include" -sv_root "$xv_cxl_lib_path/ip/common_cpp_v1_0" -sc_lib libcommon_cpp_v1_0.so --include "$xv_cxl_lib_path/ip/common_cpp_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/emu_perf_common_v1_0" -sc_lib libemu_perf_common_v1_0.so --include "$xv_cxl_lib_path/ip/emu_perf_common_v1_0/include" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_smartconn_data_0_0/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_smartconn_data_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_3/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_3/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_4/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_4/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_5/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_5/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_6/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_6/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_7/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_7/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_8/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_8/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_17/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_17/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_9/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_9/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_11/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_11/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_13/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_13/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_15/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_15/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_0/sysc/include" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_5/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_5/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_8/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_8/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_11/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_11/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_14/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_14/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_3/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_3/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_4/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_4/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_6/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_6/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_7/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_7/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_9/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_9/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_10/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_10/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_12/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_12/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_13/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/ip/ip_13/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_hmss_0_0/bd_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_profile_vip_0_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_profile_vip_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_irq_const_tieoff_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_hub_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_hub_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon0_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon1_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon1_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon2_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon2_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon3_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon3_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon4_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon4_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_xbar_3/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_xbar_3/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_xbar_4/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_xbar_4/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m01_regslice_4/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m01_regslice_4/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m02_regslice_4/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m02_regslice_4/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m03_regslice_4/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m03_regslice_4/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_1/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_1/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_s00_regslice_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_s00_regslice_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m00_regslice_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m00_regslice_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_2/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_2/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m01_regslice_5/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m01_regslice_5/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_3/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_3/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m02_regslice_5/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m02_regslice_5/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_4/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_4/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m03_regslice_5/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m03_regslice_5/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_5/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_5/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m04_regslice_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m04_regslice_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_6/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_6/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m05_regslice_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m05_regslice_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_7/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_7/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m06_regslice_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_m06_regslice_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_8/sysc" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_auto_cc_8/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/sim" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_embedded_schedular_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_embedded_schedular_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_smartconnect_0_0/xtlm" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_smartconnect_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_axi_vip_0_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_axi_vip_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_sim_address_0_0/sysc" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_sim_address_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_sim_qdma_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_top/sim" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_xbar_0/src" --include "../../../../prj.ip_user_files/bd/pfm_top/ip/pfm_top_xbar_0/sim" --include "$xv_boost_lib_path" -L xil_defaultlib -L sim_clk_gen_v1_0_3 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xlconcat_v2_1_4 -L blk_mem_gen_v8_4_5 -L lib_pkg_v1_0_2 -L axi_apb_bridge_v3_0_17 -L util_reduced_logic_v2_0_4 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_28 -L uvm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm -sv_root "." -sc_lib libdpi.so --snapshot pfm_top_wrapper_behav xil_defaultlib.pfm_top_wrapper xil_defaultlib.glbl -log elaborate.log   -ignore_assertions  --debug sc
