	.file	"image_processing.cpp"
	.intel_syntax noprefix
# GNU C++17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O3 -std=c++17 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	add	rdi, rax	# _110, _33
	.p2align 4,,10
	.p2align 3
.L3:
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	movzx	eax, BYTE PTR 2[rdx]	# MEM[(const uint8_t *)_119 + 2B], MEM[(const uint8_t *)_119 + 2B]
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	movzx	esi, BYTE PTR 1[rdx]	# MEM[(const uint8_t *)_119 + 1B], MEM[(const uint8_t *)_119 + 1B]
# image_processing.cpp:38:         for (int x = 0; x < cols; ++x)
	add	rcx, 1	# ivtmp.19,
	add	rdx, 3	# ivtmp.18,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	imul	esi, esi, 183	# tmp128, MEM[(const uint8_t *)_119 + 1B],
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	imul	eax, eax, 54	# tmp126, MEM[(const uint8_t *)_119 + 2B],
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	add	eax, esi	# tmp129, tmp128
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	movzx	esi, BYTE PTR -3[rdx]	# MEM[(const uint8_t *)_119], MEM[(const uint8_t *)_119]
	lea	esi, [rsi+rsi*8]	# tmp133,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	lea	eax, [rax+rsi*2]	# tmp135,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	mov	BYTE PTR -1[rcx], ah	# MEM[(uint8_t *)_116], tmp135
# image_processing.cpp:38:         for (int x = 0; x < cols; ++x)
	cmp	rdi, rcx	# _110, ivtmp.19
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
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 144
# image_processing.cpp:69:     const int cols = grayFrame.cols;
	mov	ebx, DWORD PTR 12[rsi]	# cols, grayFrame_56(D)->cols
# image_processing.cpp:68:     const int rows = grayFrame.rows;
	mov	r12d, DWORD PTR 8[rsi]	# rows, grayFrame_56(D)->rows
# image_processing.cpp:67: {
	mov	QWORD PTR 40[rsp], rsi	# %sfp, grayFrame
# image_processing.cpp:71:     cv::Mat sobelFrame(rows - 2, cols - 2, CV_8UC1);
	lea	ebp, -2[rbx]	# tmp626,
	lea	esi, -2[r12]	# tmp340,
# image_processing.cpp:67: {
	mov	QWORD PTR 32[rsp], rdi	# %sfp, <retval>
# image_processing.cpp:71:     cv::Mat sobelFrame(rows - 2, cols - 2, CV_8UC1);
	mov	edx, ebp	#, tmp626
	call	_ZN2cv3MatC1Eiii@PLT	#
# image_processing.cpp:72:     for (int y = 1; y < rows - 1; ++y)
	cmp	r12d, 2	# rows,
	jle	.L9	#,
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	lea	r8d, -1[rbx]	# _189,
	cmp	ebx, 2	# cols,
	jle	.L9	#,
	lea	eax, -3[r12]	# _708,
	pxor	xmm4, xmm4	# tmp633
# image_processing.cpp:102:             int abs_gx = (gx < 0) ? -gx : gx;
	pxor	xmm6, xmm6	# tmp635
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	xor	r13d, r13d	# ivtmp.146
	movdqa	xmm15, XMMWORD PTR .LC1[rip]	# tmp632,
	mov	QWORD PTR 48[rsp], rax	# %sfp, _708
	lea	eax, -3[rbx]	# _467,
	mov	ebx, ebp	# _726, tmp626
# image_processing.cpp:81:             int gx =
	movdqa	xmm8, XMMWORD PTR .LC2[rip]	# tmp634,
	mov	DWORD PTR 64[rsp], eax	# %sfp, _467
	mov	eax, ebp	# bnd.33, tmp626
	shr	eax, 4	#,
	sal	rax, 4	# bnd.33,
	mov	QWORD PTR 56[rsp], rax	# %sfp, bnd.33
	mov	eax, ebp	# tmp345, tmp626
	and	ebp, 15	# tmp626,
	and	eax, -16	# tmp345,
	mov	DWORD PTR 68[rsp], ebp	# %sfp, tmp626
	add	eax, 1	# ivtmp.113,
	mov	QWORD PTR 72[rsp], rax	# %sfp, ivtmp.113
	.p2align 4,,10
	.p2align 3
