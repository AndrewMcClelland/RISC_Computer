transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Z:/ELEC 374/ELEC374_RISC_Computer-master/ELEC374_RISC_Computer-master/array_multiplier.vhd}

vcom -93 -work work {Z:/ELEC 374/ELEC374_RISC_Computer-master/ELEC374_RISC_Computer-master/array_multiplier_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  array_multiplier_tb

add wave *
view structure
view signals
run 500 ns
