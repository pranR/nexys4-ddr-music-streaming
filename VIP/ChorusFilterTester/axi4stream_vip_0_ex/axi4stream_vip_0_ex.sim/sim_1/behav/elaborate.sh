#!/bin/bash -f
xv_path="/cad1/Xilinx/Vivado/2017.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto a5eeb679ace84249b6406f50e0a21206 -m64 --debug typical --relax --mt 8 -L axis_infrastructure_v1_1_0 -L xil_common_vip_v1_0_0 -L axis_protocol_checker_v1_1_13 -L axi4stream_vip_v1_0_1 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot axi4stream_vip_0_exdes_tb_behav xil_defaultlib.axi4stream_vip_0_exdes_tb xil_defaultlib.glbl -log elaborate.log