.L12:
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rax, QWORD PTR 40[rsp]	# grayFrame, %sfp
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	r14, QWORD PTR 32[rsp]	# <retval>, %sfp
	mov	r15, r13	# ivtmp.146, ivtmp.146
	mov	QWORD PTR 24[rsp], r13	# %sfp, ivtmp.146
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rdi, QWORD PTR 16[rax]	# _236, grayFrame_56(D)->data
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rax, QWORD PTR 72[rax]	# grayFrame_56(D)->step.p, grayFrame_56(D)->step.p
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	r10, QWORD PTR 72[r14]	# sobelFrame_59(D)->step.p, sobelFrame_59(D)->step.p
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	rsi, QWORD PTR 16[r14]	# _223, sobelFrame_59(D)->data
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	r9, QWORD PTR [rax]	# _234, *_235
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	imul	r15, QWORD PTR [r10]	# _220, *_222
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	r12, r9	# _232, _234
	imul	r12, r13	# _232, ivtmp.146
	add	r13, 1	# ivtmp.146,
	lea	rbp, [r12+r9]	# _229,
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	lea	rdx, [rdi+r12]	# _231,
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	add	r9, rbp	# _225, _229
	cmp	DWORD PTR 64[rsp], 14	# %sfp,
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	lea	rcx, [rdi+rbp]	# _228,
	lea	rax, [rdi+r9]	# _224,
	jbe	.L40	#,
	add	rsi, r15	# tmp627, _220
	lea	r15, 1[rdi+rbp]	# tmp352,
	lea	r10, 1[rdi+r9]	# _471,
	mov	r14, rsi	# tmp353, tmp627
	lea	r11, 1[rdi+r12]	# _485,
	sub	r14, r15	# tmp353, tmp352
	cmp	r14, 16	# tmp353,
	mov	r14, rsi	# tmp356, tmp627
	seta	r15b	#, tmp355
	sub	r14, r10	# tmp356, _471
	cmp	r14, 16	# tmp356,
	seta	r14b	#, tmp358
	test	r15b, r14b	# tmp355, tmp358
	je	.L14	#,
	mov	r14, rsi	# tmp360, tmp627
	sub	r14, r11	# tmp360, _485
	cmp	r14, 16	# tmp360,
	jbe	.L14	#,
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	r14, QWORD PTR 56[rsp]	# _715, %sfp
	lea	r12, 2[rdi+r12]	# vectp.37,
	lea	rbp, 2[rdi+rbp]	# vectp.41,
	lea	r9, 2[rdi+r9]	# vectp.46,
	xor	edi, edi	# ivtmp.126
.L15:
# image_processing.cpp:82:                 (row_ptr_top[x + 1]
	movdqu	xmm0, XMMWORD PTR [r12+rdi]	# MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.37_555 + ivtmp.126_718 * 1], MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.37_555 + ivtmp.126_718 * 1]
# image_processing.cpp:87:                 + 2 * row_ptr_mid[x - 1]
	movdqu	xmm1, XMMWORD PTR [rcx+rdi]	# MEM <const vector(16) unsigned char> [(const uint8_t *)_228 + ivtmp.126_718 * 1], MEM <const vector(16) unsigned char> [(const uint8_t *)_228 + ivtmp.126_718 * 1]
# image_processing.cpp:86:                 (row_ptr_top[x - 1]
	movdqu	xmm9, XMMWORD PTR [rdx+rdi]	# MEM <const vector(16) unsigned char> [(const uint8_t *)_231 + ivtmp.126_718 * 1], MEM <const vector(16) unsigned char> [(const uint8_t *)_231 + ivtmp.126_718 * 1]
# image_processing.cpp:84:                 + row_ptr_bot[x + 1])
	movdqu	xmm10, XMMWORD PTR [r9+rdi]	# MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.46_572 + ivtmp.126_718 * 1], MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.46_572 + ivtmp.126_718 * 1]
	movdqa	xmm11, xmm0	# tmp368, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.37_555 + ivtmp.126_718 * 1]
	punpckhbw	xmm0, xmm4	# MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.37_555 + ivtmp.126_718 * 1], tmp633
# image_processing.cpp:81:             int gx =
	movdqa	xmm3, xmm1	# tmp404, MEM <const vector(16) unsigned char> [(const uint8_t *)_228 + ivtmp.126_718 * 1]
# image_processing.cpp:88:                 + row_ptr_bot[x - 1]);
	movdqu	xmm5, XMMWORD PTR [rax+rdi]	# MEM <const vector(16) unsigned char> [(const uint8_t *)_224 + ivtmp.126_718 * 1], MEM <const vector(16) unsigned char> [(const uint8_t *)_224 + ivtmp.126_718 * 1]
	movdqa	xmm14, xmm0	# tmp370, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.37_555 + ivtmp.126_718 * 1]
