mdef(16383)_out(1)_in(2)
mov r0, in0
mov r1, in1
div_zeroop(infinity) r0.x___, r0.x, r1.x
mov out0, r0
mend
il_cs_2_0
dcl_cb cb0[15] ; Constant buffer that holds ABI data
dcl_literal l0, 0x00000004, 0x00000001, 0x00000002, 0x00000003
dcl_literal l1, 0x00FFFFFF, 0xFFFFFFFF, 0xFFFFFFFE, 0xFFFFFFFD
dcl_literal l2, 0x0000FFFF, 0xFFFFFFFE, 0x000000FF, 0xFFFFFFFC
dcl_literal l3, 0x00000018, 0x00000010, 0x00000008, 0xFFFFFFFF
dcl_literal l4, 0xFFFFFF00, 0xFFFF0000, 0xFF00FFFF, 0xFFFF00FF
dcl_literal l5, 0x00000000, 0x00000004, 0x00000008, 0x0000000C
dcl_literal l6, 0x00000020, 0x00000020, 0x00000020, 0x00000020
dcl_literal l7, 0x00000018, 0x0000001F, 0x00000010, 0x0000001F
dcl_literal l8, 0x80000000, 0x80000000, 0x80000000, 0x80000000
;$$$$$$$$$$
endmain
;DEBUGSTART
	.file	"input.bc"
	.text
.global@__OpenCL_read_1_kernel
;DEBUGEND
func 1024 ; __OpenCL_read_1_kernel
mov r1013, cb0[8].x
mov r1019, l1.0000
dcl_max_thread_per_group 256
dcl_typeless_uav_id(11)_stride(4)_length(4)_access(read_write)
dcl_typeless_uav_id(10)_stride(4)_length(4)_access(read_write)
mov r0.__z_, vThreadGrpIdFlat0.x
mov r1022.xyz0, vTidInGrp0.xyz
mov r1023.xyz0, vThreadGrpId0.xyz
dcl_literal l9, 256, 1, 1, 0xFFFFFFFF
umin r1023.xyz0, r1023.xyzz, l9.w
umin r1021.xyz0, cb0[1].xyzz, l2.x
imad r1021.xyz0, r1023.xyzz, r1021.xyzz, r1022.xyzz
umin r1024.xyz0, cb0[6].xyzz, l9.w
iadd r1021.xyz0, r1021.xyz0, r1024.xyz0
umin r1024.xyz0, cb0[7].xyzz, l9.w
iadd r1023.xyz0, r1023.xyz0, r1024.xyz0
mov r1023.___w, r0.z
ishl r1023.___w, r1023.w, l0.z
mov r1018.x___, l0.0000
udiv r1024.xyz_, r1021.xyzz, cb0[10].xyzz
imad r1025.xyz0, r1023.xyzz, cb0[10].xyzz, r1022.xyzz
dcl_literal l13, 0x00000000, 0x00000000, 0x00000000, 0x00000000; f128:i128 00
dcl_literal l12, 0x00000002, 0x00000002, 0x00000002, 0x00000002; f128:i128 85899345948589934594
dcl_literal l14, 0x40400000, 0x40400000, 0x40400000, 0x40400000; f128:i128 46297004180148060164629700418014806016
dcl_cb cb1[3]
dcl_typeless_uav_id(8)_stride(4)_length(96)_access(private)
dcl_literal l15, 0, 96, 16, 96
iadd r0.x, r1018.x, l15.w
mov r1028, l15.0
; Kernel arg setup: input
mov r1.x, cb1[0].x
; Kernel arg setup: output
mov r1.y, cb1[1].x
; Kernel arg setup: w
mov r1.z, cb1[2].x
call 1031 ; read_1
ret
endfunc ; __OpenCL_read_1_kernel
;ARGSTART:__OpenCL_read_1_kernel
;version:3:1:111
;device:tahiti
;uniqueid:1024
;memory:uavprivate:0
;memory:hwlocal:0
;memory:hwregion:0
;pointer:input:float:1:1:0:uav:10:4:RO:0:0
;constarg:0:input
;pointer:output:float:1:1:16:uav:11:4:RW:0:0
;value:w:i32:1:1:32
;function:1:1031
;uavid:11
;privateid:8
;reflection:0:float*
;reflection:1:float*
;reflection:2:int
;ARGEND:__OpenCL_read_1_kernel
func 1031 ; read_1                      ; @__OpenCL_read_1_kernel
; BB#0:                                 ; %entry
	mov r65, r1021.xyz0
	mov r66.x___, r65.y000
	imul r66.x___, r66.x, r1.z
	mov r65.x___, r65.x000
	iadd r65.x___, r66.x, r65.x
	ishl r66.x___, r65.x, l12
	iadd r65.x___, r1.y, r66.x
	iadd r66.x___, r1.x, r66.x
	uav_raw_load_id(10)_cached r66.x___, r66.x
	add r66.x___, r66.x, l14
	uav_raw_store_id(11) mem0.x___, r65.x, r66.x
	ret_dyn
