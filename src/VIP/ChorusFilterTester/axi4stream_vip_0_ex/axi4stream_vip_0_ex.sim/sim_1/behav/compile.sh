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
echo "xvlog -m64 --relax -L xil_common_vip_v1_0_0 -L axi4stream_vip_v1_0_1 -L xil_defaultlib -prj axi4stream_vip_0_exdes_tb_vlog.prj"
ExecStep $xv_path/bin/xvlog -m64 --relax -L xil_common_vip_v1_0_0 -L axi4stream_vip_v1_0_1 -L xil_defaultlib -prj axi4stream_vip_0_exdes_tb_vlog.prj 2>&1 | tee compile.log
