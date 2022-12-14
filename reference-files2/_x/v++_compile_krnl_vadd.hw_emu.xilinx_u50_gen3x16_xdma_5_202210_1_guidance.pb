
?
?v++_compile_krnl_vadd.hw_emu.xilinx_u50_gen3x16_xdma_5_202210_1$a5b874e1-e3ff-46ee-b835-f70d0ab158c5?v++  -t hw_emu --platform xilinx_u50_gen3x16_xdma_5_202210_1 -g -c -k krnl_vadd -Isrc/kernel_cpp -okrnl_vadd.hw_emu.xilinx_u50_gen3x16_xdma_5_202210_1.xo src/kernel_cpp/krnl_vadd.cpp *?"?/mnt/HLSNAS/01.XkQjFq/Vitis-Tutorials/Hardware_Acceleration/Feature_Tutorials/02-mixing-c-rtl-kernels/reference-files2/_x/reports/krnl_vadd.hw_emu.xilinx_u50_gen3x16_xdma_5_202210_1/v++_compile_krnl_vadd.hw_emu.xilinx_u50_gen3x16_xdma_5_202210_1_guidance.html2?"?/mnt/HLSNAS/01.XkQjFq/Vitis-Tutorials/Hardware_Acceleration/Feature_Tutorials/02-mixing-c-rtl-kernels/reference-files2/_x/v++_compile_krnl_vadd.hw_emu.xilinx_u50_gen3x16_xdma_5_202210_1_guidance.pb	*?0
??
Throughput"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;J?
JPipelining result : Target II = 1, Final II = 2, Depth = 74, loop 'readA'
N
L2JPipelining result : Target II = 1, Final II = 2, Depth = 74, loop 'readA'
Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;Z AcceleratorZ	krnl_vaddZ
Throughputh 
??
Throughput"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;J?
NPipelining result : Target II = 1, Final II = 1, Depth = 3, loop 'vadd_wrteC'
R
P2NPipelining result : Target II = 1, Final II = 1, Depth = 3, loop 'vadd_wrteC'
Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;Z AcceleratorZ	krnl_vaddZ
Throughputh 
??	Interface"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;J?
xDesign has inferred MAXI bursts and missed bursts, see Vitis HLS GUI synthesis summary report for detailed information.
|
z2xDesign has inferred MAXI bursts and missed bursts, see Vitis HLS GUI synthesis summary report for detailed information.
Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;Z	krnl_vaddZ	InterfaceZ Acceleratorh 
??Kernel"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;J?
F**** Loop Constraint Status: All loop constraints were NOT satisfied.
J
H2F**** Loop Constraint Status: All loop constraints were NOT satisfied.
Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;Z	krnl_vaddZ
KernelZ Acceleratorh 
?	?	Kernel"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;JH
 **** Estimated Fmax: 411.00 MHz
$
"2 **** Estimated Fmax: 411.00 MHz
Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;Z AcceleratorZ	krnl_vaddZ
Kernelh 
?	?		Interface"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;J?
?Multiple burst writes of variable length and bit width 32 in loop 'vadd_wrteC'(!%1!) has been inferred on bundle 'gmem1'. These burst requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (!%2!)
?
?2?Multiple burst writes of variable length and bit width 32 in loop 'vadd_wrteC'(%REF) has been inferred on bundle 'gmem1'. These burst requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (%REF)

?
?krnl_vadd.cpp2?"?/mnt/HLSNAS/01.XkQjFq/Vitis-Tutorials/Hardware_Acceleration/Feature_Tutorials/02-mixing-c-rtl-kernels/reference-files2/src/kernel_cpp/krnl_vadd.cpp2line=90
?
?krnl_vadd.cpp2?"?/mnt/HLSNAS/01.XkQjFq/Vitis-Tutorials/Hardware_Acceleration/Feature_Tutorials/02-mixing-c-rtl-kernels/reference-files2/src/kernel_cpp/krnl_vadd.cpp2line=90Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;Z AcceleratorZ	krnl_vaddZ	Interfaceh 
??Latency"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;J?
]Cannot flatten loop 'VITIS_LOOP_75_1' (!%1!) in function 'krnl_vadd' more than one sub loop.
?
_2]Cannot flatten loop 'VITIS_LOOP_75_1' (%REF) in function 'krnl_vadd' more than one sub loop.

