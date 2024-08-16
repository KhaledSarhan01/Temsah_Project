vlib work
vlog -f sourcefile.txt
vsim -voptargs=+accs work.tb_SYS_TOP
add wave *
run -all