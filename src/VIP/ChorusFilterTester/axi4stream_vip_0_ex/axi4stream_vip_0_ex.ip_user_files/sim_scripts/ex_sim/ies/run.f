-makelib ies/xil_defaultlib -sv \
  "/cad1/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "/nfs/ug/cad/cad1/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/axis_infrastructure_v1_1_0 \
  "../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/acf8/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies/xil_common_vip_v1_0_0 -sv \
  "../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies/axis_protocol_checker_v1_1_13 \
  "../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/cdb5/hdl/axis_protocol_checker_v1_1_vl_rfs.v" \
-endlib
-makelib ies/axi4stream_vip_v1_0_1 -sv \
  "../../../../axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ipshared/6941/hdl/axi4stream_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies/xil_defaultlib -sv \
  "../../../bd/ex_sim/ip/ex_sim_axi4stream_vip_mst_0/sim/ex_sim_axi4stream_vip_mst_0_pkg.sv" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/ex_sim/ip/ex_sim_axi4stream_vip_mst_0/sim/ex_sim_axi4stream_vip_mst_0.v" \
-endlib
-makelib ies/xil_defaultlib -sv \
  "../../../bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/sim/ex_sim_axi4stream_vip_passthrough_0_pkg.sv" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/sim/ex_sim_axi4stream_vip_passthrough_0.v" \
-endlib
-makelib ies/xil_defaultlib -sv \
  "../../../bd/ex_sim/ip/ex_sim_axi4stream_vip_slv_0/sim/ex_sim_axi4stream_vip_slv_0_pkg.sv" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/ex_sim/ip/ex_sim_axi4stream_vip_slv_0/sim/ex_sim_axi4stream_vip_slv_0.v" \
  "../../../bd/ex_sim/hdl/ex_sim.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

