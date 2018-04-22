onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L axis_infrastructure_v1_1_0 -L xil_common_vip_v1_0_0 -L axis_protocol_checker_v1_1_13 -L axi4stream_vip_v1_0_1 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.ex_sim xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {ex_sim.udo}

run -all

quit -force
