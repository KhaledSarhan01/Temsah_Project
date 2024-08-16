vlib work
vlog -f sourcefile.txt
vsim -voptargs=+accs work.tb_SYS_TOP
add wave *
add wave -position insertpoint  \
sim:/tb_SYS_TOP/DUT/Register_File/Register
run -all