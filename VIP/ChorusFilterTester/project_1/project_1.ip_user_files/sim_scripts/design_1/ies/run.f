-makelib ies/xil_defaultlib -sv \
  "/cad1/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "/nfs/ug/cad/cad1/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/hdl/design_1.v" \
  "../../../bd/design_1/ipshared/a5c6/src/ChorusFilter.v" \
  "../../../bd/design_1/ipshared/a5c6/src/CircularBuffer.v" \
  "../../../bd/design_1/ipshared/a5c6/src/SineLUT.v" \
  "../../../bd/design_1/ipshared/a5c6/hdl/ChorusFilter_v1_0.v" \
  "../../../bd/design_1/ip/design_1_ChorusFilter_0_3/sim/design_1_ChorusFilter_0_3.v" \
-endlib
-makelib ies/axis_infrastructure_v1_1_0 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/acf8/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies/xil_common_vip_v1_0_0 -sv \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies/axis_protocol_checker_v1_1_13 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/cdb5/hdl/axis_protocol_checker_v1_1_vl_rfs.v" \
-endlib
-makelib ies/axi4stream_vip_v1_0_1 -sv \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6941/hdl/axi4stream_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi4stream_vip_0_1/sim/design_1_axi4stream_vip_0_1_pkg.sv" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi4stream_vip_0_1/sim/design_1_axi4stream_vip_0_1.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

