# 
# Synthesis run script generated by Vivado
# 

set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.cache/wt [current_project]
set_property parent.project_path /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths /nfs/ug/homes-0/y/yusufal5/ip_repo [current_project]
set_property ip_output_repo /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/ex_sim_axi4stream_vip_passthrough_0.xci
set_property used_in_implementation false [get_files -all /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/ex_sim_axi4stream_vip_passthrough_0_ooc.xdc]
set_property is_locked true [get_files /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/ex_sim_axi4stream_vip_passthrough_0.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.runs/ex_sim_axi4stream_vip_passthrough_0_synth_1 -new_name ex_sim_axi4stream_vip_passthrough_0 -ip [get_ips ex_sim_axi4stream_vip_passthrough_0]]

if { $cached_ip eq {} } {

synth_design -top ex_sim_axi4stream_vip_passthrough_0 -part xc7a100tcsg324-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix ex_sim_axi4stream_vip_passthrough_0_ ex_sim_axi4stream_vip_passthrough_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ex_sim_axi4stream_vip_passthrough_0_stub.v
 lappend ipCachedFiles ex_sim_axi4stream_vip_passthrough_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ex_sim_axi4stream_vip_passthrough_0_stub.vhdl
 lappend ipCachedFiles ex_sim_axi4stream_vip_passthrough_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ex_sim_axi4stream_vip_passthrough_0_sim_netlist.v
 lappend ipCachedFiles ex_sim_axi4stream_vip_passthrough_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ex_sim_axi4stream_vip_passthrough_0_sim_netlist.vhdl
 lappend ipCachedFiles ex_sim_axi4stream_vip_passthrough_0_sim_netlist.vhdl

 config_ip_cache -add -dcp ex_sim_axi4stream_vip_passthrough_0.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips ex_sim_axi4stream_vip_passthrough_0]
}

rename_ref -prefix_all ex_sim_axi4stream_vip_passthrough_0_

write_checkpoint -force -noxdef ex_sim_axi4stream_vip_passthrough_0.dcp

catch { report_utilization -file ex_sim_axi4stream_vip_passthrough_0_utilization_synth.rpt -pb ex_sim_axi4stream_vip_passthrough_0_utilization_synth.pb }

if { [catch {
  file copy -force /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.runs/ex_sim_axi4stream_vip_passthrough_0_synth_1/ex_sim_axi4stream_vip_passthrough_0.dcp /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/ex_sim_axi4stream_vip_passthrough_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/ex_sim_axi4stream_vip_passthrough_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/ex_sim_axi4stream_vip_passthrough_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/ex_sim_axi4stream_vip_passthrough_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/ex_sim_axi4stream_vip_passthrough_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.runs/ex_sim_axi4stream_vip_passthrough_0_synth_1/ex_sim_axi4stream_vip_passthrough_0.dcp /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/ex_sim_axi4stream_vip_passthrough_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.runs/ex_sim_axi4stream_vip_passthrough_0_synth_1/ex_sim_axi4stream_vip_passthrough_0_stub.v /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/ex_sim_axi4stream_vip_passthrough_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.runs/ex_sim_axi4stream_vip_passthrough_0_synth_1/ex_sim_axi4stream_vip_passthrough_0_stub.vhdl /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/ex_sim_axi4stream_vip_passthrough_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.runs/ex_sim_axi4stream_vip_passthrough_0_synth_1/ex_sim_axi4stream_vip_passthrough_0_sim_netlist.v /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/ex_sim_axi4stream_vip_passthrough_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.runs/ex_sim_axi4stream_vip_passthrough_0_synth_1/ex_sim_axi4stream_vip_passthrough_0_sim_netlist.vhdl /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/ex_sim_axi4stream_vip_passthrough_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.ip_user_files/ip/ex_sim_axi4stream_vip_passthrough_0]} {
  catch { 
    file copy -force /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/ex_sim_axi4stream_vip_passthrough_0_stub.v /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.ip_user_files/ip/ex_sim_axi4stream_vip_passthrough_0
  }
}

if {[file isdir /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.ip_user_files/ip/ex_sim_axi4stream_vip_passthrough_0]} {
  catch { 
    file copy -force /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_axi4stream_vip_passthrough_0/ex_sim_axi4stream_vip_passthrough_0_stub.vhdl /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.ip_user_files/ip/ex_sim_axi4stream_vip_passthrough_0
  }
}
