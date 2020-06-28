transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/tahir/Desktop/Event_driven_running_state_machine {C:/Users/tahir/Desktop/Event_driven_running_state_machine/top.v}

vlog -vlog01compat -work work +incdir+C:/Users/tahir/Desktop/Event_driven_running_state_machine {C:/Users/tahir/Desktop/Event_driven_running_state_machine/tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  bench

add wave *
view structure
view signals
run -all
