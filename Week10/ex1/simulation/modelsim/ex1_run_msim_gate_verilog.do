transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ex1.vo}

vlog -vlog01compat -work work +incdir+C:/Users/Andrey/Desktop/FPGA/Week10/ex1 {C:/Users/Andrey/Desktop/FPGA/Week10/ex1/testbench.v}
vlog -vlog01compat -work work +incdir+C:/Users/Andrey/Desktop/FPGA/Week10/ex1 {C:/Users/Andrey/Desktop/FPGA/Week10/ex1/ex1.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

do C:/Users/Andrey/Desktop/FPGA/Week10/ex1/tclscript.tcl
