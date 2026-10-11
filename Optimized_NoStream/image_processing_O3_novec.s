	.file	"image_processing.cpp"
	.intel_syntax noprefix
# GNU C++17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O3 -std=c++17 -fno-tree-loop-vectorize -fno-tree-slp-vectorize -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.p2align 4
	.globl	_Z9grayscaleRKN2cv3MatE
	.type	_Z9grayscaleRKN2cv3MatE, @function
_Z9grayscaleRKN2cv3MatE:
.LFB10319:
	.cfi_startproc
	endbr64	
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
# image_processing.cpp:33:     cv::Mat grayFrame(rows, cols, CV_8UC1);
	xor	ecx, ecx	#
# image_processing.cpp:29: {
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	mov	rbp, rdi	# <retval>, tmp139
	push	rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	mov	rbx, rsi	# frame, tmp140
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 48
# image_processing.cpp:30:     const int rows = frame.rows;
	mov	r12d, DWORD PTR 8[rsi]	# rows, frame_28(D)->rows
# image_processing.cpp:31:     const int cols = frame.cols;
	mov	r13d, DWORD PTR 12[rsi]	# cols, frame_28(D)->cols
# image_processing.cpp:33:     cv::Mat grayFrame(rows, cols, CV_8UC1);
	mov	esi, r12d	#, rows
	mov	edx, r13d	#, cols
	call	_ZN2cv3MatC1Eiii@PLT	#
# image_processing.cpp:34:     for (int y = 0; y < rows; ++y)
	test	r12d, r12d	# rows
	jle	.L1	#,
	test	r13d, r13d	# cols
	jle	.L1	#,
	movsx	r9, r12d	# _109, rows
	xor	r8d, r8d	# ivtmp.23
	movsx	r10, r13d	# cols, cols
	.p2align 4,,10
	.p2align 3
.L4:
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	rax, QWORD PTR 72[rbp]	# grayFrame_31(D)->step.p, grayFrame_31(D)->step.p
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rdx, QWORD PTR 72[rbx]	# frame_28(D)->step.p, frame_28(D)->step.p
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	rdi, QWORD PTR 16[rbp]	# _37, grayFrame_31(D)->data
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	rcx, QWORD PTR [rax]	# _33, *_36
	imul	rcx, r8	# _33, ivtmp.23
	mov	rax, rcx	# _33, _33
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rcx, QWORD PTR [rdx]	# tmp121, *_42
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rdx, QWORD PTR 16[rbx]	# tmp121, frame_28(D)->data
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	imul	rcx, r8	# tmp121, ivtmp.23
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	add	rdx, rcx	# tmp121, tmp121
	lea	rcx, [rdi+rax]	# ivtmp.19,
	add	rdi, r10	# tmp124, cols
	add	rdi, rax	# _112, _33
	.p2align 4,,10
	.p2align 3
.L3:
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	movzx	eax, BYTE PTR 2[rdx]	# MEM[(const uint8_t *)_117 + 2B], MEM[(const uint8_t *)_117 + 2B]
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	movzx	esi, BYTE PTR 1[rdx]	# MEM[(const uint8_t *)_117 + 1B], MEM[(const uint8_t *)_117 + 1B]
# image_processing.cpp:38:         for (int x = 0; x < cols; ++x)
	add	rcx, 1	# ivtmp.19,
	add	rdx, 3	# ivtmp.18,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	imul	esi, esi, 183	# tmp128, MEM[(const uint8_t *)_117 + 1B],
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	imul	eax, eax, 54	# tmp126, MEM[(const uint8_t *)_117 + 2B],
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	add	eax, esi	# tmp129, tmp128
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	movzx	esi, BYTE PTR -3[rdx]	# MEM[(const uint8_t *)_117], MEM[(const uint8_t *)_117]
	lea	esi, [rsi+rsi*8]	# tmp133,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	lea	eax, [rax+rsi*2]	# tmp135,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	mov	BYTE PTR -1[rcx], ah	# MEM[(uint8_t *)_116], tmp135
# image_processing.cpp:38:         for (int x = 0; x < cols; ++x)
	cmp	rdi, rcx	# _112, ivtmp.19
	jne	.L3	#,
# image_processing.cpp:34:     for (int y = 0; y < rows; ++y)
	add	r8, 1	# ivtmp.23,
	cmp	r9, r8	# _109, ivtmp.23
	jne	.L4	#,
.L1:
# image_processing.cpp:51: }
	add	rsp, 8	#,
	.cfi_def_cfa_offset 40
	mov	rax, rbp	#, <retval>
	pop	rbx	#
	.cfi_def_cfa_offset 32
	pop	rbp	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE10319:
	.size	_Z9grayscaleRKN2cv3MatE, .-_Z9grayscaleRKN2cv3MatE
	.p2align 4
	.globl	_Z11sobelFilterRKN2cv3MatE
	.type	_Z11sobelFilterRKN2cv3MatE, @function
