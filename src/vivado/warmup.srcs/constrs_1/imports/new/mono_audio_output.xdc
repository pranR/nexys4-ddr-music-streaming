#PWM Audio Amplifier

set_property -dict { PACKAGE_PIN A11   IOSTANDARD LVCMOS33 } [get_ports { PWM }]; #IO_L4N_T0_15 Sch=aud_pwm
set_property -dict { PACKAGE_PIN D12   IOSTANDARD LVCMOS33 } [get_ports { AUD_SD }]; #IO_L6P_T0_15 Sch=aud_sd