ret
endfunc ; read_1
;ARGSTART:read_1
;uniqueid:1031
;ARGEND:read_1
;DEBUGSTART

.global@__OpenCL_read_2_kernel
;DEBUGEND
func 1025 ; __OpenCL_read_2_kernel
mov r1013, cb0[8].x
mov r1019, l1.0000
dcl_max_thread_per_group 256
dcl_typeless_uav_id(11)_stride(4)_length(4)_access(read_write)
dcl_typeless_uav_id(10)_stride(4)_length(4)_access(read_write)
mov r0.__z_, vThreadGrpIdFlat0.x
mov r1022.xyz0, vTidInGrp0.xyz
mov r1023.xyz0, vThreadGrpId0.xyz
dcl_literal l9, 256, 1, 1, 0xFFFFFFFF
umin r1023.xyz0, r1023.xyzz, l9.w
umin r1021.xyz0, cb0[1].xyzz, l2.x
imad r1021.xyz0, r1023.xyzz, r1021.xyzz, r1022.xyzz
umin r1024.xyz0, cb0[6].xyzz, l9.w
iadd r1021.xyz0, r1021.xyz0, r1024.xyz0
umin r1024.xyz0, cb0[7].xyzz, l9.w
iadd r1023.xyz0, r1023.xyz0, r1024.xyz0
mov r1023.___w, r0.z
ishl r1023.___w, r1023.w, l0.z
mov r1018.x___, l0.0000
udiv r1024.xyz_, r1021.xyzz, cb0[10].xyzz
imad r1025.xyz0, r1023.xyzz, cb0[10].xyzz, r1022.xyzz
dcl_literal l14, 0x00000000, 0x00000000, 0x00000000, 0x00000000; f128:i128 00
dcl_literal l12, 0x00000001, 0x00000001, 0x00000001, 0x00000001; f128:i128 42949672974294967297
dcl_literal l13, 0x00000002, 0x00000002, 0x00000002, 0x00000002; f128:i128 85899345948589934594
dcl_literal l16, 0x00000004, 0x00000004, 0x00000004, 0x00000004; f128:i128 1717986918817179869188
dcl_literal l15, 0x40400000, 0x40400000, 0x40400000, 0x40400000; f128:i128 46297004180148060164629700418014806016
dcl_cb cb1[3]
dcl_typeless_uav_id(8)_stride(4)_length(96)_access(private)
dcl_literal l17, 0, 96, 16, 96
iadd r0.x, r1018.x, l17.w
mov r1028, l17.0
; Kernel arg setup: input
mov r1.x, cb1[0].x
; Kernel arg setup: output
mov r1.y, cb1[1].x
; Kernel arg setup: w
mov r1.z, cb1[2].x
call 1032 ; read_2
ret
endfunc ; __OpenCL_read_2_kernel
;ARGSTART:__OpenCL_read_2_kernel
;version:3:1:111
;device:tahiti
;uniqueid:1025
;memory:uavprivate:0
;memory:hwlocal:0
;memory:hwregion:0
;pointer:input:float:1:1:0:uav:10:4:RO:0:0
;constarg:0:input
;pointer:output:float:1:1:16:uav:11:4:RW:0:0
;value:w:i32:1:1:32
;function:1:1032
;uavid:11
;privateid:8
;reflection:0:float*
;reflection:1:float*
;reflection:2:int
;ARGEND:__OpenCL_read_2_kernel
func 1032 ; read_2                      ; @__OpenCL_read_2_kernel
; BB#0:                                 ; %entry
	mov r65, r1021.xyz0
	mov r66.x___, r65.y000
	imul r66.x___, r66.x, r1.z
	mov r65.x___, r65.x000
	ishl r65.x___, r65.x, l12
	iadd r65.x___, r66.x, r65.x
	ishl r66.x___, r65.x, l13
	iadd r65.x___, r1.y, r66.x
	iadd r66.x___, r1.x, r66.x
	uav_raw_load_id(10)_cached_aligned r66.xy__, r66.x
	mov r67.xy__, l15
	add r66.xy__, r66.xyxy, r67.xyxy
	mov r67.x___, r66.x000
	uav_raw_store_id(11) mem0.x___, r65.x, r67.x
	iadd r65.x___, r65.x, l16
	mov r66.x___, r66.y000
	uav_raw_store_id(11) mem0.x___, r65.x, r66.x
	ret_dyn
