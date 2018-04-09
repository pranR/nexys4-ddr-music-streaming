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

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" \
"/cad1/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/nfs/ug/cad/cad1/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" \
"../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_common_vip_v1_0_0  -sv2k12 "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" \
"../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \

vlog -work axis_protocol_checker_v1_1_13  -v2k5 "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" \
"../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/cdb5/hdl/axis_protocol_checker_v1_1_vl_rfs.v" \

vlog -work axi4stream_vip_v1_0_1  -sv2k12 "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" \
"../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl/axi4stream_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" \
"../../../bd/ex_sim/ip/ex_sim_axi4stream_vip_mst_0/sim/ex_sim_axi4stream_vip_mst_0_pkg.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" \
"../../../bd/ex_sim/ip/ex_sim_axi4stream_vip_mst_0/sim/ex_sim_axi4stream_vip_mst_0.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" \
"../../../bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/sim/ex_sim_axi4stream_vip_passthrough_0_pkg.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" \
"../../../bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/sim/ex_sim_axi4stream_vip_passthrough_0.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" \
"../../../bd/ex_sim/ip/ex_sim_axi4stream_vip_slv_0/sim/ex_sim_axi4stream_vip_slv_0_pkg.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl" "+incdir+../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl" \
"../../../bd/ex_sim/ip/ex_sim_axi4stream_vip_slv_0/sim/ex_sim_axi4stream_vip_slv_0.v" \
"../../../bd/ex_sim/hdl/ex_sim.v" \

vlog -work xil_defaultlib \
"glbl.v"

