log_wave -quiet /pfm_top_wrapper/pfm_top_i/pfm_dynamic_inst/krnl_vadd_1/inst/ap_idle
get_value_database /pfm_top_wrapper/pfm_top_i/pfm_dynamic_inst/krnl_vadd_1/inst/ap_idle -time 0 -quiet 

log_wave -quiet /pfm_top_wrapper/pfm_top_i/pfm_dynamic_inst/krnl_vadd_1/inst/ap_int_blocking_n
get_value_database /pfm_top_wrapper/pfm_top_i/pfm_dynamic_inst/krnl_vadd_1/inst/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /pfm_top_wrapper/pfm_top_i/pfm_dynamic_inst/krnl_vadd_1/inst/ap_ext_blocking_n
get_value_database /pfm_top_wrapper/pfm_top_i/pfm_dynamic_inst/krnl_vadd_1/inst/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /pfm_top_wrapper/pfm_top_i/pfm_dynamic_inst/krnl_vadd_1/inst/ap_str_blocking_n
get_value_database /pfm_top_wrapper/pfm_top_i/pfm_dynamic_inst/krnl_vadd_1/inst/ap_str_blocking_n -time 0 -quiet 