# image_processing.cpp:83:                 + 2 * row_ptr_mid[x + 1]
	movdqu	xmm0, XMMWORD PTR 0[rbp+rdi]	# MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.41_562 + ivtmp.126_718 * 1], MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.41_562 + ivtmp.126_718 * 1]
# image_processing.cpp:81:             int gx =
	punpcklbw	xmm3, xmm4	# tmp404, tmp633
	punpckhbw	xmm1, xmm4	# tmp427, tmp633
	pmullw	xmm3, xmm8	# vect_patt_255.57, tmp634
	pmullw	xmm1, xmm8	# vect_patt_255.57, tmp634
	movdqa	xmm12, xmm9	# tmp379, MEM <const vector(16) unsigned char> [(const uint8_t *)_231 + ivtmp.126_718 * 1]
	movaps	XMMWORD PTR [rsp], xmm14	# %sfp, tmp370
	movdqa	xmm2, xmm0	# tmp395, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.41_562 + ivtmp.126_718 * 1]
	punpcklbw	xmm11, xmm4	# tmp368, tmp633
	punpcklbw	xmm12, xmm4	# tmp379, tmp633
	punpcklbw	xmm2, xmm4	# tmp395, tmp633
	movdqa	xmm13, xmm10	# tmp374, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.46_572 + ivtmp.126_718 * 1]
	punpckhbw	xmm0, xmm4	# tmp418, tmp633
	pmullw	xmm2, xmm8	# vect_patt_49.43, tmp634
	punpcklbw	xmm13, xmm4	# tmp374, tmp633
	movdqa	xmm7, xmm5	# tmp385, MEM <const vector(16) unsigned char> [(const uint8_t *)_224 + ivtmp.126_718 * 1]
	pmullw	xmm0, xmm8	# vect_patt_49.43, tmp634
	punpckhbw	xmm9, xmm4	# tmp381, tmp633
	punpcklbw	xmm7, xmm4	# tmp385, tmp633
	paddw	xmm3, xmm12	# tmp407, tmp379
	paddw	xmm0, XMMWORD PTR [rsp]	# tmp421, %sfp
	punpckhbw	xmm10, xmm4	# tmp376, tmp633
	paddw	xmm1, xmm9	# tmp430, tmp381
	punpckhbw	xmm5, xmm4	# tmp387, tmp633
	psubw	xmm0, xmm1	# tmp431, tmp430
	movdqa	xmm1, xmm10	# tmp432, tmp376
	paddw	xmm2, xmm11	# tmp398, tmp368
	psubw	xmm1, xmm5	# tmp432, tmp387
	psubw	xmm2, xmm3	# tmp408, tmp407
	movdqa	xmm3, xmm13	# tmp409, tmp374
# image_processing.cpp:91:             int gy = 
	paddw	xmm5, xmm10	# tmp475, tmp376
	movdqu	xmm10, XMMWORD PTR [r11+rdi]	# tmp481, MEM <const vector(16) unsigned char> [(const uint8_t *)_485 + ivtmp.126_718 * 1]
# image_processing.cpp:81:             int gx =
	psubw	xmm3, xmm7	# tmp409, tmp385
# image_processing.cpp:91:             int gy = 
	paddw	xmm7, xmm13	# tmp452, tmp374
	movdqu	xmm13, XMMWORD PTR [r11+rdi]	# tmp458, MEM <const vector(16) unsigned char> [(const uint8_t *)_485 + ivtmp.126_718 * 1]
	punpckhbw	xmm10, xmm4	# tmp481, tmp633
# image_processing.cpp:81:             int gx =
	paddw	xmm2, xmm3	# vect_patt_266.64, tmp409
# image_processing.cpp:102:             int abs_gx = (gx < 0) ? -gx : gx;
	movdqa	xmm3, xmm6	# tmp411, tmp635
# image_processing.cpp:91:             int gy = 
	punpcklbw	xmm13, xmm4	# tmp458, tmp633
	pmullw	xmm10, xmm8	# vect_patt_280.75, tmp634
# image_processing.cpp:102:             int abs_gx = (gx < 0) ? -gx : gx;
	psubw	xmm3, xmm2	# tmp411, vect_patt_266.64
# image_processing.cpp:91:             int gy = 
	pmullw	xmm13, xmm8	# vect_patt_280.75, tmp634
# image_processing.cpp:102:             int abs_gx = (gx < 0) ? -gx : gx;
	pmaxsw	xmm3, xmm2	# vect_patt_290.80, vect_patt_266.64
