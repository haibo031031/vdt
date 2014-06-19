il_cs_2_0
dcl_cb cb0[15] 
; Constant buffer that holds ABI data
dcl_literal l0, 0x00000004, 0x00000001, 0x00000002, 0x00000003
dcl_literal l1, 0x00FFFFFF, 0xFFFFFFFF, 0xFFFFFFFE, 0xFFFFFFFD
dcl_literal l2, 0x0000FFFF, 0xFFFFFFFE, 0x000000FF, 0xFFFFFFFC
dcl_literal l3, 0x00000018, 0x00000010, 0x00000008, 0xFFFFFFFF
dcl_literal l4, 0xFFFFFF00, 0xFFFF0000, 0xFF00FFFF, 0xFFFF00FF
dcl_literal l5, 0x00000000, 0x00000004, 0x00000008, 0x0000000C
dcl_literal l6, 0x00000020, 0x00000020, 0x00000020, 0x00000020
dcl_literal l7, 0x00000018, 0x0000001F, 0x00000010, 0x0000001F
dcl_literal l8, 0x80000000, 0x80000000, 0x80000000, 0x80000000
call 1026
;$
endmain
func 1026
;__OpenCL_read_4_kernel
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
dcl_literal l13, 0x00000000, 0x00000000, 0x00000000, 0x00000000
; f128:i128 00
dcl_literal l12, 0x00000002, 0x00000002, 0x00000002, 0x00000002
; f128:i128 85899345948589934594
dcl_literal l15, 0x00000004, 0x00000004, 0x00000004, 0x00000004
; f128:i128 1717986918817179869188
dcl_literal l16, 0x00000008, 0x00000008, 0x00000008, 0x00000008
; f128:i128 3435973837634359738376
dcl_literal l17, 0x0000000C, 0x0000000C, 0x0000000C, 0x0000000C
; f128:i128 5153960756451539607564
dcl_literal l14, 0x40400000, 0x40400000, 0x40400000, 0x40400000
; f128:i128 46297004180148060164629700418014806016
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
call 1033 
; read_4
ret
endfunc 
;__OpenCL_read_4_kernel
func 1033
;read_4
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
endfunc 
;read_4
end
