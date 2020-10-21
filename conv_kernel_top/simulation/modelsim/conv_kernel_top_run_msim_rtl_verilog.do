transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/caoshizhuo/Desktop/conv_kernel {C:/Users/caoshizhuo/Desktop/conv_kernel/conv_lut_bitsef.v}
vlog -vlog01compat -work work +incdir+C:/Users/caoshizhuo/Desktop/conv_kernel {C:/Users/caoshizhuo/Desktop/conv_kernel/conv_lut_bitscd.v}
vlog -vlog01compat -work work +incdir+C:/Users/caoshizhuo/Desktop/conv_kernel {C:/Users/caoshizhuo/Desktop/conv_kernel/conv_lut_bitsab.v}
vlog -vlog01compat -work work +incdir+C:/Users/caoshizhuo/Desktop/conv_kernel {C:/Users/caoshizhuo/Desktop/conv_kernel/conv_lut_bits89.v}
vlog -vlog01compat -work work +incdir+C:/Users/caoshizhuo/Desktop/conv_kernel {C:/Users/caoshizhuo/Desktop/conv_kernel/conv_lut_bits67.v}
vlog -vlog01compat -work work +incdir+C:/Users/caoshizhuo/Desktop/conv_kernel {C:/Users/caoshizhuo/Desktop/conv_kernel/conv_lut_bits45.v}
vlog -vlog01compat -work work +incdir+C:/Users/caoshizhuo/Desktop/conv_kernel {C:/Users/caoshizhuo/Desktop/conv_kernel/conv_lut_bits23.v}
vlog -vlog01compat -work work +incdir+C:/Users/caoshizhuo/Desktop/conv_kernel {C:/Users/caoshizhuo/Desktop/conv_kernel/conv_lut_bits01.v}
vlog -vlog01compat -work work +incdir+C:/Users/caoshizhuo/Desktop/conv_kernel {C:/Users/caoshizhuo/Desktop/conv_kernel/conv_kernel.v}
vlog -vlog01compat -work work +incdir+C:/Users/caoshizhuo/Desktop/conv_kernel_top {C:/Users/caoshizhuo/Desktop/conv_kernel_top/conv_kernel_top.v}

vlog -vlog01compat -work work +incdir+C:/Users/caoshizhuo/Desktop/conv_kernel_top {C:/Users/caoshizhuo/Desktop/conv_kernel_top/conv_kernel_top_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  conv_kernel_top_tb

add wave *
view structure
view signals
run -all