ret
endfunc ; read_2
;ARGSTART:read_2
;uniqueid:1032
;ARGEND:read_2
;DEBUGSTART

.global@__OpenCL_read_4_kernel
;DEBUGEND
func 1026 ; __OpenCL_read_4_kernel
mov r1013, cb0[8].x
mov r1019, l1.0000
dcl_max_thread_per_group 256
dcl_typeless_uav_id(11)_stride(4)_length(4)_access(read_write)
dcl_typeless_uav_id(10)_stride(4)_length(4)_access(read_write)
mov r0.__z_, vThreadGrpIdFlat0.x
mov r1022.xyz0, vTidInGrp0.xyz
mov r1023.xyz0, vThreadGrpId0.xyz
dcl_literal l9, 256, 1, 1, 0xFFFFFFFF
umin r1023.xyz0, r1023.xyzz, l9.w
umin r1021.xyz0, cb0[1].xyzz, l2.x
imad r1021.xyz0, r1023.xyzz, r1021.xyzz, r1022.xyzz
umin r1024.xyz0, cb0[6].xyzz, l9.w
iadd r1021.xyz0, r1021.xyz0, r1024.xyz0
umin r1024.xyz0, cb0[7].xyzz, l9.w
iadd r1023.xyz0, r1023.xyz0, r1024.xyz0
mov r1023.___w, r0.z
ishl r1023.___w, r1023.w, l0.z
mov r1018.x___, l0.0000
udiv r1024.xyz_, r1021.xyzz, cb0[10].xyzz
imad r1025.xyz0, r1023.xyzz, cb0[10].xyzz, r1022.xyzz
dcl_literal l13, 0x00000000, 0x00000000, 0x00000000, 0x00000000; f128:i128 00
dcl_literal l12, 0x00000002, 0x00000002, 0x00000002, 0x00000002; f128:i128 85899345948589934594
dcl_literal l15, 0x00000004, 0x00000004, 0x00000004, 0x00000004; f128:i128 1717986918817179869188
dcl_literal l16, 0x00000008, 0x00000008, 0x00000008, 0x00000008; f128:i128 3435973837634359738376
dcl_literal l17, 0x0000000C, 0x0000000C, 0x0000000C, 0x0000000C; f128:i128 5153960756451539607564
dcl_literal l14, 0x40400000, 0x40400000, 0x40400000, 0x40400000; f128:i128 46297004180148060164629700418014806016
dcl_cb cb1[3]
dcl_typeless_uav_id(8)_stride(4)_length(96)_access(private)
dcl_literal l18, 0, 96, 16, 96
iadd r0.x, r1018.x, l18.w
mov r1028, l18.0
; Kernel arg setup: input
mov r1.x, cb1[0].x
; Kernel arg setup: output
mov r1.y, cb1[1].x
; Kernel arg setup: w
mov r1.z, cb1[2].x
call 1033 ; read_4
ret
endfunc ; __OpenCL_read_4_kernel
;ARGSTART:__OpenCL_read_4_kernel
;version:3:1:111
;device:tahiti
;uniqueid:1026
;memory:uavprivate:0
;memory:hwlocal:0
;memory:hwregion:0
;pointer:input:float:1:1:0:uav:10:4:RO:0:0
;constarg:0:input
;pointer:output:float:1:1:16:uav:11:4:RW:0:0
;value:w:i32:1:1:32
;function:1:1033
;uavid:11
;privateid:8
;reflection:0:float*
;reflection:1:float*
;reflection:2:int
;ARGEND:__OpenCL_read_4_kernel
func 1033 ; read_4                      ; @__OpenCL_read_4_kernel
; BB#0:                                 ; %entry
	mov r65, r1021.xyz0
	mov r66.x___, r65.y000
	imul r66.x___, r66.x, r1.z
	mov r65.x___, r65.x000
	ishl r65.x___, r65.x, l12
	iadd r65.x___, r66.x, r65.x
	ishl r66.x___, r65.x, l12
	iadd r65.x___, r1.y, r66.x
	iadd r66.x___, r1.x, r66.x
	uav_raw_load_id(10)_cached_aligned r66, r66.x
	mov r67, l14
	add r66, r66, r67
	mov r67.x___, r66.x000
	uav_raw_store_id(11) mem0.x___, r65.x, r67.x
	iadd r67.x___, r65.x, l15
	mov r68.x___, r66.y000
	uav_raw_store_id(11) mem0.x___, r67.x, r68.x
	iadd r67.x___, r65.x, l16
	mov r68.x___, r66.z000
	uav_raw_store_id(11) mem0.x___, r67.x, r68.x
	iadd r65.x___, r65.x, l17
	mov r66.x___, r66.w000
	uav_raw_store_id(11) mem0.x___, r65.x, r66.x
	ret_dyn