# image_processing.cpp:81:             int gx =
	paddw	xmm0, xmm1	# vect_patt_266.64, tmp432
# image_processing.cpp:102:             int abs_gx = (gx < 0) ? -gx : gx;
	movdqa	xmm2, xmm6	# tmp434, tmp635
	movdqa	xmm1, xmm3	# tmp439, vect_patt_290.80
	psubw	xmm2, xmm0	# tmp434, vect_patt_266.64
	pmaxsw	xmm2, xmm0	# vect_patt_290.80, vect_patt_266.64
	movdqa	xmm0, xmm6	# tmp438, tmp635
# image_processing.cpp:91:             int gy = 
	paddw	xmm9, xmm10	# tmp484, vect_patt_280.75
	pcmpgtw	xmm0, xmm3	# tmp438, vect_patt_290.80
	paddw	xmm13, xmm12	# tmp461, tmp379
	movdqu	xmm12, XMMWORD PTR [r10+rdi]	# tmp468, MEM <const vector(16) unsigned char> [(const uint8_t *)_471 + ivtmp.126_718 * 1]
	psubw	xmm5, xmm9	# tmp485, tmp484
	movdqu	xmm9, XMMWORD PTR [r10+rdi]	# tmp491, MEM <const vector(16) unsigned char> [(const uint8_t *)_471 + ivtmp.126_718 * 1]
	psubw	xmm7, xmm13	# tmp462, tmp461
	punpcklbw	xmm12, xmm4	# tmp468, tmp633
	punpckhbw	xmm9, xmm4	# tmp491, tmp633
	punpcklwd	xmm1, xmm0	# tmp439, tmp438
	pmullw	xmm12, xmm8	# vect_patt_271.69, tmp634
	pmullw	xmm9, xmm8	# vect_patt_271.69, tmp634
	punpckhwd	xmm3, xmm0	# tmp443, tmp438
	psubw	xmm9, XMMWORD PTR [rsp]	# tmp494, %sfp
	movdqa	xmm0, xmm6	# tmp446, tmp635
	pcmpgtw	xmm0, xmm2	# tmp446, vect_patt_290.80
	paddw	xmm5, xmm9	# vect_patt_287.78, tmp494
# image_processing.cpp:103:             int abs_gy = (gy < 0) ? -gy : gy;
	movdqa	xmm9, xmm6	# tmp496, tmp635
	psubw	xmm9, xmm5	# tmp496, vect_patt_287.78
# image_processing.cpp:91:             int gy = 
	psubw	xmm12, xmm11	# tmp471, tmp368
# image_processing.cpp:103:             int abs_gy = (gy < 0) ? -gy : gy;
	movdqa	xmm11, xmm6	# tmp473, tmp635
	pmaxsw	xmm5, xmm9	# vect_patt_292.82, tmp496
# image_processing.cpp:91:             int gy = 
	paddw	xmm7, xmm12	# vect_patt_287.78, tmp471
	movdqa	xmm9, xmm6	# tmp500, tmp635
	movdqa	xmm14, xmm0	# tmp446, tmp446