_Z11sobelFilterRKN2cv3MatE:
.LFB10320:
	.cfi_startproc
	endbr64	
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# image_processing.cpp:71:     cv::Mat sobelFrame(rows - 2, cols - 2, CV_8UC1);
	xor	ecx, ecx	#
# image_processing.cpp:67: {
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	mov	r14, rdi	# <retval>, tmp186
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	mov	rbx, rsi	# grayFrame, tmp187
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 80
# image_processing.cpp:69:     const int cols = grayFrame.cols;
	mov	r13d, DWORD PTR 12[rsi]	# cols, grayFrame_56(D)->cols
# image_processing.cpp:68:     const int rows = grayFrame.rows;
	mov	ebp, DWORD PTR 8[rsi]	# rows, grayFrame_56(D)->rows
# image_processing.cpp:71:     cv::Mat sobelFrame(rows - 2, cols - 2, CV_8UC1);
	lea	r12d, -2[r13]	#,
	lea	esi, -2[rbp]	# tmp153,
	mov	edx, r12d	#, tmp185
	call	_ZN2cv3MatC1Eiii@PLT	#
# image_processing.cpp:72:     for (int y = 1; y < rows - 1; ++y)
	cmp	ebp, 2	# rows,
	jle	.L9	#,
	cmp	r13d, 2	# cols,
	jle	.L9	#,
	lea	r10d, -3[rbp]	# _229,
	xor	edi, edi	# ivtmp.40
	mov	QWORD PTR 8[rsp], r10	# %sfp, _229
	.p2align 4,,10
	.p2align 3
.L17:
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rax, QWORD PTR 72[rbx]	# grayFrame_56(D)->step.p, grayFrame_56(D)->step.p
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rcx, QWORD PTR 16[rbx]	# _80, grayFrame_56(D)->data
	mov	r8, rdi	# ivtmp.40, ivtmp.40
	mov	QWORD PTR [rsp], r8	# %sfp, ivtmp.40
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rdx, QWORD PTR [rax]	# _82, *_81
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rax, rdx	# _84, _82
	imul	rax, rdi	# _84, ivtmp.40
	add	rdi, 1	# ivtmp.40,
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	lea	rsi, [rcx+rax]	# _85,
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	add	rax, rdx	# _78, _82
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	lea	rbp, [rcx+rax]	# _79,
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	add	rax, rdx	# tmp157, _82
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	add	rcx, rax	# _75, tmp157
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	rax, QWORD PTR 72[r14]	# sobelFrame_59(D)->step.p, sobelFrame_59(D)->step.p
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	r13, QWORD PTR [rax]	# _72, *_62
	xor	eax, eax	# ivtmp.31
	imul	r13, r8	# _72, ivtmp.40
	add	r13, QWORD PTR 16[r14]	# tmp184, sobelFrame_59(D)->data
	.p2align 4,,10
	.p2align 3
.L12:
# image_processing.cpp:82:                 (row_ptr_top[x + 1]
	movzx	r8d, BYTE PTR 2[rsi+rax]	# _9, MEM[(const uint8_t *)_85 + 2B + ivtmp.31_242 * 1]
# image_processing.cpp:83:                 + 2 * row_ptr_mid[x + 1]
	movzx	edx, BYTE PTR 2[rbp+rax]	# MEM[(const uint8_t *)_79 + 2B + ivtmp.31_242 * 1], MEM[(const uint8_t *)_79 + 2B + ivtmp.31_242 * 1]
# image_processing.cpp:86:                 (row_ptr_top[x - 1]
	movzx	r9d, BYTE PTR [rsi+rax]	# _22, MEM[(const uint8_t *)_85 + ivtmp.31_242 * 1]
# image_processing.cpp:84:                 + row_ptr_bot[x + 1])
	movzx	r10d, BYTE PTR 2[rcx+rax]	# _17, MEM[(const uint8_t *)_75 + 2B + ivtmp.31_242 * 1]
# image_processing.cpp:83:                 + 2 * row_ptr_mid[x + 1]
	lea	r15d, [r8+rdx*2]	# tmp162,
# image_processing.cpp:87:                 + 2 * row_ptr_mid[x - 1]
	movzx	edx, BYTE PTR 0[rbp+rax]	# MEM[(const uint8_t *)_79 + ivtmp.31_242 * 1], MEM[(const uint8_t *)_79 + ivtmp.31_242 * 1]
# image_processing.cpp:88:                 + row_ptr_bot[x - 1]);
	movzx	r11d, BYTE PTR [rcx+rax]	# _30, MEM[(const uint8_t *)_75 + ivtmp.31_242 * 1]
