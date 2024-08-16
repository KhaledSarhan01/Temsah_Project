
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. #set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

#################################################################################### 
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

## Reference Clock "Fequecny = 100 MHz"
set REF_CLK_NAME "REF_CLK"
set REF_CLK_PER 10
set REF_CLK_SETUP_SKEW 0.2
set REF_CLK_HOLD_SKEW 0.1
set REF_CLK_LAT 0
set REF_CLK_RISE 0
set REF_CLK_FALL 0

create_clock -name $REF_CLK_NAME -period $REF_CLK_PER -waveform "0 [expr $REF_CLK_PER/2]" [get_ports "REF_CLK"]
set_clock_uncertainty -setup $REF_CLK_SETUP_SKEW [get_clocks $REF_CLK_NAME]
set_clock_uncertainty -hold $REF_CLK_HOLD_SKEW  [get_clocks $REF_CLK_NAME]
set_clock_transition -rise $REF_CLK_RISE  [get_clocks $REF_CLK_NAME]
set_clock_transition -fall $REF_CLK_FALL  [get_clocks $REF_CLK_NAME]
set_clock_latency $REF_CLK_LAT [get_clocks $REF_CLK_NAME]
set_dont_touch_network $REF_CLK_NAME

## UART Clock "Frequency = 3.6864 MHz" 
set UART_CLK_NAME "UART_CLK"
set UART_CLK_PER 271.267
set UART_CLK_SETUP_SKEW 0.2
set UART_CLK_HOLD_SKEW 0.1
set UART_CLK_LAT 0
set UART_CLK_RISE 0
set UART_CLK_FALL 0

create_clock -name $UART_CLK_NAME -period $UART_CLK_PER -waveform "0 [expr $UART_CLK_PER/2]" [get_ports "UART_CLK"]
set_clock_uncertainty -setup $UART_CLK_SETUP_SKEW [get_clocks $UART_CLK_NAME]
set_clock_uncertainty -hold $UART_CLK_HOLD_SKEW  [get_clocks $UART_CLK_NAME]
set_clock_transition -rise $UART_CLK_RISE  [get_clocks $UART_CLK_NAME]
set_clock_transition -fall $UART_CLK_FALL  [get_clocks $UART_CLK_NAME]
set_clock_latency $UART_CLK_LAT [get_clocks $UART_CLK_NAME]

set_dont_touch_network $UART_CLK_NAME

## ALU CLK
set ALU_CLK_NAME "ALU_CLK"
set ALU_DIVIDE_FACTOR 1
set ALU_CLK_SETUP_SKEW 0.2
set ALU_CLK_HOLD_SKEW 0.1
set ALU_CLK_LAT 0
set ALU_CLK_RISE 0
set ALU_CLK_FALL 0

create_generated_clock -master_clock $REF_CLK_NAME -source [get_ports "REF_CLK"] \
-name $ALU_CLK_NAME -divide_by $ALU_DIVIDE_FACTOR [get_ports "ALU_CLOCK/GATED_CLK"]
set_clock_uncertainty -setup $ALU_CLK_SETUP_SKEW [get_clocks $ALU_CLK_NAME]
set_clock_uncertainty -hold $ALU_CLK_HOLD_SKEW  [get_clocks $ALU_CLK_NAME]
set_clock_transition -rise $ALU_CLK_RISE  [get_clocks $ALU_CLK_NAME]
set_clock_transition -fall $ALU_CLK_FALL  [get_clocks $ALU_CLK_NAME]
set_clock_latency $ALU_CLK_LAT [get_clocks $ALU_CLK_NAME]

set_dont_touch_network $ALU_CLK_NAME

## TX CLK
set TX_CLK_NAME "TX_CLK"
set TX_DIVIDE_FACTOR 32
set TX_CLK_PER [expr $TX_DIVIDE_FACTOR * $UART_CLK_PER]
set TX_CLK_SETUP_SKEW 0.2
set TX_CLK_HOLD_SKEW 0.1
set TX_CLK_LAT 0
set TX_CLK_RISE 0
set TX_CLK_FALL 0

create_generated_clock -master_clock $UART_CLK_NAME -source [get_ports "UART_CLK"] \
-name $TX_CLK_NAME -divide_by $TX_DIVIDE_FACTOR [get_port "UART_TX_Clock_Divider/o_div_clk"]
set_clock_uncertainty -setup $TX_CLK_SETUP_SKEW [get_clocks $TX_CLK_NAME]
set_clock_uncertainty -hold $TX_CLK_HOLD_SKEW  [get_clocks $TX_CLK_NAME]
set_clock_transition -rise $TX_CLK_RISE  [get_clocks $TX_CLK_NAME]
set_clock_transition -fall $TX_CLK_FALL  [get_clocks $TX_CLK_NAME]
set_clock_latency $TX_CLK_LAT [get_clocks $TX_CLK_NAME]

set_dont_touch_network $TX_CLK_NAME

## RX CLK
set RX_CLK_NAME "RX_CLK"
set RX_DIVIDE_FACTOR 1
set RX_CLK_PER [expr $RX_DIVIDE_FACTOR * $UART_CLK_PER]
set RX_CLK_SETUP_SKEW 0.2
set RX_CLK_HOLD_SKEW 0.1
set RX_CLK_LAT 0
set RX_CLK_RISE 0
set RX_CLK_FALL 0

create_generated_clock -master_clock $UART_CLK_NAME -source [get_ports "UART_CLK"] \
-name $RX_CLK_NAME -divide_by $RX_DIVIDE_FACTOR [get_port "UART_RX_Clock_Divider/o_div_clk"]
set_clock_uncertainty -setup $RX_CLK_SETUP_SKEW [get_clocks $RX_CLK_NAME]
set_clock_uncertainty -hold $RX_CLK_HOLD_SKEW  [get_clocks $RX_CLK_NAME]
set_clock_transition -rise $RX_CLK_RISE  [get_clocks $RX_CLK_NAME]
set_clock_transition -fall $RX_CLK_FALL  [get_clocks $RX_CLK_NAME]
set_clock_latency $RX_CLK_LAT [get_clocks $RX_CLK_NAME]

set_dont_touch_network $RX_CLK_NAME

####################################################################################
           #########################################################
                  #### Section 2 : Clocks Relationships ####
           #########################################################
####################################################################################


####################################################################################
           #########################################################
             #### Section 3 : #set input/output delay on ports ####
           #########################################################
####################################################################################

set in_delay  [expr 0.2*$RX_CLK_PER]
set out_delay [expr 0.2*$TX_CLK_PER]

#Constrain Input Paths
set input_src_list [list "RX_IN"]
set_input_delay $in_delay -clock $RX_CLK_NAME [get_port $input_src_list]

#Constrain Output Paths
set output_src_list [list "TX_OUT" "PAR_ERROR" "STOP_ERROR"]
set_output_delay $out_delay -clock $TX_CLK_NAME [get_port $output_src_list]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

#functional ports
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_ports "RX_IN"]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_ports "REF_CLK"]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_ports "UART_CLK"]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_ports "RST"]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

#functional ports
set_load 0.1  [get_ports $output_src_list]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################

#set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

####################################################################################
           #########################################################
                  #### Section 8 : Case Analysis ####
           #########################################################
####################################################################################
set_clock_groups -asynchronous -group [get_clocks "$REF_CLK_NAME $ALU_CLK_NAME"] -group [get_clocks "$UART_CLK_NAME $TX_CLK_NAME $RX_CLK_NAME"]

####################################################################################