?
?krnl_vadd.cpp2?"?/mnt/HLSNAS/01.XkQjFq/Vitis-Tutorials/Hardware_Acceleration/Feature_Tutorials/02-mixing-c-rtl-kernels/reference-files2/src/kernel_cpp/krnl_vadd.cpp2line=75R?
!%0!?
??
5See here for more help on vitis_hls 200-960 guidance.Mwww.xilinx.com"9/cgi-bin/docs/rdoc?v=2022.1;t=hls+guidance;d=200-960.htmlZ AcceleratorZ	krnl_vaddZLatencyh 
??Latency"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;J?
dUnable to rewind loop 'VITIS_LOOP_75_1' (!%1!) in function 'krnl_vadd': loop nest is not flattened.
?
f2dUnable to rewind loop 'VITIS_LOOP_75_1' (%REF) in function 'krnl_vadd': loop nest is not flattened.

?
?krnl_vadd.cpp2?"?/mnt/HLSNAS/01.XkQjFq/Vitis-Tutorials/Hardware_Acceleration/Feature_Tutorials/02-mixing-c-rtl-kernels/reference-files2/src/kernel_cpp/krnl_vadd.cpp2line=75R?
!%0!?
??
5See here for more help on vitis_hls 200-957 guidance.Mwww.xilinx.com"9/cgi-bin/docs/rdoc?v=2022.1;t=hls+guidance;d=200-957.htmlZ AcceleratorZ	krnl_vaddZLatencyh 
?	?	Kernel"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;J?
?The II Violation in module 'krnl_vadd' (loop 'readA'): Unable to schedule bus request operation ('gmem_load_1_req', !%1!) on port 'gmem' (!%2!) due to limited memory ports (II = 1). Please consider using a memory core with more ports or partitioning the array.
?
?2?The II Violation in module 'krnl_vadd' (loop 'readA'): Unable to schedule bus request operation ('gmem_load_1_req', %REF) on port 'gmem' (%REF) due to limited memory ports (II = 1). Please consider using a memory core with more ports or partitioning the array.

?
?krnl_vadd.cpp2?"?/mnt/HLSNAS/01.XkQjFq/Vitis-Tutorials/Hardware_Acceleration/Feature_Tutorials/02-mixing-c-rtl-kernels/reference-files2/src/kernel_cpp/krnl_vadd.cpp2line=85
?
?krnl_vadd.cpp2?"?/mnt/HLSNAS/01.XkQjFq/Vitis-Tutorials/Hardware_Acceleration/Feature_Tutorials/02-mixing-c-rtl-kernels/reference-files2/src/kernel_cpp/krnl_vadd.cpp2line=85R?
!%0!?
??
5See here for more help on vitis_hls 200-885 guidance.Mwww.xilinx.com"9/cgi-bin/docs/rdoc?v=2022.1;t=hls+guidance;d=200-885.htmlZ AcceleratorZ	krnl_vaddZ
Kernelh B?
?
	Interface?
	InterfaceHLS Interface RelatedHLS"%s: Accelerator:
Kernel:	InterfaceB Jj
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;P?  ?? 
?
Kernel?
KernelHLS Kernel RelatedHLS"%s:
Kernel:
Kernel: AcceleratorB Jj
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;P?  ?? 
?

Throughput?

ThroughputHLS Throughput RelatedHLS"%s:
Kernel:
Throughput: AcceleratorB Jj
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;P?  ?? 
?
Latency?
LatencyHLS Latency RelatedHLS"%s: Accelerator:
Kernel:LatencyB Jj
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2022.1;d=ug1399-vitis-hls.pdf;P?  ?? 