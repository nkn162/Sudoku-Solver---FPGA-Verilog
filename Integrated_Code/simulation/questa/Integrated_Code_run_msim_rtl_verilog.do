transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Neeraj/Workspace/FPGA/Integrated_Code {C:/Users/Neeraj/Workspace/FPGA/Integrated_Code/UpCounterNbit.v}
vlog -vlog01compat -work work +incdir+C:/Users/Neeraj/Workspace/FPGA/Integrated_Code {C:/Users/Neeraj/Workspace/FPGA/Integrated_Code/LT24Display.v}
vlog -vlog01compat -work work +incdir+C:/Users/Neeraj/Workspace/FPGA/Integrated_Code {C:/Users/Neeraj/Workspace/FPGA/Integrated_Code/font_rom_digits.v}
vlog -vlog01compat -work work +incdir+C:/Users/Neeraj/Workspace/FPGA/Integrated_Code {C:/Users/Neeraj/Workspace/FPGA/Integrated_Code/debounce.v}
vlog -vlog01compat -work work +incdir+C:/Users/Neeraj/Workspace/FPGA/Integrated_Code {C:/Users/Neeraj/Workspace/FPGA/Integrated_Code/Integrated_Code_tb.v}
vlog -vlog01compat -work work +incdir+C:/Users/Neeraj/Workspace/FPGA/Integrated_Code {C:/Users/Neeraj/Workspace/FPGA/Integrated_Code/Integrated_Code.v}

