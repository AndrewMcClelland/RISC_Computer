transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/Project/phase1.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/Project/Z_split.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/Project/register_64.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/Project/register_32.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/Project/MDMux.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/Project/encoder_32_to_5.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/Project/bus_mux_32_to_1.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/Project/ALU.vhd}

vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/Project/phase1_tb_rol.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  phase1_tb_rol

add wave *
view structure
view signals
run 250 ns
