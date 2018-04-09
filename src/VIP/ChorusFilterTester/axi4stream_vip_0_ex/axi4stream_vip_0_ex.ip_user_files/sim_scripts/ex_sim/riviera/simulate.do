onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ex_sim -L xil_defaultlib -L xpm -L axis_infrastructure_v1_1_0 -L xil_common_vip_v1_0_0 -L axis_protocol_checker_v1_1_13 -L axi4stream_vip_v1_0_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ex_sim xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ex_sim.udo}

run -all

endsim

quit -force