# image_processing.cpp:84:                 + row_ptr_bot[x + 1])
	add	r15d, r10d	# tmp163, _17
# image_processing.cpp:87:                 + 2 * row_ptr_mid[x - 1]
	lea	edx, [r9+rdx*2]	# tmp166,
# image_processing.cpp:88:                 + row_ptr_bot[x - 1]);
	add	edx, r11d	# tmp167, _30
# image_processing.cpp:81:             int gx =
	sub	r15d, edx	# gx, tmp167
# image_processing.cpp:102:             int abs_gx = (gx < 0) ? -gx : gx;
	mov	edx, r15d	# tmp190, gx
	neg	edx	# tmp190
	cmovs	edx, r15d	# tmp190,, abs_gx, gx
# image_processing.cpp:93:                 + 2 * row_ptr_bot[x]
	movzx	r15d, BYTE PTR 1[rcx+rax]	# MEM[(const uint8_t *)_75 + 1B + ivtmp.31_242 * 1], MEM[(const uint8_t *)_75 + 1B + ivtmp.31_242 * 1]
# image_processing.cpp:93:                 + 2 * row_ptr_bot[x]
	lea	r11d, [r11+r15*2]	# tmp171,
# image_processing.cpp:94:                 + row_ptr_bot[x + 1])
	add	r10d, r11d	# tmp172, tmp171
# image_processing.cpp:97:                 + 2 * row_ptr_top[x]
	movzx	r11d, BYTE PTR 1[rsi+rax]	# MEM[(const uint8_t *)_85 + 1B + ivtmp.31_242 * 1], MEM[(const uint8_t *)_85 + 1B + ivtmp.31_242 * 1]
# image_processing.cpp:97:                 + 2 * row_ptr_top[x]
	lea	r9d, [r9+r11*2]	# tmp175,
# image_processing.cpp:98:                 + row_ptr_top[x + 1]);
	add	r8d, r9d	# tmp176, tmp175
# image_processing.cpp:91:             int gy = 
	sub	r10d, r8d	# gy, tmp176
# image_processing.cpp:103:             int abs_gy = (gy < 0) ? -gy : gy;
	mov	r8d, r10d	# tmp191, gy
	neg	r8d	# tmp191
	cmovns	r10d, r8d	# tmp191,, abs_gy
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	cmp	edx, r10d	# abs_gx, abs_gy
	jle	.L14	#,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	sar	r10d	# tmp180
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	add	r10d, edx	# tmp179, abs_gx
# image_processing.cpp:108:             if (magnitude > 255)
	mov	edx, 255	# tmp189,
	cmp	r10d, edx	# tmp179, tmp189
	cmovg	r10d, edx	# tmp179,, tmp179, tmp189
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	mov	BYTE PTR 0[r13+rax], r10b	# MEM[(uint8_t *)_5 + ivtmp.31_242 * 1], tmp179
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	add	rax, 1	# ivtmp.31,
	cmp	rax, r12	# ivtmp.31, _236
	jne	.L12	#,
	mov	r8, QWORD PTR [rsp]	# ivtmp.40, %sfp
# image_processing.cpp:72:     for (int y = 1; y < rows - 1; ++y)
	cmp	QWORD PTR 8[rsp], r8	# %sfp, ivtmp.40
	jne	.L17	#,
.L9:
# image_processing.cpp:119: }
	add	rsp, 24	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	mov	rax, r14	#, <retval>
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L14:
	.cfi_restore_state
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	sar	edx	# tmp183
# image_processing.cpp:108:             if (magnitude > 255)
	mov	r8d, 255	# tmp188,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	add	edx, r10d	# tmp182, abs_gy
# image_processing.cpp:108:             if (magnitude > 255)
	cmp	edx, r8d	# tmp182, tmp188
	cmovg	edx, r8d	# tmp182,, tmp182, tmp188
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	mov	BYTE PTR 0[r13+rax], dl	# MEM[(uint8_t *)_240 + ivtmp.31_242 * 1], tmp182
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	add	rax, 1	# ivtmp.31,
	cmp	r12, rax	# _236, ivtmp.31
	jne	.L12	#,
	mov	r8, QWORD PTR [rsp]	# ivtmp.40, %sfp
# image_processing.cpp:72:     for (int y = 1; y < rows - 1; ++y)
	cmp	QWORD PTR 8[rsp], r8	# %sfp, ivtmp.40
	jne	.L17	#,
	jmp	.L9	#
	.cfi_endproc
.LFE10320:
	.size	_Z11sobelFilterRKN2cv3MatE, .-_Z11sobelFilterRKN2cv3MatE
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