ret
endfunc ; read_4
;ARGSTART:read_4
;uniqueid:1033
;ARGEND:read_4
;DEBUGSTART

.global@__OpenCL_read_8_kernel
;DEBUGEND
func 1027 ; __OpenCL_read_8_kernel
mov r1013, cb0[8].x
mov r1019, l1.0000
dcl_max_thread_per_group 256
dcl_typeless_uav_id(11)_stride(4)_length(4)_access(read_write)
dcl_typeless_uav_id(10)_stride(4)_length(4)_access(read_write)
mov r0.__z_, vThreadGrpIdFlat0.x
mov r1022.xyz0, vTidInGrp0.xyz
mov r1023.xyz0, vThreadGrpId0.xyz
dcl_literal l9, 256, 1, 1, 0xFFFFFFFF
umin r1023.xyz0, r1023.xyzz, l9.w
umin r1021.xyz0, cb0[1].xyzz, l2.x
imad r1021.xyz0, r1023.xyzz, r1021.xyzz, r1022.xyzz
umin r1024.xyz0, cb0[6].xyzz, l9.w
iadd r1021.xyz0, r1021.xyz0, r1024.xyz0
umin r1024.xyz0, cb0[7].xyzz, l9.w
iadd r1023.xyz0, r1023.xyz0, r1024.xyz0
mov r1023.___w, r0.z
ishl r1023.___w, r1023.w, l0.z
mov r1018.x___, l0.0000
udiv r1024.xyz_, r1021.xyzz, cb0[10].xyzz
imad r1025.xyz0, r1023.xyzz, cb0[10].xyzz, r1022.xyzz
dcl_literal l15, 0x00000000, 0x00000000, 0x00000000, 0x00000000; f128:i128 00
dcl_literal l13, 0x00000002, 0x00000002, 0x00000002, 0x00000002; f128:i128 85899345948589934594
dcl_literal l12, 0x00000003, 0x00000003, 0x00000003, 0x00000003; f128:i128 1288490189112884901891
dcl_literal l17, 0x00000004, 0x00000004, 0x00000004, 0x00000004; f128:i128 1717986918817179869188
dcl_literal l18, 0x00000008, 0x00000008, 0x00000008, 0x00000008; f128:i128 3435973837634359738376
dcl_literal l19, 0x0000000C, 0x0000000C, 0x0000000C, 0x0000000C; f128:i128 5153960756451539607564
dcl_literal l14, 0x00000010, 0x00000010, 0x00000010, 0x00000010; f128:i128 6871947675268719476752
dcl_literal l20, 0x00000014, 0x00000014, 0x00000014, 0x00000014; f128:i128 8589934594085899345940
dcl_literal l21, 0x00000018, 0x00000018, 0x00000018, 0x00000018; f128:i128 103079215128103079215128
dcl_literal l22, 0x0000001C, 0x0000001C, 0x0000001C, 0x0000001C; f128:i128 120259084316120259084316
dcl_literal l16, 0x40400000, 0x40400000, 0x40400000, 0x40400000; f128:i128 46297004180148060164629700418014806016
dcl_cb cb1[3]
dcl_typeless_uav_id(8)_stride(4)_length(96)_access(private)
dcl_literal l23, 0, 96, 16, 96
iadd r0.x, r1018.x, l23.w
mov r1028, l23.0
; Kernel arg setup: input
mov r1.x, cb1[0].x
; Kernel arg setup: output
mov r1.y, cb1[1].x
; Kernel arg setup: w
mov r1.z, cb1[2].x
call 1034 ; read_8
ret
endfunc ; __OpenCL_read_8_kernel
;ARGSTART:__OpenCL_read_8_kernel
;version:3:1:111
;device:tahiti
;uniqueid:1027
;memory:uavprivate:0
;memory:hwlocal:0
;memory:hwregion:0
;pointer:input:float:1:1:0:uav:10:4:RO:0:0
;constarg:0:input
;pointer:output:float:1:1:16:uav:11:4:RW:0:0
;value:w:i32:1:1:32
;function:1:1034
;uavid:11
;privateid:8
;reflection:0:float*
;reflection:1:float*
;reflection:2:int
;ARGEND:__OpenCL_read_8_kernel
func 1034 ; read_8                      ; @__OpenCL_read_8_kernel
; BB#0:                                 ; %entry
	mov r65, r1021.xyz0
	mov r66.x___, r65.y000
	imul r66.x___, r66.x, r1.z
	mov r65.x___, r65.x000
	ishl r65.x___, r65.x, l12
	iadd r65.x___, r66.x, r65.x
	ishl r65.x___, r65.x, l13
	iadd r67.x___, r1.x, r65.x
	iadd r66.x___, r67.x, l14
	uav_raw_load_id(10)_cached_aligned r66, r66.x
	iadd r65.x___, r1.y, r65.x
	uav_raw_load_id(10)_cached_aligned r68, r67.x
	mov r67, l16
	add r68, r68, r67
	mov r69.x___, r68.x000
	uav_raw_store_id(11) mem0.x___, r65.x, r69.x
	iadd r69.x___, r65.x, l17
	mov r70.x___, r68.y000
	uav_raw_store_id(11) mem0.x___, r69.x, r70.x
	iadd r69.x___, r65.x, l18
	mov r70.x___, r68.z000
	uav_raw_store_id(11) mem0.x___, r69.x, r70.x
	iadd r69.x___, r65.x, l19
	mov r68.x___, r68.w000
	uav_raw_store_id(11) mem0.x___, r69.x, r68.x
	iadd r68.x___, r65.x, l14
	add r66, r66, r67
	mov r67.x___, r66.x000
	uav_raw_store_id(11) mem0.x___, r68.x, r67.x
	iadd r67.x___, r65.x, l20
	mov r68.x___, r66.y000
	uav_raw_store_id(11) mem0.x___, r67.x, r68.x
	iadd r67.x___, r65.x, l21
	mov r68.x___, r66.z000
	uav_raw_store_id(11) mem0.x___, r67.x, r68.x
	iadd r65.x___, r65.x, l22
	mov r66.x___, r66.w000
	uav_raw_store_id(11) mem0.x___, r65.x, r66.x
	ret_dyn
