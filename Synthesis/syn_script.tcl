##### Define Working Library Directory ######
define_design_lib work -path ./work

########## Defining Top Module ##############
set top_module SYS_TOP

cd "../Formality"
set_svf SYS_TOP.svf
cd "../Synthesis"

################################################
########## 1-Setting design Library ############
################################################
## Search Path
lappend search_path "/home/IC/Projects/Full_System/STD_LIB"
lappend search_path "/home/IC/Projects/Full_System/Design"

## Library Definitions
set TTLIB "/home/IC/Projects/Full_System/STD_LIB/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set SSLIB "/home/IC/Projects/Full_System/STD_LIB/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set FFLIB "/home/IC/Projects/Full_System/STD_LIB/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Target Library and Link Library
set target_library [list $TTLIB $SSLIB $FFLIB]
set link_library [list * $TTLIB $SSLIB $FFLIB]

#################################################
############ 2-Reading RTL Library ##############
#################################################
## Defining important variables
#set FIFO_rtl_list [list ];

#set UART_rtl_list [list ];
set rtl_list [list "../Design/TOP.v" "../Design/SYS_CONTRL.v" "../Design/RegFile.v" "../Design/ClkDiv.v" "../Design/RST_SYNC.v" "../Design/CLK_GATE.v" "../Design/DATA_SYNC.v" \
"../Design/ALU.v" "../Design/PULSE_GEN.v" "../Design/FIFO/F_DATA_SYNC.v" "../Design/FIFO/FIFO_RAM.v" "../Design/FIFO/RD_CONTRL.v" "../Design/FIFO/WR_CONTRL.v" "../Design/FIFO.v" \
"../Design/UART.v" "../Design/UART/FSM_Controller.v" "../Design/UART/Parity.v" "../Design/UART/Serializer.v" "../Design/UART/UART_TX.v" "../Design/UART/Configuration.v" "../Design/UART/Controller.v" "../Design/UART/Sampler.v" "../Design/UART/Sampling_Register.v" "../Design/UART/UART_RX.v"];

#lappend rtl_list $FIFO_rtl_list
#lappend rtl_list $UART_rtl_list

## Reading and linking the Project 
analyze -format verilog $rtl_list
elaborate -lib work $top_module
#read_file -format verilog $rtl_list
#link
check_design

####################################################
#########  3 & 4-Design Constraints ################
####################################################
current_design $top_module
source -echo ./cons.tcl

################################################
########### 5- Compilation #####################
################################################
compile 

set_svf -off

###############################################
########### 6- Reports ########################
###############################################
cd Reports
report_area -hierarchy > area.rpt
report_power -hierarchy > power.rpt
report_timing -max_paths 100 -delay_type min > hold.rpt
report_timing -max_paths 100 -delay_type max > setup.rpt
report_clock -attributes > clocks.rpt
report_constraint -all_violators > constraints.rpt
cd ..

############################################
###### Writing synthesis output files ######
############################################
cd Files
write_file -format verilog -hierarchy -output SYS_TOP.v
write_file -format ddc -output SYS_TOP.ddc 
write_sdf SYS_TOP.sdf
write_sdc SYS_TOP.sdc
cd ..

############################################
############ DFT Preperation ###############
############################################
set max_scan_chain_depth 100
set num_flipflop [sizeof_collection [all_registers -edge_triggered]]
set num_scan_chain [expr $num_flipflop / $max_scan_chain_depth +1]

cd "../Formality"
set_svf -off
cd "../Synthesis"

exit

cd ..
