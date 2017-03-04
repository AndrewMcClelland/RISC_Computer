transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/booth_32_algorithm.vhd}

vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/booth_32_algorithm_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  booth_32_algorithm_tb

add wave *
view structure
view signals
run 500 ns