# image_processing.cpp:103:             int abs_gy = (gy < 0) ? -gy : gy;
	psubw	xmm11, xmm7	# tmp473, vect_patt_287.78
	movdqa	xmm0, xmm2	# tmp447, vect_patt_290.80
	punpckhwd	xmm2, xmm14	# tmp451, tmp446
	pmaxsw	xmm7, xmm11	# vect_patt_292.82, tmp473
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	movdqa	xmm11, xmm1	# vect__173.90, tmp439
	punpcklwd	xmm0, xmm14	# tmp447, tmp446
	pcmpgtw	xmm9, xmm7	# tmp500, vect_patt_292.82
	psrad	xmm11, 1	# vect__173.90,
	movdqa	xmm12, xmm7	# tmp501, vect_patt_292.82
	punpckhwd	xmm7, xmm9	# vect_patt_292.82, tmp500
	punpcklwd	xmm12, xmm9	# tmp501, tmp500
	movdqa	xmm9, xmm5	# tmp509, vect_patt_292.82
	movdqa	xmm10, xmm7	# tmp505, vect_patt_292.82
	movdqa	xmm7, xmm6	# tmp508, tmp635
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	paddd	xmm11, xmm12	# vect__50.93, tmp501
	pcmpgtw	xmm7, xmm5	# tmp508, vect_patt_292.82
	punpcklwd	xmm9, xmm7	# tmp509, tmp508
	punpckhwd	xmm5, xmm7	# tmp513, tmp508
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	movdqa	xmm7, xmm12	# vect__171.84, tmp501
	psrad	xmm7, 1	# vect__171.84,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	paddd	xmm7, xmm1	# vect__54.87, tmp439
	pcmpgtd	xmm1, xmm12	# tmp518, tmp501
	pand	xmm7, xmm1	# tmp519, tmp518
	pandn	xmm1, xmm11	# tmp520, vect__50.93
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	movdqa	xmm11, xmm3	# vect__173.90, tmp443
	por	xmm1, xmm7	# vect_iftmp.95, tmp519
	psrad	xmm11, 1	# vect__173.90,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	movdqa	xmm7, xmm10	# vect__171.84, tmp505
	psrad	xmm7, 1	# vect__171.84,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	paddd	xmm11, xmm10	# vect__50.93, tmp505
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	paddd	xmm7, xmm3	# vect__54.87, tmp443
	pcmpgtd	xmm3, xmm10	# tmp525, tmp505
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	movdqa	xmm10, xmm0	# vect__173.90, tmp447
	psrad	xmm10, 1	# vect__173.90,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	paddd	xmm10, xmm9	# vect__50.93, tmp509
	pand	xmm7, xmm3	# tmp526, tmp525
	pandn	xmm3, xmm11	# tmp527, vect__50.93
	por	xmm3, xmm7	# vect_iftmp.95, tmp526
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	movdqa	xmm7, xmm9	# vect__171.84, tmp509
	psrad	xmm7, 1	# vect__171.84,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	paddd	xmm7, xmm0	# vect__54.87, tmp447
	pcmpgtd	xmm0, xmm9	# tmp532, tmp509
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	movdqa	xmm9, xmm2	# vect__173.90, tmp451
	psrad	xmm9, 1	# vect__173.90,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	paddd	xmm9, xmm5	# vect__50.93, tmp513
	pand	xmm7, xmm0	# tmp533, tmp532
	pandn	xmm0, xmm10	# tmp534, vect__50.93
	por	xmm0, xmm7	# vect_iftmp.95, tmp533
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	movdqa	xmm7, xmm5	# vect__171.84, tmp513
	psrad	xmm7, 1	# vect__171.84,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	paddd	xmm7, xmm2	# vect__54.87, tmp451
	pcmpgtd	xmm2, xmm5	# tmp539, tmp513
	movdqa	xmm5, xmm7	# vect__54.87, vect__54.87
	pand	xmm5, xmm2	# vect__54.87, tmp539
	pandn	xmm2, xmm9	# tmp541, vect__50.93
	por	xmm2, xmm5	# vect_iftmp.95, tmp540
# image_processing.cpp:108:             if (magnitude > 255)
	movdqa	xmm5, xmm1	# tmp543, vect_iftmp.95
	punpcklwd	xmm1, xmm3	# vect_patt_294.96, vect_iftmp.95
	punpckhwd	xmm5, xmm3	# tmp543, vect_iftmp.95
	movdqa	xmm3, xmm1	# tmp544, vect_patt_294.96
	punpckhwd	xmm3, xmm5	# tmp544, tmp543
	punpcklwd	xmm1, xmm5	# vect_patt_294.96, tmp543
	punpcklwd	xmm1, xmm3	# vect_patt_294.96, tmp544
	movdqa	xmm3, xmm1	# tmp553, vect_patt_294.96
	psubusw	xmm3, xmm15	# tmp553, tmp632
	pcmpeqw	xmm3, xmm6	# tmp555, tmp635
	pand	xmm1, xmm3	# tmp556, tmp555
	pandn	xmm3, xmm15	# tmp557, tmp632
	por	xmm3, xmm1	# vect_patt_295.97, tmp556
	movdqa	xmm1, xmm0	# tmp559, vect_iftmp.95
	punpcklwd	xmm0, xmm2	# vect_patt_294.96, vect_iftmp.95
	punpckhwd	xmm1, xmm2	# tmp559, vect_iftmp.95
	movdqa	xmm2, xmm0	# tmp560, vect_patt_294.96
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	pand	xmm3, xmm15	# tmp575, tmp632
# image_processing.cpp:108:             if (magnitude > 255)
	punpckhwd	xmm2, xmm1	# tmp560, tmp559
	punpcklwd	xmm0, xmm1	# vect_patt_294.96, tmp559
	punpcklwd	xmm0, xmm2	# vect_patt_294.96, tmp560
	movdqa	xmm1, xmm0	# tmp569, vect_patt_294.96
	psubusw	xmm1, xmm15	# tmp569, tmp632
	pcmpeqw	xmm1, xmm6	# tmp571, tmp635
	pand	xmm0, xmm1	# tmp572, tmp571
	pandn	xmm1, xmm15	# tmp573, tmp632
	por	xmm1, xmm0	# vect_patt_295.97, tmp572
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	pand	xmm1, xmm15	# tmp576, tmp632
	packuswb	xmm3, xmm1	# vect_patt_297.98, tmp576
	movups	XMMWORD PTR [rsi+rdi], xmm3	# MEM <vector(16) unsigned char> [(uint8_t *)_469 + ivtmp.126_718 * 1], vect_patt_297.98
	add	rdi, 16	# ivtmp.126,
	cmp	r14, rdi	# _715, ivtmp.126
	jne	.L15	#,
	mov	edi, DWORD PTR 68[rsp]	#, %sfp
	test	edi, edi	#
	je	.L23	#,
	mov	rdi, QWORD PTR 72[rsp]	# ivtmp.113, %sfp
	.p2align 4,,10
	.p2align 3
