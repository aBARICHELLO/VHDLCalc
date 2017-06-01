transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/alunos/Desktop/1208B/AULA3/VHDLCalc/VHDLCalc/topo.vhd}
vcom -93 -work work {/home/alunos/Desktop/1208B/AULA3/VHDLCalc/VHDLCalc/C1.vhd}
vcom -93 -work work {/home/alunos/Desktop/1208B/AULA3/VHDLCalc/VHDLCalc/C2.vhd}
vcom -93 -work work {/home/alunos/Desktop/1208B/AULA3/VHDLCalc/VHDLCalc/C3.vhd}
vcom -93 -work work {/home/alunos/Desktop/1208B/AULA3/VHDLCalc/VHDLCalc/Decod7seg.vhd}
vcom -93 -work work {/home/alunos/Desktop/1208B/AULA3/VHDLCalc/VHDLCalc/C4.vhd}
vcom -93 -work work {/home/alunos/Desktop/1208B/AULA3/VHDLCalc/VHDLCalc/mux4x1.vhd}
vcom -93 -work work {/home/alunos/Desktop/1208B/AULA3/VHDLCalc/VHDLCalc/FF_D_4bits.vhd}
vcom -93 -work work {/home/alunos/Desktop/1208B/AULA3/VHDLCalc/VHDLCalc/FSM_Control.vhd}
vcom -93 -work work {/home/alunos/Desktop/1208B/AULA3/VHDLCalc/VHDLCalc/FF_D_8bits.vhd}

