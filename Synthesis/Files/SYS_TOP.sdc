###################################################################

# Created by write_sdc on Sat Aug 17 06:12:16 2024

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c            \
-max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c\
                         -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c            \
-min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_driving_cell -lib_cell BUFX2M -library                                     \
scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports REF_CLK]
set_driving_cell -lib_cell BUFX2M -library                                     \
scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports UART_CLK]
set_driving_cell -lib_cell BUFX2M -library                                     \
scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports RST]
set_driving_cell -lib_cell BUFX2M -library                                     \
scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports RX_IN]
create_clock [get_ports REF_CLK]  -period 10  -waveform {0 5}
set_clock_latency 0  [get_clocks REF_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks REF_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks REF_CLK]
set_clock_transition -max -rise 0 [get_clocks REF_CLK]
set_clock_transition -min -rise 0 [get_clocks REF_CLK]
set_clock_transition -max -fall 0 [get_clocks REF_CLK]
set_clock_transition -min -fall 0 [get_clocks REF_CLK]
create_clock [get_ports UART_CLK]  -period 271.267  -waveform {0 135.633}
set_clock_latency 0  [get_clocks UART_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks UART_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks UART_CLK]
set_clock_transition -max -rise 0 [get_clocks UART_CLK]
set_clock_transition -min -rise 0 [get_clocks UART_CLK]
set_clock_transition -max -fall 0 [get_clocks UART_CLK]
set_clock_transition -min -fall 0 [get_clocks UART_CLK]
create_generated_clock [get_pins ALU_CLOCK/GATED_CLK]  -name ALU_CLK  -source [get_ports REF_CLK]  -master_clock REF_CLK  -divide_by 1  -add
set_clock_latency 0  [get_clocks ALU_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks ALU_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks ALU_CLK]
set_clock_transition -max -rise 0 [get_clocks ALU_CLK]
set_clock_transition -min -rise 0 [get_clocks ALU_CLK]
set_clock_transition -max -fall 0 [get_clocks ALU_CLK]
set_clock_transition -min -fall 0 [get_clocks ALU_CLK]
create_generated_clock [get_pins UART_TX_Clock_Divider/o_div_clk]  -name TX_CLK  -source [get_ports UART_CLK]  -master_clock UART_CLK  -divide_by 32  -add
set_clock_latency 0  [get_clocks TX_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks TX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks TX_CLK]
set_clock_transition -max -rise 0 [get_clocks TX_CLK]
set_clock_transition -min -rise 0 [get_clocks TX_CLK]
set_clock_transition -max -fall 0 [get_clocks TX_CLK]
set_clock_transition -min -fall 0 [get_clocks TX_CLK]
create_generated_clock [get_pins UART_RX_Clock_Divider/o_div_clk]  -name RX_CLK  -source [get_ports UART_CLK]  -master_clock UART_CLK  -divide_by 1  -add
set_clock_latency 0  [get_clocks RX_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks RX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks RX_CLK]
set_clock_transition -max -rise 0 [get_clocks RX_CLK]
set_clock_transition -min -rise 0 [get_clocks RX_CLK]
set_clock_transition -max -fall 0 [get_clocks RX_CLK]
set_clock_transition -min -fall 0 [get_clocks RX_CLK]
set_input_delay -clock RX_CLK  2  [get_ports RX_IN]
set_output_delay -clock RX_CLK  2  [get_ports PAR_ERROR]
set_output_delay -clock RX_CLK  2  [get_ports STOP_ERROR]
set_output_delay -clock TX_CLK  2  [get_ports TX_OUT]
set_clock_groups  -asynchronous -name REF_CLK_1  -group [list [get_clocks      \
REF_CLK] [get_clocks ALU_CLK]] -group [list [get_clocks UART_CLK] [get_clocks  \
TX_CLK] [get_clocks RX_CLK]]