.L19:
# image_processing.cpp:82:                 (row_ptr_top[x + 1]
	movzx	ebp, BYTE PTR 1[rdx+rdi]	# _499, MEM[(const uint8_t *)_231 + 1B + ivtmp.113_725 * 1]
# image_processing.cpp:83:                 + 2 * row_ptr_mid[x + 1]
	movzx	r9d, BYTE PTR 1[rcx+rdi]	# MEM[(const uint8_t *)_228 + 1B + ivtmp.113_725 * 1], MEM[(const uint8_t *)_228 + 1B + ivtmp.113_725 * 1]
# image_processing.cpp:86:                 (row_ptr_top[x - 1]
	movzx	r12d, BYTE PTR -1[rdx+rdi]	# _512, MEM[(const uint8_t *)_231 + -1B + ivtmp.113_725 * 1]
# image_processing.cpp:84:                 + row_ptr_bot[x + 1])
	movzx	r14d, BYTE PTR 1[rax+rdi]	# _507, MEM[(const uint8_t *)_224 + 1B + ivtmp.113_725 * 1]
# image_processing.cpp:83:                 + 2 * row_ptr_mid[x + 1]
	lea	r10d, 0[rbp+r9*2]	# tmp581,
# image_processing.cpp:87:                 + 2 * row_ptr_mid[x - 1]
	movzx	r9d, BYTE PTR -1[rcx+rdi]	# MEM[(const uint8_t *)_228 + -1B + ivtmp.113_725 * 1], MEM[(const uint8_t *)_228 + -1B + ivtmp.113_725 * 1]
# image_processing.cpp:88:                 + row_ptr_bot[x - 1]);
	movzx	r11d, BYTE PTR -1[rax+rdi]	# _520, MEM[(const uint8_t *)_224 + -1B + ivtmp.113_725 * 1]
# image_processing.cpp:84:                 + row_ptr_bot[x + 1])
	add	r10d, r14d	# tmp582, _507
# image_processing.cpp:87:                 + 2 * row_ptr_mid[x - 1]
	lea	r9d, [r12+r9*2]	# tmp585,
# image_processing.cpp:88:                 + row_ptr_bot[x - 1]);
	add	r9d, r11d	# tmp586, _520
# image_processing.cpp:81:             int gx =
	sub	r10d, r9d	# gx, tmp586
# image_processing.cpp:102:             int abs_gx = (gx < 0) ? -gx : gx;
	mov	r9d, r10d	# tmp645, gx
	neg	r9d	# tmp645
	cmovs	r9d, r10d	# tmp645,, abs_gx, gx
# image_processing.cpp:93:                 + 2 * row_ptr_bot[x]
	movzx	r10d, BYTE PTR [rax+rdi]	# MEM[(const uint8_t *)_224 + ivtmp.113_725 * 1], MEM[(const uint8_t *)_224 + ivtmp.113_725 * 1]
# image_processing.cpp:93:                 + 2 * row_ptr_bot[x]
	lea	r11d, [r11+r10*2]	# tmp590,
# image_processing.cpp:97:                 + 2 * row_ptr_top[x]
	movzx	r10d, BYTE PTR [rdx+rdi]	# MEM[(const uint8_t *)_231 + ivtmp.113_725 * 1], MEM[(const uint8_t *)_231 + ivtmp.113_725 * 1]
# image_processing.cpp:94:                 + row_ptr_bot[x + 1])
	add	r11d, r14d	# tmp591, _507
