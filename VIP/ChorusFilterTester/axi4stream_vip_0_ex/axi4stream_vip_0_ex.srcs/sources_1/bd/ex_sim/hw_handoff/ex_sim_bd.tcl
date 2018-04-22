
################################################################
# This is a generated script based on design: ex_sim
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source ex_sim_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
}


# CHANGE DESIGN NAME HERE
set design_name ex_sim

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set Ready [ create_bd_port -dir O -from 0 -to 0 Ready ]
  set Valid [ create_bd_port -dir O -from 0 -to 0 Valid ]
  set aclk [ create_bd_port -dir I -type clk aclk ]
  set_property -dict [ list \
CONFIG.CLK_DOMAIN {design_sim_clk_wiz_0_0_clk_out1} \
CONFIG.FREQ_HZ {300000000} \
CONFIG.PHASE {0.0} \
 ] $aclk
  set aresetn [ create_bd_port -dir I -type rst aresetn ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_LOW} \
 ] $aresetn

  # Create instance: axi4stream_vip_mst, and set properties
  set axi4stream_vip_mst [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi4stream_vip:1.0 axi4stream_vip_mst ]
  set_property -dict [ list \
CONFIG.HAS_ACLKEN {0} \
CONFIG.HAS_ARESETN {1} \
CONFIG.HAS_TKEEP {0} \
CONFIG.HAS_TLAST {0} \
CONFIG.HAS_TREADY {1} \
CONFIG.HAS_TSTRB {0} \
CONFIG.HAS_TUSER_BITS_PER_BYTE {0} \
CONFIG.INTERFACE_MODE {MASTER} \
CONFIG.TDATA_NUM_BYTES {4} \
CONFIG.TDEST_WIDTH {0} \
CONFIG.TID_WIDTH {0} \
CONFIG.TUSER_WIDTH {0} \
CONFIG.USER_BITS_PER_BYTE {0} \
 ] $axi4stream_vip_mst

  # Create instance: axi4stream_vip_passthrough, and set properties
  set axi4stream_vip_passthrough [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi4stream_vip:1.0 axi4stream_vip_passthrough ]
  set_property -dict [ list \
CONFIG.HAS_ACLKEN {0} \
CONFIG.HAS_ARESETN {1} \
CONFIG.HAS_TKEEP {0} \
CONFIG.HAS_TLAST {0} \
CONFIG.HAS_TREADY {1} \
CONFIG.HAS_TSTRB {0} \
CONFIG.INTERFACE_MODE {PASS_THROUGH} \
CONFIG.TDATA_NUM_BYTES {4} \
CONFIG.TDEST_WIDTH {0} \
CONFIG.TID_WIDTH {0} \
CONFIG.TUSER_WIDTH {0} \
 ] $axi4stream_vip_passthrough

  # Create instance: axi4stream_vip_slv, and set properties
  set axi4stream_vip_slv [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi4stream_vip:1.0 axi4stream_vip_slv ]
  set_property -dict [ list \
CONFIG.HAS_ACLKEN {0} \
CONFIG.HAS_ARESETN {1} \
CONFIG.HAS_TKEEP {0} \
CONFIG.HAS_TLAST {0} \
CONFIG.HAS_TREADY {1} \
CONFIG.HAS_TSTRB {0} \
CONFIG.INTERFACE_MODE {SLAVE} \
CONFIG.TDATA_NUM_BYTES {4} \
CONFIG.TDEST_WIDTH {0} \
CONFIG.TID_WIDTH {0} \
CONFIG.TUSER_WIDTH {0} \
 ] $axi4stream_vip_slv

  # Create interface connections
  connect_bd_intf_net -intf_net axi4stream_vip_mst_M_AXIS [get_bd_intf_pins axi4stream_vip_mst/M_AXIS] [get_bd_intf_pins axi4stream_vip_passthrough/S_AXIS]
  connect_bd_intf_net -intf_net axi4stream_vip_passthrough_M_AXIS [get_bd_intf_pins axi4stream_vip_passthrough/M_AXIS] [get_bd_intf_pins axi4stream_vip_slv/S_AXIS]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_ports aclk] [get_bd_pins axi4stream_vip_mst/aclk] [get_bd_pins axi4stream_vip_passthrough/aclk] [get_bd_pins axi4stream_vip_slv/aclk]
  connect_bd_net -net aresetn_1 [get_bd_ports aresetn] [get_bd_pins axi4stream_vip_mst/aresetn] [get_bd_pins axi4stream_vip_passthrough/aresetn] [get_bd_pins axi4stream_vip_slv/aresetn]
  connect_bd_net -net axi4stream_vip_mst_m_axis_tvalid [get_bd_ports Valid] [get_bd_pins axi4stream_vip_mst/m_axis_tvalid]
  connect_bd_net -net axi4stream_vip_passthrough_s_axis_tready [get_bd_ports Ready] [get_bd_pins axi4stream_vip_passthrough/s_axis_tready]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


