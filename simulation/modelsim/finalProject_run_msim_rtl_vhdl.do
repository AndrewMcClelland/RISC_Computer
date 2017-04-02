transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/phase3.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/control_unit.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/register_R0.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/select_encode_logic_sel.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/Z_split.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/register_64.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/register_32.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/MDMux.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/encoder_32_to_5.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/bus_mux_32_to_1.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/ALU.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/con_ff_logic.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/D_flipflop.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/MAR_splicer.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/SelecEncodeLogic_R_splitter.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/IR_ConFF_Split.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/ram_TA.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/IncPC.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/R14MUX.vhd}
vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/in_port_reg.vhd}

vcom -93 -work work {C:/Users/luke/Documents/ELEC374_RISC_Computer/phase3_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  phase3_tb

add wave *
view structure
view signals
run 15000 ns