# image_processing.cpp:97:                 + 2 * row_ptr_top[x]
	lea	r10d, [r12+r10*2]	# tmp594,
# image_processing.cpp:98:                 + row_ptr_top[x + 1]);
	add	r10d, ebp	# tmp595, _499
# image_processing.cpp:91:             int gy = 
	sub	r11d, r10d	# gy, tmp595
# image_processing.cpp:103:             int abs_gy = (gy < 0) ? -gy : gy;
	mov	r10d, r11d	# tmp646, gy
	neg	r10d	# tmp646
	cmovs	r10d, r11d	# tmp646,, abs_gy, gy
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	cmp	r9d, r10d	# abs_gx, abs_gy
	jle	.L38	#,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	sar	r10d	# tmp598
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	add	r10d, r9d	# tmp597, abs_gx
# image_processing.cpp:108:             if (magnitude > 255)
	mov	r9d, 255	# tmp644,
	cmp	r10d, r9d	# tmp597, tmp644
	cmovg	r10d, r9d	# tmp597,, tmp597, tmp644
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	mov	BYTE PTR -1[rsi+rdi], r10b	# MEM[(uint8_t *)_469 + -1B + ivtmp.113_725 * 1], tmp597
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	add	rdi, 1	# ivtmp.113,
	cmp	r8d, edi	# _189, ivtmp.113
	jg	.L19	#,
.L23:
# image_processing.cpp:72:     for (int y = 1; y < rows - 1; ++y)
	mov	rsi, QWORD PTR 24[rsp]	# ivtmp.146, %sfp
	cmp	QWORD PTR 48[rsp], rsi	# %sfp, ivtmp.146
	jne	.L12	#,
.L9:
# image_processing.cpp:119: }
	mov	rax, QWORD PTR 32[rsp]	#, %sfp
	add	rsp, 88	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
.L38:
	.cfi_restore_state
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	sar	r9d	# tmp600
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	add	r9d, r10d	# tmp599, abs_gy
# image_processing.cpp:108:             if (magnitude > 255)
	mov	r10d, 255	# tmp643,
	cmp	r9d, r10d	# tmp599, tmp643
	cmovg	r9d, r10d	# tmp599,, tmp599, tmp643
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	mov	BYTE PTR -1[rsi+rdi], r9b	# MEM[(uint8_t *)_469 + -1B + ivtmp.113_725 * 1], tmp599
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	add	rdi, 1	# ivtmp.113,
	cmp	r8d, edi	# _189, ivtmp.113
	jg	.L19	#,
# image_processing.cpp:72:     for (int y = 1; y < rows - 1; ++y)
	mov	rsi, QWORD PTR 24[rsp]	# ivtmp.146, %sfp
	cmp	QWORD PTR 48[rsp], rsi	# %sfp, ivtmp.146
	jne	.L12	#,
	jmp	.L9	#
	.p2align 4,,10
	.p2align 3
.L40:
	add	rsi, r15	# tmp627, _220
.L14:
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	xor	edi, edi	# ivtmp.103
	.p2align 4,,10
	.p2align 3
.L24:
# image_processing.cpp:82:                 (row_ptr_top[x + 1]
	movzx	ebp, BYTE PTR 2[rdx+rdi]	# _146, MEM[(const uint8_t *)_231 + 2B + ivtmp.103_732 * 1]
# image_processing.cpp:86:                 (row_ptr_top[x - 1]
	movzx	r12d, BYTE PTR [rdx+rdi]	# _133, MEM[(const uint8_t *)_231 + ivtmp.103_732 * 1]
# image_processing.cpp:83:                 + 2 * row_ptr_mid[x + 1]
	movzx	r9d, BYTE PTR 2[rcx+rdi]	# MEM[(const uint8_t *)_228 + 2B + ivtmp.103_732 * 1], MEM[(const uint8_t *)_228 + 2B + ivtmp.103_732 * 1]
# image_processing.cpp:87:                 + 2 * row_ptr_mid[x - 1]
	movzx	r10d, BYTE PTR [rcx+rdi]	# MEM[(const uint8_t *)_228 + ivtmp.103_732 * 1], MEM[(const uint8_t *)_228 + ivtmp.103_732 * 1]
# image_processing.cpp:84:                 + row_ptr_bot[x + 1])
	movzx	r14d, BYTE PTR 2[rax+rdi]	# _138, MEM[(const uint8_t *)_224 + 2B + ivtmp.103_732 * 1]
# image_processing.cpp:88:                 + row_ptr_bot[x - 1]);
	movzx	r11d, BYTE PTR [rax+rdi]	# _125, MEM[(const uint8_t *)_224 + ivtmp.103_732 * 1]
