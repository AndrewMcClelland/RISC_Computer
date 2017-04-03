transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/phase4.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/control_unit.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/register_R0.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/select_encode_logic_sel.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/Z_split.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/register_64.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/register_32.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/MDMux.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/encoder_32_to_5.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/bus_mux_32_to_1.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/ALU.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/con_ff_logic.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/D_flipflop.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/MAR_splicer.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/SelecEncodeLogic_R_splitter.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/IR_ConFF_Split.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/ram_TA.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/IncPC.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/R14MUX.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/in_port_reg.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/Seven_Seg_Display_Out.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/display_splitter.vhd}
vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/clock_divider.vhd}

vcom -93 -work work {C:/Users/andre/Documents/Queens 16-17/Comp Eng/ELEC 374/Project/Code/phase3_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  phase3_tb

add wave *
view structure
view signals
run 15 ms