ret
endfunc ; read_8
;ARGSTART:read_8
;uniqueid:1034
;ARGEND:read_8
;DEBUGSTART

.global@__OpenCL_read_16_kernel
;DEBUGEND
func 1028 ; __OpenCL_read_16_kernel
mov r1013, cb0[8].x
mov r1019, l1.0000
dcl_max_thread_per_group 256
dcl_typeless_uav_id(11)_stride(4)_length(4)_access(read_write)
dcl_typeless_uav_id(10)_stride(4)_length(4)_access(read_write)
mov r0.__z_, vThreadGrpIdFlat0.x
mov r1022.xyz0, vTidInGrp0.xyz
mov r1023.xyz0, vThreadGrpId0.xyz
dcl_literal l9, 256, 1, 1, 0xFFFFFFFF
umin r1023.xyz0, r1023.xyzz, l9.w
umin r1021.xyz0, cb0[1].xyzz, l2.x
imad r1021.xyz0, r1023.xyzz, r1021.xyzz, r1022.xyzz
umin r1024.xyz0, cb0[6].xyzz, l9.w
iadd r1021.xyz0, r1021.xyz0, r1024.xyz0
umin r1024.xyz0, cb0[7].xyzz, l9.w
iadd r1023.xyz0, r1023.xyz0, r1024.xyz0
mov r1023.___w, r0.z
ishl r1023.___w, r1023.w, l0.z
mov r1018.x___, l0.0000
udiv r1024.xyz_, r1021.xyzz, cb0[10].xyzz
imad r1025.xyz0, r1023.xyzz, cb0[10].xyzz, r1022.xyzz
dcl_literal l15, 0x00000000, 0x00000000, 0x00000000, 0x00000000; f128:i128 00
dcl_literal l13, 0x00000002, 0x00000002, 0x00000002, 0x00000002; f128:i128 85899345948589934594
dcl_literal l12, 0x00000004, 0x00000004, 0x00000004, 0x00000004; f128:i128 1717986918817179869188
dcl_literal l19, 0x00000008, 0x00000008, 0x00000008, 0x00000008; f128:i128 3435973837634359738376
dcl_literal l20, 0x0000000C, 0x0000000C, 0x0000000C, 0x0000000C; f128:i128 5153960756451539607564
dcl_literal l17, 0x00000010, 0x00000010, 0x00000010, 0x00000010; f128:i128 6871947675268719476752
dcl_literal l21, 0x00000014, 0x00000014, 0x00000014, 0x00000014; f128:i128 8589934594085899345940
dcl_literal l22, 0x00000018, 0x00000018, 0x00000018, 0x00000018; f128:i128 103079215128103079215128
dcl_literal l23, 0x0000001C, 0x0000001C, 0x0000001C, 0x0000001C; f128:i128 120259084316120259084316
dcl_literal l16, 0x00000020, 0x00000020, 0x00000020, 0x00000020; f128:i128 137438953504137438953504
dcl_literal l24, 0x00000024, 0x00000024, 0x00000024, 0x00000024; f128:i128 154618822692154618822692
dcl_literal l25, 0x00000028, 0x00000028, 0x00000028, 0x00000028; f128:i128 171798691880171798691880
dcl_literal l26, 0x0000002C, 0x0000002C, 0x0000002C, 0x0000002C; f128:i128 188978561068188978561068
dcl_literal l14, 0x00000030, 0x00000030, 0x00000030, 0x00000030; f128:i128 206158430256206158430256
dcl_literal l27, 0x00000034, 0x00000034, 0x00000034, 0x00000034; f128:i128 223338299444223338299444
dcl_literal l28, 0x00000038, 0x00000038, 0x00000038, 0x00000038; f128:i128 240518168632240518168632
dcl_literal l29, 0x0000003C, 0x0000003C, 0x0000003C, 0x0000003C; f128:i128 257698037820257698037820
dcl_literal l18, 0x40400000, 0x40400000, 0x40400000, 0x40400000; f128:i128 46297004180148060164629700418014806016
dcl_cb cb1[3]
dcl_typeless_uav_id(8)_stride(4)_length(96)_access(private)
dcl_literal l30, 0, 96, 16, 96
iadd r0.x, r1018.x, l30.w
mov r1028, l30.0
; Kernel arg setup: input
mov r1.x, cb1[0].x
; Kernel arg setup: output
mov r1.y, cb1[1].x
; Kernel arg setup: w
mov r1.z, cb1[2].x
call 1035 ; read_16
ret
endfunc ; __OpenCL_read_16_kernel
;ARGSTART:__OpenCL_read_16_kernel
;version:3:1:111
;device:tahiti
;uniqueid:1028
;memory:uavprivate:0
;memory:hwlocal:0
;memory:hwregion:0
;pointer:input:float:1:1:0:uav:10:4:RO:0:0
;constarg:0:input
;pointer:output:float:1:1:16:uav:11:4:RW:0:0
;value:w:i32:1:1:32
;function:1:1035
;uavid:11
;privateid:8
;reflection:0:float*
;reflection:1:float*
;reflection:2:int
;ARGEND:__OpenCL_read_16_kernel
func 1035 ; read_16                     ; @__OpenCL_read_16_kernel
; BB#0:                                 ; %entry
	mov r65, r1021.xyz0
	mov r66.x___, r65.y000
	imul r66.x___, r66.x, r1.z
	mov r65.x___, r65.x000
	ishl r65.x___, r65.x, l12
	iadd r65.x___, r66.x, r65.x
	ishl r65.x___, r65.x, l13
	iadd r67.x___, r1.x, r65.x
	iadd r66.x___, r67.x, l14
	uav_raw_load_id(10)_cached_aligned r66, r66.x
	iadd r68.x___, r67.x, l16
	uav_raw_load_id(10)_cached_aligned r68, r68.x
	iadd r69.x___, r67.x, l17
	uav_raw_load_id(10)_cached_aligned r69, r69.x
	iadd r65.x___, r1.y, r65.x
	uav_raw_load_id(10)_cached_aligned r70, r67.x
	mov r67, l18
	add r70, r70, r67
	mov r71.x___, r70.x000
	uav_raw_store_id(11) mem0.x___, r65.x, r71.x
	iadd r71.x___, r65.x, l12
	mov r72.x___, r70.y000
	uav_raw_store_id(11) mem0.x___, r71.x, r72.x
	iadd r71.x___, r65.x, l19
	mov r72.x___, r70.z000
	uav_raw_store_id(11) mem0.x___, r71.x, r72.x
	iadd r71.x___, r65.x, l20
	mov r70.x___, r70.w000
	uav_raw_store_id(11) mem0.x___, r71.x, r70.x
	iadd r70.x___, r65.x, l17
	add r69, r69, r67
	mov r71.x___, r69.x000
	uav_raw_store_id(11) mem0.x___, r70.x, r71.x
	iadd r70.x___, r65.x, l21
	mov r71.x___, r69.y000
	uav_raw_store_id(11) mem0.x___, r70.x, r71.x
	iadd r70.x___, r65.x, l22
	mov r71.x___, r69.z000
	uav_raw_store_id(11) mem0.x___, r70.x, r71.x
	iadd r70.x___, r65.x, l23
	mov r69.x___, r69.w000
	uav_raw_store_id(11) mem0.x___, r70.x, r69.x
	iadd r69.x___, r65.x, l16
	add r68, r68, r67
	mov r70.x___, r68.x000
	uav_raw_store_id(11) mem0.x___, r69.x, r70.x
	iadd r69.x___, r65.x, l24
	mov r70.x___, r68.y000
	uav_raw_store_id(11) mem0.x___, r69.x, r70.x
	iadd r69.x___, r65.x, l25
	mov r70.x___, r68.z000
	uav_raw_store_id(11) mem0.x___, r69.x, r70.x
	iadd r69.x___, r65.x, l26
	mov r68.x___, r68.w000
	uav_raw_store_id(11) mem0.x___, r69.x, r68.x
	iadd r68.x___, r65.x, l14
	add r66, r66, r67
	mov r67.x___, r66.x000
	uav_raw_store_id(11) mem0.x___, r68.x, r67.x
	iadd r67.x___, r65.x, l27
	mov r68.x___, r66.y000
	uav_raw_store_id(11) mem0.x___, r67.x, r68.x
	iadd r67.x___, r65.x, l28
	mov r68.x___, r66.z000
	uav_raw_store_id(11) mem0.x___, r67.x, r68.x
	iadd r65.x___, r65.x, l29
	mov r66.x___, r66.w000
	uav_raw_store_id(11) mem0.x___, r65.x, r66.x
	ret_dyn
