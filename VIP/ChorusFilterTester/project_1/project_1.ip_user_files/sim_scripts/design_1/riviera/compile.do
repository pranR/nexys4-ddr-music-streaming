vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/xil_common_vip_v1_0_0
vlib riviera/axis_protocol_checker_v1_1_13
vlib riviera/axi4stream_vip_v1_0_1

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap xil_common_vip_v1_0_0 riviera/xil_common_vip_v1_0_0
vmap axis_protocol_checker_v1_1_13 riviera/axis_protocol_checker_v1_1_13
vmap axi4stream_vip_v1_0_1 riviera/axi4stream_vip_v1_0_1

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl" \
"/cad1/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/nfs/ug/cad/cad1/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl" \
"../../../bd/design_1/hdl/design_1.v" \
"../../../bd/design_1/ipshared/a5c6/src/ChorusFilter.v" \
"../../../bd/design_1/ipshared/a5c6/src/CircularBuffer.v" \
"../../../bd/design_1/ipshared/a5c6/src/SineLUT.v" \
"../../../bd/design_1/ipshared/a5c6/hdl/ChorusFilter_v1_0.v" \
"../../../bd/design_1/ip/design_1_ChorusFilter_0_3/sim/design_1_ChorusFilter_0_3.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_common_vip_v1_0_0  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \

vlog -work axis_protocol_checker_v1_1_13  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/cdb5/hdl/axis_protocol_checker_v1_1_vl_rfs.v" \

vlog -work axi4stream_vip_v1_0_1  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl/axi4stream_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl" \
"../../../bd/design_1/ip/design_1_axi4stream_vip_0_1/sim/design_1_axi4stream_vip_0_1_pkg.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl" \
"../../../bd/design_1/ip/design_1_axi4stream_vip_0_1/sim/design_1_axi4stream_vip_0_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

