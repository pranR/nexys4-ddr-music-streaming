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
ExecStep $xv_path/bin/xsim axi4stream_vip_0_exdes_tb_behav -key {Behavioral:sim_1:Functional:axi4stream_vip_0_exdes_tb} -tclbatch axi4stream_vip_0_exdes_tb.tcl -log simulate.log