ret
endfunc ; read_16
;ARGSTART:read_16
;uniqueid:1035
;ARGEND:read_16
;DEBUGSTART

.global@.str
.global@.str1
.global@.str2
.global@.str3
.global@.str4
.global@llvm.signedOrSignedpointee.annotations.__OpenCL_read_1_kernel
.global@llvm.argtypename.annotations.__OpenCL_read_1_kernel
.global@llvm.argtypeconst.annotations.__OpenCL_read_1_kernel
.global@sgv
.global@fgv
.global@lvgv
.global@rvgv
.global@.str5
.global@.str6
.global@.str7
.global@.str8
.global@.str9
.global@llvm.signedOrSignedpointee.annotations.__OpenCL_read_2_kernel
.global@llvm.argtypename.annotations.__OpenCL_read_2_kernel
.global@llvm.argtypeconst.annotations.__OpenCL_read_2_kernel
.global@sgv10
.global@fgv11
.global@lvgv12
.global@rvgv13
.global@.str14
.global@.str15
.global@.str16
.global@.str17
.global@.str18
.global@llvm.signedOrSignedpointee.annotations.__OpenCL_read_4_kernel
.global@llvm.argtypename.annotations.__OpenCL_read_4_kernel
.global@llvm.argtypeconst.annotations.__OpenCL_read_4_kernel
.global@sgv19
.global@fgv20
.global@lvgv21
.global@rvgv22
.global@.str23
.global@.str24
.global@.str25
.global@.str26
.global@.str27
.global@llvm.signedOrSignedpointee.annotations.__OpenCL_read_8_kernel
.global@llvm.argtypename.annotations.__OpenCL_read_8_kernel
.global@llvm.argtypeconst.annotations.__OpenCL_read_8_kernel
.global@sgv28
.global@fgv29
.global@lvgv30
.global@rvgv31
.global@.str32
.global@.str33
.global@.str34
.global@.str35
.global@.str36
.global@llvm.signedOrSignedpointee.annotations.__OpenCL_read_16_kernel
.global@llvm.argtypename.annotations.__OpenCL_read_16_kernel
.global@llvm.argtypeconst.annotations.__OpenCL_read_16_kernel
.global@sgv37
.global@fgv38
.global@lvgv39
.global@rvgv40
.global@llvm.global.annotations
;DEBUGEND

end
