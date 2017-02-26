transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/lukea/Documents/ELEC374_RISC_Computer/phase1.vhd}
vcom -93 -work work {C:/Users/lukea/Documents/ELEC374_RISC_Computer/Z_split.vhd}
vcom -93 -work work {C:/Users/lukea/Documents/ELEC374_RISC_Computer/register_64.vhd}
vcom -93 -work work {C:/Users/lukea/Documents/ELEC374_RISC_Computer/register_32.vhd}
vcom -93 -work work {C:/Users/lukea/Documents/ELEC374_RISC_Computer/MDMux.vhd}
vcom -93 -work work {C:/Users/lukea/Documents/ELEC374_RISC_Computer/encoder_32_to_5.vhd}
vcom -93 -work work {C:/Users/lukea/Documents/ELEC374_RISC_Computer/bus_mux_32_to_1.vhd}
vcom -93 -work work {C:/Users/lukea/Documents/ELEC374_RISC_Computer/ALU.vhd}

vcom -93 -work work {C:/Users/lukea/Documents/ELEC374_RISC_Computer/phase1_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  phase1_tb

add wave *
view structure
view signals
run 500 ns