# image_processing.cpp:83:                 + 2 * row_ptr_mid[x + 1]
	lea	r9d, 0[rbp+r9*2]	# tmp604,
# image_processing.cpp:87:                 + 2 * row_ptr_mid[x - 1]
	lea	r10d, [r12+r10*2]	# tmp608,
# image_processing.cpp:88:                 + row_ptr_bot[x - 1]);
	add	r10d, r11d	# tmp609, _125
# image_processing.cpp:84:                 + row_ptr_bot[x + 1])
	add	r9d, r14d	# tmp605, _138
# image_processing.cpp:81:             int gx =
	sub	r9d, r10d	# gx, tmp609
# image_processing.cpp:102:             int abs_gx = (gx < 0) ? -gx : gx;
	mov	r10d, r9d	# tmp641, gx
	neg	r10d	# tmp641
	cmovs	r10d, r9d	# tmp641,, abs_gx, gx
# image_processing.cpp:93:                 + 2 * row_ptr_bot[x]
	movzx	r9d, BYTE PTR 1[rax+rdi]	# MEM[(const uint8_t *)_224 + 1B + ivtmp.103_732 * 1], MEM[(const uint8_t *)_224 + 1B + ivtmp.103_732 * 1]
# image_processing.cpp:93:                 + 2 * row_ptr_bot[x]
	lea	r11d, [r11+r9*2]	# tmp613,
# image_processing.cpp:97:                 + 2 * row_ptr_top[x]
	movzx	r9d, BYTE PTR 1[rdx+rdi]	# MEM[(const uint8_t *)_231 + 1B + ivtmp.103_732 * 1], MEM[(const uint8_t *)_231 + 1B + ivtmp.103_732 * 1]
# image_processing.cpp:94:                 + row_ptr_bot[x + 1])
	add	r11d, r14d	# tmp614, _138
# image_processing.cpp:97:                 + 2 * row_ptr_top[x]
	lea	r9d, [r12+r9*2]	# tmp617,
# image_processing.cpp:98:                 + row_ptr_top[x + 1]);
	add	r9d, ebp	# tmp618, _146
# image_processing.cpp:91:             int gy = 
	sub	r11d, r9d	# gy, tmp618
# image_processing.cpp:103:             int abs_gy = (gy < 0) ? -gy : gy;
	mov	r9d, r11d	# tmp642, gy
	neg	r9d	# tmp642
	cmovs	r9d, r11d	# tmp642,, abs_gy, gy
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	cmp	r9d, r10d	# abs_gy, abs_gx
	jl	.L21	#,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	sar	r10d	# tmp622
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	add	r10d, r9d	# tmp621, abs_gy
# image_processing.cpp:108:             if (magnitude > 255)
	mov	r9d, 255	# tmp640,
	cmp	r10d, r9d	# tmp621, tmp640
	cmovg	r10d, r9d	# tmp621,, tmp621, tmp640
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	mov	BYTE PTR [rsi+rdi], r10b	# MEM[(uint8_t *)_730 + ivtmp.103_732 * 1], tmp621
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	add	rdi, 1	# ivtmp.103,
	cmp	rbx, rdi	# _726, ivtmp.103
	jne	.L24	#,
	jmp	.L23	#
	.p2align 4,,10
	.p2align 3
.L21:
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	sar	r9d	# tmp625
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	add	r9d, r10d	# tmp624, abs_gx
# image_processing.cpp:108:             if (magnitude > 255)
	mov	r10d, 255	# tmp639,
	cmp	r9d, r10d	# tmp624, tmp639
	cmovg	r9d, r10d	# tmp624,, tmp624, tmp639
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	mov	BYTE PTR [rsi+rdi], r9b	# MEM[(uint8_t *)_237 + ivtmp.103_732 * 1], tmp624
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	add	rdi, 1	# ivtmp.103,
	cmp	rdi, rbx	# ivtmp.103, _726
	jne	.L24	#,
# image_processing.cpp:72:     for (int y = 1; y < rows - 1; ++y)
	mov	rsi, QWORD PTR 24[rsp]	# ivtmp.146, %sfp
	cmp	QWORD PTR 48[rsp], rsi	# %sfp, ivtmp.146
	jne	.L12	#,
	jmp	.L9	#
	.cfi_endproc
.LFE10320:
	.size	_Z11sobelFilterRKN2cv3MatE, .-_Z11sobelFilterRKN2cv3MatE
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.align 16
.LC2:
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
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
