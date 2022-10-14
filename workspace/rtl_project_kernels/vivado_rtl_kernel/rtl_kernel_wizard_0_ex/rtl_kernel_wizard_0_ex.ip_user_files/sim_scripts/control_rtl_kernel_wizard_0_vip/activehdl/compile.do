vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/xil_defaultlib
vlib activehdl/axi_vip_v1_1_12

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_vip_v1_1_12 activehdl/axi_vip_v1_1_12

vlog -work xilinx_vip  -sv2k12 "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic/hdl" "+incdir+../../../../rtl_kernel_wizard_0_ex.gen/sources_1/ip/control_rtl_kernel_wizard_0_vip/hdl" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"/opt/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+../../../../rtl_kernel_wizard_0_ex.gen/sources_1/ip/control_rtl_kernel_wizard_0_vip/hdl" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic/hdl" "+incdir+../../../../rtl_kernel_wizard_0_ex.gen/sources_1/ip/control_rtl_kernel_wizard_0_vip/hdl" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../rtl_kernel_wizard_0_ex.gen/sources_1/ip/control_rtl_kernel_wizard_0_vip/sim/control_rtl_kernel_wizard_0_vip_pkg.sv" \

vlog -work axi_vip_v1_1_12  -sv2k12 "+incdir+../../../ipstatic/hdl" "+incdir+../../../../rtl_kernel_wizard_0_ex.gen/sources_1/ip/control_rtl_kernel_wizard_0_vip/hdl" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic/hdl" "+incdir+../../../../rtl_kernel_wizard_0_ex.gen/sources_1/ip/control_rtl_kernel_wizard_0_vip/hdl" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../rtl_kernel_wizard_0_ex.gen/sources_1/ip/control_rtl_kernel_wizard_0_vip/sim/control_rtl_kernel_wizard_0_vip.sv" \

vlog -work xil_defaultlib \
"glbl.v"

