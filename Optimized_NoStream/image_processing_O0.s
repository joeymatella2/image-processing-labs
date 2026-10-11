	.file	"image_processing.cpp"
	.intel_syntax noprefix
# GNU C++17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O0 -std=c++17 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.rodata
	.align 8
	.type	_ZN7cvflannL8WORDSIZEE, @object
	.size	_ZN7cvflannL8WORDSIZEE, 8
_ZN7cvflannL8WORDSIZEE:
	.quad	16
	.align 8
	.type	_ZN7cvflannL9BLOCKSIZEE, @object
	.size	_ZN7cvflannL9BLOCKSIZEE, 8
_ZN7cvflannL9BLOCKSIZEE:
	.quad	8192
	.text
	.globl	_Z9grayscaleRKN2cv3MatE
	.type	_Z9grayscaleRKN2cv3MatE, @function
_Z9grayscaleRKN2cv3MatE:
.LFB10198:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10198
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 88	#,
	.cfi_offset 3, -24
	mov	QWORD PTR -88[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -96[rbp], rsi	# frame, frame
# image_processing.cpp:29: {
	mov	rax, QWORD PTR fs:40	# tmp152, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -24[rbp], rax	# D.364905, tmp152
	xor	eax, eax	# tmp152
# image_processing.cpp:30:     const int rows = frame.rows;
	mov	rax, QWORD PTR -96[rbp]	# tmp117, frame
	mov	eax, DWORD PTR 8[rax]	# tmp118, frame_40(D)->rows
	mov	DWORD PTR -56[rbp], eax	# rows, tmp118
# image_processing.cpp:31:     const int cols = frame.cols;
	mov	rax, QWORD PTR -96[rbp]	# tmp119, frame
	mov	eax, DWORD PTR 12[rax]	# tmp120, frame_40(D)->cols
	mov	DWORD PTR -52[rbp], eax	# cols, tmp120
# image_processing.cpp:33:     cv::Mat grayFrame(rows, cols, CV_8UC1);
	mov	edx, DWORD PTR -52[rbp]	# tmp121, cols
	mov	esi, DWORD PTR -56[rbp]	# tmp122, rows
	mov	rax, QWORD PTR -88[rbp]	# tmp123, <retval>
	mov	ecx, 0	#,
	mov	rdi, rax	#, tmp123
.LEHB0:
	call	_ZN2cv3MatC1Eiii@PLT	#
.LEHE0:
# image_processing.cpp:34:     for (int y = 0; y < rows; ++y)
	mov	DWORD PTR -64[rbp], 0	# y,
# image_processing.cpp:34:     for (int y = 0; y < rows; ++y)
	jmp	.L2	#
.L5:
# image_processing.cpp:36:         const uint8_t* row_ptr = frame.ptr<uint8_t>(y);
	mov	edx, DWORD PTR -64[rbp]	# tmp124, y
	mov	rax, QWORD PTR -96[rbp]	# tmp125, frame
	mov	esi, edx	#, tmp124
	mov	rdi, rax	#, tmp125
	call	_ZNK2cv3Mat3ptrIhEEPKT_i	#
	mov	QWORD PTR -48[rbp], rax	# row_ptr, tmp126
# image_processing.cpp:37:         uint8_t* gray_row_ptr = grayFrame.ptr<uint8_t>(y);
	mov	edx, DWORD PTR -64[rbp]	# tmp127, y
	mov	rax, QWORD PTR -88[rbp]	# tmp128, <retval>
	mov	esi, edx	#, tmp127
	mov	rdi, rax	#, tmp128
	call	_ZN2cv3Mat3ptrIhEEPT_i	#
	mov	QWORD PTR -40[rbp], rax	# gray_row_ptr, tmp129
# image_processing.cpp:38:         for (int x = 0; x < cols; ++x)
	mov	DWORD PTR -60[rbp], 0	# x,
# image_processing.cpp:38:         for (int x = 0; x < cols; ++x)
	jmp	.L3	#
.L4:
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	mov	edx, DWORD PTR -60[rbp]	# tmp130, x
	mov	eax, edx	# tmp131, tmp130
	add	eax, eax	# tmp131
	add	eax, edx	# _1, tmp130
	cdqe
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	lea	rdx, 2[rax]	# _3,
	mov	rax, QWORD PTR -48[rbp]	# tmp132, row_ptr
	add	rax, rdx	# _4, _3
	movzx	eax, BYTE PTR [rax]	# _5, *_4
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	movzx	ecx, al	# _6, _5
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	mov	edx, DWORD PTR -60[rbp]	# tmp133, x
	mov	eax, edx	# tmp134, tmp133
	add	eax, eax	# tmp134
	add	eax, edx	# _7, tmp133
	cdqe
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	lea	rdx, 1[rax]	# _9,
	mov	rax, QWORD PTR -48[rbp]	# tmp135, row_ptr
	add	rax, rdx	# _10, _9
	movzx	eax, BYTE PTR [rax]	# _11, *_10
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	movzx	edi, al	# _12, _11
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	mov	edx, DWORD PTR -60[rbp]	# tmp136, x
	mov	eax, edx	# tmp137, tmp136
	add	eax, eax	# tmp137
	add	eax, edx	# _13, tmp136
	movsx	rdx, eax	# _14, _13
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	mov	rax, QWORD PTR -48[rbp]	# tmp138, row_ptr
	add	rax, rdx	# _15, _14
	movzx	eax, BYTE PTR [rax]	# _16, *_15
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	movzx	esi, al	# _17, _16
	lea	rax, -27[rbp]	# tmp139,
	mov	edx, edi	#, _12
	mov	rdi, rax	#, tmp139
.LEHB1:
	call	_ZN2cv3VecIhLi3EEC1Ehhh	#
.LEHE1:
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	lea	rax, -27[rbp]	# tmp140,
	mov	esi, 2	#,
	mov	rdi, rax	#, tmp140
	call	_ZN2cv3VecIhLi3EEixEi	#
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	movzx	eax, BYTE PTR [rax]	# _19, *_18
	movzx	eax, al	# _20, _19
	imul	ebx, eax, 54	# _21, _20,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	lea	rax, -27[rbp]	# tmp141,
	mov	esi, 1	#,
	mov	rdi, rax	#, tmp141
	call	_ZN2cv3VecIhLi3EEixEi	#
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	movzx	eax, BYTE PTR [rax]	# _23, *_22
	movzx	eax, al	# _24, _23
	imul	eax, eax, 183	# _25, _24,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	add	ebx, eax	# _26, _25
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	lea	rax, -27[rbp]	# tmp142,
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp142
	call	_ZN2cv3VecIhLi3EEixEi	#
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	movzx	eax, BYTE PTR [rax]	# _28, *_27
	movzx	edx, al	# _29, _28
	mov	eax, edx	# tmp143, _29
	sal	eax, 3	# tmp143,
	add	eax, edx	# tmp143, _29
	add	eax, eax	# tmp144
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	add	eax, ebx	# _31, _26
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	sar	eax, 8	# _32,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	mov	BYTE PTR -65[rbp], al	# grayValue, _32
# image_processing.cpp:47:             gray_row_ptr[x] = grayValue;
	mov	eax, DWORD PTR -60[rbp]	# tmp145, x
	movsx	rdx, eax	# _33, tmp145
# image_processing.cpp:47:             gray_row_ptr[x] = grayValue;
	mov	rax, QWORD PTR -40[rbp]	# tmp146, gray_row_ptr
	add	rdx, rax	# _34, tmp146
# image_processing.cpp:47:             gray_row_ptr[x] = grayValue;
	movzx	eax, BYTE PTR -65[rbp]	# tmp147, grayValue
	mov	BYTE PTR [rdx], al	# *_34, tmp147
# image_processing.cpp:38:         for (int x = 0; x < cols; ++x)
	add	DWORD PTR -60[rbp], 1	# x,
.L3:
# image_processing.cpp:38:         for (int x = 0; x < cols; ++x)
	mov	eax, DWORD PTR -60[rbp]	# tmp148, x
	cmp	eax, DWORD PTR -52[rbp]	# tmp148, cols
	jl	.L4	#,
# image_processing.cpp:34:     for (int y = 0; y < rows; ++y)
	add	DWORD PTR -64[rbp], 1	# y,
.L2:
# image_processing.cpp:34:     for (int y = 0; y < rows; ++y)
	mov	eax, DWORD PTR -64[rbp]	# tmp149, y
	cmp	eax, DWORD PTR -56[rbp]	# tmp149, rows
	jl	.L5	#,
# image_processing.cpp:50:     return grayFrame;
	jmp	.L11	#
.L10:
	endbr64	
# image_processing.cpp:51: }
	mov	rbx, rax	# tmp151,
	mov	rax, QWORD PTR -88[rbp]	# tmp150, <retval>
	mov	rdi, rax	#, tmp150
	call	_ZN2cv3MatD1Ev@PLT	#
	mov	rax, rbx	# D.364904, tmp151
	mov	rdx, QWORD PTR -24[rbp]	# tmp153, D.364905
	sub	rdx, QWORD PTR fs:40	# tmp153, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L8	#,
	call	__stack_chk_fail@PLT	#
.L8:
	mov	rdi, rax	#, D.364904
.LEHB2:
	call	_Unwind_Resume@PLT	#
.LEHE2:
.L11:
	mov	rax, QWORD PTR -24[rbp]	# tmp154, D.364905
	sub	rax, QWORD PTR fs:40	# tmp154, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L9	#,
	call	__stack_chk_fail@PLT	#
.L9:
	mov	rax, QWORD PTR -88[rbp]	#, <retval>
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10198:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA10198:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10198-.LLSDACSB10198
.LLSDACSB10198:
	.uleb128 .LEHB0-.LFB10198
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB10198
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L10-.LFB10198
	.uleb128 0
	.uleb128 .LEHB2-.LFB10198
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE10198:
	.text
	.size	_Z9grayscaleRKN2cv3MatE, .-_Z9grayscaleRKN2cv3MatE
	.globl	_Z11sobelFilterRKN2cv3MatE
	.type	_Z11sobelFilterRKN2cv3MatE, @function
_Z11sobelFilterRKN2cv3MatE:
.LFB10199:
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 96	#,
	mov	QWORD PTR -88[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -96[rbp], rsi	# grayFrame, grayFrame
# image_processing.cpp:68:     const int rows = grayFrame.rows;
	mov	rax, QWORD PTR -96[rbp]	# tmp166, grayFrame
	mov	eax, DWORD PTR 8[rax]	# tmp167, grayFrame_91(D)->rows
	mov	DWORD PTR -56[rbp], eax	# rows, tmp167
# image_processing.cpp:69:     const int cols = grayFrame.cols;
	mov	rax, QWORD PTR -96[rbp]	# tmp168, grayFrame
	mov	eax, DWORD PTR 12[rax]	# tmp169, grayFrame_91(D)->cols
	mov	DWORD PTR -52[rbp], eax	# cols, tmp169
# image_processing.cpp:71:     cv::Mat sobelFrame(rows - 2, cols - 2, CV_8UC1);
	mov	eax, DWORD PTR -52[rbp]	# tmp170, cols
	lea	edx, -2[rax]	# _1,
	mov	eax, DWORD PTR -56[rbp]	# tmp171, rows
	lea	esi, -2[rax]	# _2,
	mov	rax, QWORD PTR -88[rbp]	# tmp172, <retval>
	mov	ecx, 0	#,
	mov	rdi, rax	#, tmp172
	call	_ZN2cv3MatC1Eiii@PLT	#
# image_processing.cpp:72:     for (int y = 1; y < rows - 1; ++y)
	mov	DWORD PTR -68[rbp], 1	# y,
# image_processing.cpp:72:     for (int y = 1; y < rows - 1; ++y)
	jmp	.L13	#
.L19:
# image_processing.cpp:74:         const uint8_t* row_ptr_top = grayFrame.ptr<uint8_t>(y - 1);
	mov	eax, DWORD PTR -68[rbp]	# tmp173, y
	lea	edx, -1[rax]	# _3,
	mov	rax, QWORD PTR -96[rbp]	# tmp174, grayFrame
	mov	esi, edx	#, _3
	mov	rdi, rax	#, tmp174
	call	_ZNK2cv3Mat3ptrIhEEPKT_i	#
	mov	QWORD PTR -32[rbp], rax	# row_ptr_top, tmp175
# image_processing.cpp:75:         const uint8_t* row_ptr_mid = grayFrame.ptr<uint8_t>(y);
	mov	edx, DWORD PTR -68[rbp]	# tmp176, y
	mov	rax, QWORD PTR -96[rbp]	# tmp177, grayFrame
	mov	esi, edx	#, tmp176
	mov	rdi, rax	#, tmp177
	call	_ZNK2cv3Mat3ptrIhEEPKT_i	#
	mov	QWORD PTR -24[rbp], rax	# row_ptr_mid, tmp178
# image_processing.cpp:76:         const uint8_t* row_ptr_bot = grayFrame.ptr<uint8_t>(y + 1);
	mov	eax, DWORD PTR -68[rbp]	# tmp179, y
	lea	edx, 1[rax]	# _4,
	mov	rax, QWORD PTR -96[rbp]	# tmp180, grayFrame
	mov	esi, edx	#, _4
	mov	rdi, rax	#, tmp180
	call	_ZNK2cv3Mat3ptrIhEEPKT_i	#
	mov	QWORD PTR -16[rbp], rax	# row_ptr_bot, tmp181
# image_processing.cpp:77:         uint8_t* sobel_row_ptr = sobelFrame.ptr<uint8_t>(y - 1);
	mov	eax, DWORD PTR -68[rbp]	# tmp182, y
	lea	edx, -1[rax]	# _5,
	mov	rax, QWORD PTR -88[rbp]	# tmp183, <retval>
	mov	esi, edx	#, _5
	mov	rdi, rax	#, tmp183
	call	_ZN2cv3Mat3ptrIhEEPT_i	#
	mov	QWORD PTR -8[rbp], rax	# sobel_row_ptr, tmp184
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	mov	DWORD PTR -64[rbp], 1	# x,
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	jmp	.L14	#
.L18:
# image_processing.cpp:82:                 (row_ptr_top[x + 1]
	mov	eax, DWORD PTR -64[rbp]	# tmp185, x
	cdqe
# image_processing.cpp:82:                 (row_ptr_top[x + 1]
	lea	rdx, 1[rax]	# _7,
	mov	rax, QWORD PTR -32[rbp]	# tmp186, row_ptr_top
	add	rax, rdx	# _8, _7
	movzx	eax, BYTE PTR [rax]	# _9, *_8
	movzx	eax, al	# _10, _9
# image_processing.cpp:83:                 + 2 * row_ptr_mid[x + 1]
	mov	edx, DWORD PTR -64[rbp]	# tmp187, x
	movsx	rdx, edx	# _11, tmp187
# image_processing.cpp:83:                 + 2 * row_ptr_mid[x + 1]
	lea	rcx, 1[rdx]	# _12,
	mov	rdx, QWORD PTR -24[rbp]	# tmp188, row_ptr_mid
	add	rdx, rcx	# _13, _12
	movzx	edx, BYTE PTR [rdx]	# _14, *_13
	movzx	edx, dl	# _15, _14
# image_processing.cpp:83:                 + 2 * row_ptr_mid[x + 1]
	add	edx, edx	# _16
# image_processing.cpp:83:                 + 2 * row_ptr_mid[x + 1]
	add	edx, eax	# _17, _10
# image_processing.cpp:84:                 + row_ptr_bot[x + 1])
	mov	eax, DWORD PTR -64[rbp]	# tmp189, x
	cdqe
# image_processing.cpp:84:                 + row_ptr_bot[x + 1])
	lea	rcx, 1[rax]	# _19,
	mov	rax, QWORD PTR -16[rbp]	# tmp190, row_ptr_bot
	add	rax, rcx	# _20, _19
	movzx	eax, BYTE PTR [rax]	# _21, *_20
	movzx	eax, al	# _22, _21
# image_processing.cpp:84:                 + row_ptr_bot[x + 1])
	lea	ecx, [rdx+rax]	# _23,
# image_processing.cpp:86:                 (row_ptr_top[x - 1]
	mov	eax, DWORD PTR -64[rbp]	# tmp191, x
	cdqe
# image_processing.cpp:86:                 (row_ptr_top[x - 1]
	lea	rdx, -1[rax]	# _25,
	mov	rax, QWORD PTR -32[rbp]	# tmp192, row_ptr_top
	add	rax, rdx	# _26, _25
	movzx	eax, BYTE PTR [rax]	# _27, *_26
	movzx	eax, al	# _28, _27
# image_processing.cpp:87:                 + 2 * row_ptr_mid[x - 1]
	mov	edx, DWORD PTR -64[rbp]	# tmp193, x
	movsx	rdx, edx	# _29, tmp193
# image_processing.cpp:87:                 + 2 * row_ptr_mid[x - 1]
	lea	rsi, -1[rdx]	# _30,
	mov	rdx, QWORD PTR -24[rbp]	# tmp194, row_ptr_mid
	add	rdx, rsi	# _31, _30
	movzx	edx, BYTE PTR [rdx]	# _32, *_31
	movzx	edx, dl	# _33, _32
# image_processing.cpp:87:                 + 2 * row_ptr_mid[x - 1]
	add	edx, edx	# _34
# image_processing.cpp:87:                 + 2 * row_ptr_mid[x - 1]
	add	edx, eax	# _35, _28
# image_processing.cpp:88:                 + row_ptr_bot[x - 1]);
	mov	eax, DWORD PTR -64[rbp]	# tmp195, x
	cdqe
# image_processing.cpp:88:                 + row_ptr_bot[x - 1]);
	lea	rsi, -1[rax]	# _37,
	mov	rax, QWORD PTR -16[rbp]	# tmp196, row_ptr_bot
	add	rax, rsi	# _38, _37
	movzx	eax, BYTE PTR [rax]	# _39, *_38
	movzx	eax, al	# _40, _39
# image_processing.cpp:88:                 + row_ptr_bot[x - 1]);
	add	edx, eax	# _41, _40
# image_processing.cpp:81:             int gx =
	mov	eax, ecx	# _23, _23
	sub	eax, edx	# _23, _41
	mov	DWORD PTR -48[rbp], eax	# gx, tmp197
# image_processing.cpp:92:                 (row_ptr_bot[x - 1] 
	mov	eax, DWORD PTR -64[rbp]	# tmp198, x
	cdqe
# image_processing.cpp:92:                 (row_ptr_bot[x - 1] 
	lea	rdx, -1[rax]	# _43,
	mov	rax, QWORD PTR -16[rbp]	# tmp199, row_ptr_bot
	add	rax, rdx	# _44, _43
	movzx	eax, BYTE PTR [rax]	# _45, *_44
	movzx	eax, al	# _46, _45
# image_processing.cpp:93:                 + 2 * row_ptr_bot[x]
	mov	edx, DWORD PTR -64[rbp]	# tmp200, x
	movsx	rcx, edx	# _47, tmp200
# image_processing.cpp:93:                 + 2 * row_ptr_bot[x]
	mov	rdx, QWORD PTR -16[rbp]	# tmp201, row_ptr_bot
	add	rdx, rcx	# _48, _47
	movzx	edx, BYTE PTR [rdx]	# _49, *_48
	movzx	edx, dl	# _50, _49
# image_processing.cpp:93:                 + 2 * row_ptr_bot[x]
	add	edx, edx	# _51
# image_processing.cpp:93:                 + 2 * row_ptr_bot[x]
	add	edx, eax	# _52, _46
# image_processing.cpp:94:                 + row_ptr_bot[x + 1])
	mov	eax, DWORD PTR -64[rbp]	# tmp202, x
	cdqe
# image_processing.cpp:94:                 + row_ptr_bot[x + 1])
	lea	rcx, 1[rax]	# _54,
	mov	rax, QWORD PTR -16[rbp]	# tmp203, row_ptr_bot
	add	rax, rcx	# _55, _54
	movzx	eax, BYTE PTR [rax]	# _56, *_55
	movzx	eax, al	# _57, _56
# image_processing.cpp:94:                 + row_ptr_bot[x + 1])
	lea	esi, [rdx+rax]	# _58,
# image_processing.cpp:96:                 (row_ptr_top[x - 1]
	mov	eax, DWORD PTR -64[rbp]	# tmp204, x
	cdqe
# image_processing.cpp:96:                 (row_ptr_top[x - 1]
	lea	rdx, -1[rax]	# _60,
	mov	rax, QWORD PTR -32[rbp]	# tmp205, row_ptr_top
	add	rax, rdx	# _61, _60
	movzx	eax, BYTE PTR [rax]	# _62, *_61
	movzx	eax, al	# _63, _62
# image_processing.cpp:97:                 + 2 * row_ptr_top[x]
	mov	edx, DWORD PTR -64[rbp]	# tmp206, x
	movsx	rcx, edx	# _64, tmp206
# image_processing.cpp:97:                 + 2 * row_ptr_top[x]
	mov	rdx, QWORD PTR -32[rbp]	# tmp207, row_ptr_top
	add	rdx, rcx	# _65, _64
	movzx	edx, BYTE PTR [rdx]	# _66, *_65
	movzx	edx, dl	# _67, _66
# image_processing.cpp:97:                 + 2 * row_ptr_top[x]
	add	edx, edx	# _68
# image_processing.cpp:97:                 + 2 * row_ptr_top[x]
	add	edx, eax	# _69, _63
# image_processing.cpp:98:                 + row_ptr_top[x + 1]);
	mov	eax, DWORD PTR -64[rbp]	# tmp208, x
	cdqe
# image_processing.cpp:98:                 + row_ptr_top[x + 1]);
	lea	rcx, 1[rax]	# _71,
	mov	rax, QWORD PTR -32[rbp]	# tmp209, row_ptr_top
	add	rax, rcx	# _72, _71
	movzx	eax, BYTE PTR [rax]	# _73, *_72
	movzx	eax, al	# _74, _73
# image_processing.cpp:98:                 + row_ptr_top[x + 1]);
	add	edx, eax	# _75, _74
# image_processing.cpp:91:             int gy = 
	mov	eax, esi	# _58, _58
	sub	eax, edx	# _58, _75
	mov	DWORD PTR -44[rbp], eax	# gy, tmp210
# image_processing.cpp:102:             int abs_gx = (gx < 0) ? -gx : gx;
	mov	eax, DWORD PTR -48[rbp]	# tmp223, gx
	mov	edx, eax	# tmp224, tmp223
	neg	edx	# tmp224
	cmovns	eax, edx	# tmp224,, tmp211
	mov	DWORD PTR -40[rbp], eax	# abs_gx, tmp211
# image_processing.cpp:103:             int abs_gy = (gy < 0) ? -gy : gy;
	mov	eax, DWORD PTR -44[rbp]	# tmp225, gy
	mov	edx, eax	# tmp226, tmp225
	neg	edx	# tmp226
	cmovns	eax, edx	# tmp226,, tmp212
	mov	DWORD PTR -36[rbp], eax	# abs_gy, tmp212
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	mov	eax, DWORD PTR -40[rbp]	# tmp213, abs_gx
	cmp	eax, DWORD PTR -36[rbp]	# tmp213, abs_gy
	jle	.L15	#,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	mov	eax, DWORD PTR -36[rbp]	# tmp214, abs_gy
	sar	eax	# tmp214
	mov	edx, eax	# _76, tmp214
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	mov	eax, DWORD PTR -40[rbp]	# tmp215, abs_gx
	add	eax, edx	# iftmp.0_87, _76
	jmp	.L16	#
.L15:
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	mov	eax, DWORD PTR -40[rbp]	# tmp216, abs_gx
	sar	eax	# tmp216
	mov	edx, eax	# _77, tmp216
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	mov	eax, DWORD PTR -36[rbp]	# tmp217, abs_gy
	add	eax, edx	# iftmp.0_87, _77
.L16:
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	mov	DWORD PTR -60[rbp], eax	# magnitude, iftmp.0_87
# image_processing.cpp:108:             if (magnitude > 255)
	cmp	DWORD PTR -60[rbp], 255	# magnitude,
	jle	.L17	#,
# image_processing.cpp:110:                 magnitude = 255;
	mov	DWORD PTR -60[rbp], 255	# magnitude,
.L17:
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	mov	eax, DWORD PTR -64[rbp]	# tmp218, x
	cdqe
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	lea	rdx, -1[rax]	# _79,
	mov	rax, QWORD PTR -8[rbp]	# tmp219, sobel_row_ptr
	add	rax, rdx	# _80, _79
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	mov	edx, DWORD PTR -60[rbp]	# tmp220, magnitude
	mov	BYTE PTR [rax], dl	# *_80, _81
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	add	DWORD PTR -64[rbp], 1	# x,
.L14:
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	mov	eax, DWORD PTR -52[rbp]	# tmp221, cols
	sub	eax, 1	# _82,
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	cmp	DWORD PTR -64[rbp], eax	# x, _82
	jl	.L18	#,
# image_processing.cpp:72:     for (int y = 1; y < rows - 1; ++y)
	add	DWORD PTR -68[rbp], 1	# y,
.L13:
# image_processing.cpp:72:     for (int y = 1; y < rows - 1; ++y)
	mov	eax, DWORD PTR -56[rbp]	# tmp222, rows
	sub	eax, 1	# _83,
# image_processing.cpp:72:     for (int y = 1; y < rows - 1; ++y)
	cmp	DWORD PTR -68[rbp], eax	# y, _83
	jl	.L19	#,
# image_processing.cpp:118:     return sobelFrame;
	nop	
# image_processing.cpp:119: }
	mov	rax, QWORD PTR -88[rbp]	#, <retval>
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10199:
	.size	_Z11sobelFilterRKN2cv3MatE, .-_Z11sobelFilterRKN2cv3MatE
	.section	.text._ZNK2cv3Mat3ptrIhEEPKT_i,"axG",@progbits,_ZNK2cv3Mat3ptrIhEEPKT_i,comdat
	.align 2
	.weak	_ZNK2cv3Mat3ptrIhEEPKT_i
	.type	_ZNK2cv3Mat3ptrIhEEPKT_i, @function
_ZNK2cv3Mat3ptrIhEEPKT_i:
.LFB11350:
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# this, this
	mov	DWORD PTR -12[rbp], esi	# y, y
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rax, QWORD PTR -8[rbp]	# tmp89, this
	mov	rcx, QWORD PTR 16[rax]	# _1, this_7(D)->data
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rax, QWORD PTR -8[rbp]	# tmp90, this
	mov	rax, QWORD PTR 72[rax]	# _2, this_7(D)->step.p
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rdx, QWORD PTR [rax]	# _3, *_2
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	eax, DWORD PTR -12[rbp]	# tmp91, y
	cdqe
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	imul	rax, rdx	# _5, _3
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	add	rax, rcx	# _9, _1
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:724: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11350:
	.size	_ZNK2cv3Mat3ptrIhEEPKT_i, .-_ZNK2cv3Mat3ptrIhEEPKT_i
	.section	.text._ZN2cv3Mat3ptrIhEEPT_i,"axG",@progbits,_ZN2cv3Mat3ptrIhEEPT_i,comdat
	.align 2
	.weak	_ZN2cv3Mat3ptrIhEEPT_i
	.type	_ZN2cv3Mat3ptrIhEEPT_i, @function
_ZN2cv3Mat3ptrIhEEPT_i:
.LFB11351:
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# this, this
	mov	DWORD PTR -12[rbp], esi	# y, y
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	rax, QWORD PTR -8[rbp]	# tmp89, this
	mov	rcx, QWORD PTR 16[rax]	# _1, this_7(D)->data
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	rax, QWORD PTR -8[rbp]	# tmp90, this
	mov	rax, QWORD PTR 72[rax]	# _2, this_7(D)->step.p
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	rdx, QWORD PTR [rax]	# _3, *_2
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	eax, DWORD PTR -12[rbp]	# tmp91, y
	cdqe
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	imul	rax, rdx	# _5, _3
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	add	rax, rcx	# _9, _1
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:717: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11351:
	.size	_ZN2cv3Mat3ptrIhEEPT_i, .-_ZN2cv3Mat3ptrIhEEPT_i
	.section	.text._ZN2cv3VecIhLi3EEC2Ehhh,"axG",@progbits,_ZN2cv3VecIhLi3EEC5Ehhh,comdat
	.align 2
	.weak	_ZN2cv3VecIhLi3EEC2Ehhh
	.type	_ZN2cv3VecIhLi3EEC2Ehhh, @function
_ZN2cv3VecIhLi3EEC2Ehhh:
.LFB11353:
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -8[rbp], rdi	# this, this
	mov	eax, ecx	# tmp90, v2
	mov	ecx, esi	# tmp87, tmp86
	mov	BYTE PTR -12[rbp], cl	# v0, tmp87
	mov	BYTE PTR -16[rbp], dl	# v1, tmp89
	mov	BYTE PTR -20[rbp], al	# v2, tmp91
# /usr/include/opencv4/opencv2/core/matx.hpp:998:     : Matx<_Tp, cn, 1>(v0, v1, v2) {}
	mov	rax, QWORD PTR -8[rbp]	# _1, this
	movzx	ecx, BYTE PTR -20[rbp]	# _2, v2
	movzx	edx, BYTE PTR -16[rbp]	# _3, v1
	movzx	esi, BYTE PTR -12[rbp]	# _4, v0
	mov	rdi, rax	#, _1
	call	_ZN2cv4MatxIhLi3ELi1EEC2Ehhh	#
# /usr/include/opencv4/opencv2/core/matx.hpp:998:     : Matx<_Tp, cn, 1>(v0, v1, v2) {}
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11353:
	.size	_ZN2cv3VecIhLi3EEC2Ehhh, .-_ZN2cv3VecIhLi3EEC2Ehhh
	.weak	_ZN2cv3VecIhLi3EEC1Ehhh
	.set	_ZN2cv3VecIhLi3EEC1Ehhh,_ZN2cv3VecIhLi3EEC2Ehhh
	.section	.text._ZN2cv3VecIhLi3EEixEi,"axG",@progbits,_ZN2cv3VecIhLi3EEixEi,comdat
	.align 2
	.weak	_ZN2cv3VecIhLi3EEixEi
	.type	_ZN2cv3VecIhLi3EEixEi, @function
_ZN2cv3VecIhLi3EEixEi:
.LFB11355:
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# this, this
	mov	DWORD PTR -12[rbp], esi	# i, i
# /usr/include/opencv4/opencv2/core/matx.hpp:1150:     return this->val[i];
	mov	eax, DWORD PTR -12[rbp]	# tmp85, i
	movsx	rdx, eax	# tmp84, tmp85
	mov	rax, QWORD PTR -8[rbp]	# tmp86, this
	add	rax, rdx	# _3, tmp84
# /usr/include/opencv4/opencv2/core/matx.hpp:1151: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11355:
	.size	_ZN2cv3VecIhLi3EEixEi, .-_ZN2cv3VecIhLi3EEixEi
	.section	.text._ZN2cv4MatxIhLi3ELi1EEC2Ehhh,"axG",@progbits,_ZN2cv4MatxIhLi3ELi1EEC5Ehhh,comdat
	.align 2
	.weak	_ZN2cv4MatxIhLi3ELi1EEC2Ehhh
	.type	_ZN2cv4MatxIhLi3ELi1EEC2Ehhh, @function
_ZN2cv4MatxIhLi3ELi1EEC2Ehhh:
.LFB12209:
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi	# this, this
	mov	eax, ecx	# tmp86, v2
	mov	ecx, esi	# tmp83, tmp82
	mov	BYTE PTR -28[rbp], cl	# v0, tmp83
	mov	BYTE PTR -32[rbp], dl	# v1, tmp85
	mov	BYTE PTR -36[rbp], al	# v2, tmp87
# /usr/include/opencv4/opencv2/core/matx.hpp:577:     val[0] = v0; val[1] = v1; val[2] = v2;
	mov	rax, QWORD PTR -24[rbp]	# tmp88, this
	movzx	edx, BYTE PTR -28[rbp]	# tmp89, v0
	mov	BYTE PTR [rax], dl	# this_4(D)->val[0], tmp89
# /usr/include/opencv4/opencv2/core/matx.hpp:577:     val[0] = v0; val[1] = v1; val[2] = v2;
	mov	rax, QWORD PTR -24[rbp]	# tmp90, this
	movzx	edx, BYTE PTR -32[rbp]	# tmp91, v1
	mov	BYTE PTR 1[rax], dl	# this_4(D)->val[1], tmp91
# /usr/include/opencv4/opencv2/core/matx.hpp:577:     val[0] = v0; val[1] = v1; val[2] = v2;
	mov	rax, QWORD PTR -24[rbp]	# tmp92, this
	movzx	edx, BYTE PTR -36[rbp]	# tmp93, v2
	mov	BYTE PTR 2[rax], dl	# this_4(D)->val[2], tmp93
# /usr/include/opencv4/opencv2/core/matx.hpp:578:     for(int i = 3; i < channels; i++) val[i] = _Tp(0);
	mov	DWORD PTR -4[rbp], 3	# i,
# /usr/include/opencv4/opencv2/core/matx.hpp:578:     for(int i = 3; i < channels; i++) val[i] = _Tp(0);
	jmp	.L29	#
.L30:
# /usr/include/opencv4/opencv2/core/matx.hpp:578:     for(int i = 3; i < channels; i++) val[i] = _Tp(0);
	mov	rdx, QWORD PTR -24[rbp]	# tmp94, this
	mov	eax, DWORD PTR -4[rbp]	# tmp96, i
	cdqe
	mov	BYTE PTR [rdx+rax], 0	# this_4(D)->val[i_1],
# /usr/include/opencv4/opencv2/core/matx.hpp:578:     for(int i = 3; i < channels; i++) val[i] = _Tp(0);
	add	DWORD PTR -4[rbp], 1	# i,
.L29:
# /usr/include/opencv4/opencv2/core/matx.hpp:578:     for(int i = 3; i < channels; i++) val[i] = _Tp(0);
	cmp	DWORD PTR -4[rbp], 2	# i,
	jle	.L30	#,
# /usr/include/opencv4/opencv2/core/matx.hpp:579: }
	nop	
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12209:
	.size	_ZN2cv4MatxIhLi3ELi1EEC2Ehhh, .-_ZN2cv4MatxIhLi3ELi1EEC2Ehhh
	.weak	_ZN2cv4MatxIhLi3ELi1EEC1Ehhh
	.set	_ZN2cv4MatxIhLi3ELi1EEC1Ehhh,_ZN2cv4MatxIhLi3ELi1EEC2Ehhh
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.type	_ZSt12__is_ratio_vISt5ratioILl1ELl1000000000EEE, @object
	.size	_ZSt12__is_ratio_vISt5ratioILl1ELl1000000000EEE, 1
_ZSt12__is_ratio_vISt5ratioILl1ELl1000000000EEE:
	.byte	1
	.type	_ZSt12__is_ratio_vISt5ratioILl1ELl1EEE, @object
	.size	_ZSt12__is_ratio_vISt5ratioILl1ELl1EEE, 1
_ZSt12__is_ratio_vISt5ratioILl1ELl1EEE:
	.byte	1
	.type	_ZSt12__is_ratio_vISt5ratioILl1000000000ELl1EEE, @object
	.size	_ZSt12__is_ratio_vISt5ratioILl1000000000ELl1EEE, 1
_ZSt12__is_ratio_vISt5ratioILl1000000000ELl1EEE:
	.byte	1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
