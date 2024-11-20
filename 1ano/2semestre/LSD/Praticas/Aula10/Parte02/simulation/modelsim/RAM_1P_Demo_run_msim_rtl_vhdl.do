transcript on
if ![file isdirectory vhdl_libs] {
	file mkdir vhdl_libs
}

vlib vhdl_libs/altera
vmap altera ./vhdl_libs/altera
vcom -93 -work altera {/home/tiago/.intel_fpga_lite/22.1.2/quartus/eda/sim_lib/altera_syn_attributes.vhd}
vcom -93 -work altera {/home/tiago/.intel_fpga_lite/22.1.2/quartus/eda/sim_lib/altera_standard_functions.vhd}
vcom -93 -work altera {/home/tiago/.intel_fpga_lite/22.1.2/quartus/eda/sim_lib/alt_dspbuilder_package.vhd}
vcom -93 -work altera {/home/tiago/.intel_fpga_lite/22.1.2/quartus/eda/sim_lib/altera_europa_support_lib.vhd}
vcom -93 -work altera {/home/tiago/.intel_fpga_lite/22.1.2/quartus/eda/sim_lib/altera_primitives_components.vhd}
vcom -93 -work altera {/home/tiago/.intel_fpga_lite/22.1.2/quartus/eda/sim_lib/altera_primitives.vhd}

vlib vhdl_libs/lpm
vmap lpm ./vhdl_libs/lpm
vcom -93 -work lpm {/home/tiago/.intel_fpga_lite/22.1.2/quartus/eda/sim_lib/220pack.vhd}
vcom -93 -work lpm {/home/tiago/.intel_fpga_lite/22.1.2/quartus/eda/sim_lib/220model.vhd}

vlib vhdl_libs/sgate
vmap sgate ./vhdl_libs/sgate
vcom -93 -work sgate {/home/tiago/.intel_fpga_lite/22.1.2/quartus/eda/sim_lib/sgate_pack.vhd}
vcom -93 -work sgate {/home/tiago/.intel_fpga_lite/22.1.2/quartus/eda/sim_lib/sgate.vhd}

vlib vhdl_libs/altera_mf
vmap altera_mf ./vhdl_libs/altera_mf
vcom -93 -work altera_mf {/home/tiago/.intel_fpga_lite/22.1.2/quartus/eda/sim_lib/altera_mf_components.vhd}
vcom -93 -work altera_mf {/home/tiago/.intel_fpga_lite/22.1.2/quartus/eda/sim_lib/altera_mf.vhd}

vlib vhdl_libs/altera_lnsim
vmap altera_lnsim ./vhdl_libs/altera_lnsim
vlog -sv -work altera_lnsim {/home/tiago/.intel_fpga_lite/22.1.2/quartus/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv}
vcom -93 -work altera_lnsim {/home/tiago/.intel_fpga_lite/22.1.2/quartus/eda/sim_lib/altera_lnsim_components.vhd}

vlib vhdl_libs/cycloneive
vmap cycloneive ./vhdl_libs/cycloneive
vcom -93 -work cycloneive {/home/tiago/.intel_fpga_lite/22.1.2/quartus/eda/sim_lib/cycloneive_atoms.vhd}
vcom -93 -work cycloneive {/home/tiago/.intel_fpga_lite/22.1.2/quartus/eda/sim_lib/cycloneive_components.vhd}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/tiago/Documents/LSD/Aula10/Parte02/RAM_1P_16_8.vhd}

