	.file	"image_processing.cpp"
	.intel_syntax noprefix
# GNU C++17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -march=skylake -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -mno-sse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512er -mno-avx512pf -mno-avx512vbmi -mno-avx512ifma -mno-avx5124vnniw -mno-avx5124fmaps -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mno-vpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mno-clwb -mno-clzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mno-prefetchwt1 -mprfchw -mno-ptwrite -mno-rdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -mno-sha -mno-shstk -mno-tbm -mno-tsxldtrk -mno-vaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=16384 -mtune=skylake -masm=intel -O3 -std=c++17 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.p2align 4
	.globl	_Z9grayscaleRKN2cv3MatE
	.type	_Z9grayscaleRKN2cv3MatE, @function
_Z9grayscaleRKN2cv3MatE:
.LFB16215:
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# image_processing.cpp:33:     cv::Mat grayFrame(rows, cols, CV_8UC1);
	xor	ecx, ecx	#
# image_processing.cpp:29: {
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	r15	#
	push	r14	#
	push	r13	#
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	mov	r13, rdi	# <retval>, tmp515
	push	r12	#
	.cfi_offset 12, -48
	mov	r12, rsi	# frame, tmp516
	push	rbx	#
	and	rsp, -32	#,
	sub	rsp, 96	#,
	.cfi_offset 3, -56
# image_processing.cpp:30:     const int rows = frame.rows;
	mov	r14d, DWORD PTR 8[rsi]	# rows, frame_28(D)->rows
# image_processing.cpp:31:     const int cols = frame.cols;
	mov	ebx, DWORD PTR 12[rsi]	# cols, frame_28(D)->cols
# image_processing.cpp:33:     cv::Mat grayFrame(rows, cols, CV_8UC1);
	mov	esi, r14d	#, rows
	mov	edx, ebx	#, cols
	call	_ZN2cv3MatC1Eiii@PLT	#
# image_processing.cpp:34:     for (int y = 0; y < rows; ++y)
	test	r14d, r14d	# rows
	jle	.L1	#,
	test	ebx, ebx	# cols
	jle	.L1	#,
	movsx	rax, r14d	# _90, rows
	movsx	r10, ebx	# cols, cols
	mov	r11d, ebx	# _56, cols
	xor	r8d, r8d	# ivtmp.79
	mov	QWORD PTR 32[rsp], rax	# %sfp, _90
	lea	eax, -1[rbx]	# _59,
	and	r11d, -32	# _56,
	mov	DWORD PTR 44[rsp], eax	# %sfp, _59
	lea	rax, [r10+r10*2]	# tmp221,
	mov	QWORD PTR 24[rsp], rax	# %sfp, tmp221
	mov	eax, ebx	# bnd.16, cols
	shr	eax, 5	#,
	sal	rax, 5	# bnd.16,
	mov	QWORD PTR 16[rsp], rax	# %sfp, bnd.16
	.p2align 4,,10
	.p2align 3
.L13:
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rax, QWORD PTR 72[r12]	# frame_28(D)->step.p, frame_28(D)->step.p
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rdi, QWORD PTR 16[r12]	# _41, frame_28(D)->data
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	rcx, QWORD PTR 16[r13]	# _37, grayFrame_31(D)->data
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	r9, QWORD PTR [rax]	# _45, *_42
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	rax, QWORD PTR 72[r13]	# grayFrame_31(D)->step.p, grayFrame_31(D)->step.p
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	r14, QWORD PTR [rax]	# _33, *_36
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	imul	r9, r8	# _45, ivtmp.79
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	imul	r14, r8	# _33, ivtmp.79
	cmp	DWORD PTR 44[rsp], 14	# %sfp,
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	lea	rdx, [rdi+r9]	# _46,
	lea	rax, [rcx+r14]	# ivtmp.58,
	jbe	.L3	#,
	mov	rsi, QWORD PTR 24[rsp]	# tmp221, %sfp
	add	rsi, r9	# tmp226, _45
	add	rsi, rdi	# tmp227, _41
	cmp	rax, rsi	# ivtmp.58, tmp227
	jnb	.L16	#,
	lea	rsi, [r14+r10]	# tmp230,
	add	rsi, rcx	# tmp231, _37
	cmp	rdx, rsi	# _46, tmp231
	jnb	.L16	#,
.L3:
	add	rcx, r10	# tmp472, cols
	mov	r9d, ebx	# cols, cols
	add	rcx, r14	# _333, _33
	.p2align 4,,10
	.p2align 3
.L11:
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	movzx	esi, BYTE PTR 2[rdx]	# MEM[(const uint8_t *)_338 + 2B], MEM[(const uint8_t *)_338 + 2B]
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	movzx	edi, BYTE PTR 1[rdx]	# MEM[(const uint8_t *)_338 + 1B], MEM[(const uint8_t *)_338 + 1B]
# image_processing.cpp:38:         for (int x = 0; x < cols; ++x)
	inc	rax	# ivtmp.58
	add	rdx, 3	# ivtmp.57,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	imul	edi, edi, 183	# tmp476, MEM[(const uint8_t *)_338 + 1B],
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	imul	esi, esi, 54	# tmp474, MEM[(const uint8_t *)_338 + 2B],
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	add	esi, edi	# tmp477, tmp476
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	movzx	edi, BYTE PTR -3[rdx]	# MEM[(const uint8_t *)_338], MEM[(const uint8_t *)_338]
	lea	edi, [rdi+rdi*8]	# tmp481,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	lea	ebx, [rsi+rdi*2]	# tmp483,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	mov	BYTE PTR -1[rax], bh	# MEM[(uint8_t *)_337], tmp483
# image_processing.cpp:38:         for (int x = 0; x < cols; ++x)
	cmp	rcx, rax	# _333, ivtmp.58
	jne	.L11	#,
	mov	ebx, r9d	# cols, cols
.L12:
# image_processing.cpp:34:     for (int y = 0; y < rows; ++y)
	mov	rax, QWORD PTR 32[rsp]	# _90, %sfp
	inc	r8	# ivtmp.79
	cmp	r8, rax	# ivtmp.79, _90
	jne	.L13	#,
	vzeroupper
.L1:
# image_processing.cpp:51: }
	lea	rsp, -40[rbp]	#,
	mov	rax, r13	#, <retval>
	pop	rbx	#
	pop	r12	#
	pop	r13	#
	pop	r14	#
	pop	r15	#
	pop	rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4,,10
	.p2align 3
.L16:
	.cfi_restore_state
	cmp	DWORD PTR 44[rsp], 30	# %sfp,
	jbe	.L14	#,
	mov	r15, QWORD PTR 16[rsp]	# _93, %sfp
	vmovdqa	ymm9, YMMWORD PTR .LC10[rip]	# tmp487,
	mov	rcx, rdx	# ivtmp.71, _46
	mov	rsi, rax	# ivtmp.74, ivtmp.58
	vmovdqa	ymm15, YMMWORD PTR .LC11[rip]	# tmp488,
	vmovdqa	ymm14, YMMWORD PTR .LC12[rip]	# tmp489,
	lea	r14, [r15+rax]	# _91,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	mov	r15d, 54	# tmp306,
	vmovdqa	ymm13, YMMWORD PTR .LC13[rip]	# tmp490,
	vmovdqa	ymm12, YMMWORD PTR .LC14[rip]	# tmp491,
	vmovd	xmm7, r15d	# tmp310, tmp306
	mov	r15d, -73	# tmp314,
	vmovdqa	ymm11, YMMWORD PTR .LC15[rip]	# tmp492,
	vmovdqa	ymm10, YMMWORD PTR .LC16[rip]	# tmp493,
	vpbroadcastb	xmm7, xmm7	# tmp310, tmp310
	vmovdqa	XMMWORD PTR 80[rsp], xmm7	# %sfp, tmp310
	vmovd	xmm7, r15d	# tmp318, tmp314
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	mov	r15d, 18	# tmp323,
	vmovd	xmm6, r15d	# tmp327, tmp323
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	mov	r15d, 255	# tmp362,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpbroadcastb	xmm7, xmm7	# tmp318, tmp318
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpbroadcastb	xmm6, xmm6	# tmp327, tmp327
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vmovd	xmm8, r15d	# tmp361, tmp362
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vmovdqa	XMMWORD PTR 64[rsp], xmm7	# %sfp, tmp318
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vmovdqa	XMMWORD PTR 48[rsp], xmm6	# %sfp, tmp327
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpbroadcastw	ymm8, xmm8	# tmp361, tmp361
	.p2align 4,,10
	.p2align 3
.L6:
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	vmovdqu	ymm0, YMMWORD PTR [rcx]	# MEM <const vector(32) unsigned char> [(const uint8_t *)_98], MEM <const vector(32) unsigned char> [(const uint8_t *)_98]
	vmovdqu	ymm4, YMMWORD PTR 32[rcx]	# MEM <const vector(32) unsigned char> [(const uint8_t *)_98 + 32B], MEM <const vector(32) unsigned char> [(const uint8_t *)_98 + 32B]
	add	rsi, 32	# ivtmp.74,
	add	rcx, 96	# ivtmp.71,
	vmovdqu	ymm3, YMMWORD PTR -32[rcx]	# MEM <const vector(32) unsigned char> [(const uint8_t *)_98 + 64B], MEM <const vector(32) unsigned char> [(const uint8_t *)_98 + 64B]
	vpshufb	ymm2, ymm0, YMMWORD PTR .LC0[rip]	# tmp241, MEM <const vector(32) unsigned char> [(const uint8_t *)_98],
	vpshufb	ymm1, ymm0, YMMWORD PTR .LC1[rip]	# tmp244, MEM <const vector(32) unsigned char> [(const uint8_t *)_98],
	vpshufb	ymm5, ymm4, YMMWORD PTR .LC2[rip]	# tmp246, MEM <const vector(32) unsigned char> [(const uint8_t *)_98 + 32B],
	vpermq	ymm2, ymm2, 78	# tmp242, tmp241,
	vpshufb	ymm6, ymm4, YMMWORD PTR .LC8[rip]	# tmp268, MEM <const vector(32) unsigned char> [(const uint8_t *)_98 + 32B],
	vpshufb	ymm4, ymm4, ymm12	# tmp290, MEM <const vector(32) unsigned char> [(const uint8_t *)_98 + 32B], tmp491
	vpor	ymm1, ymm1, ymm2	# tmp247, tmp244, tmp242
	vpshufb	ymm2, ymm3, YMMWORD PTR .LC5[rip]	# tmp257, MEM <const vector(32) unsigned char> [(const uint8_t *)_98 + 64B],
	vpor	ymm1, ymm1, ymm5	# tmp237, tmp247, tmp246
	vpshufb	ymm5, ymm3, YMMWORD PTR .LC3[rip]	# tmp252, MEM <const vector(32) unsigned char> [(const uint8_t *)_98 + 64B],
	vpermq	ymm5, ymm5, 78	# tmp253, tmp252,
	vpshufb	ymm1, ymm1, YMMWORD PTR .LC4[rip]	# tmp255, tmp237,
	vpor	ymm2, ymm2, ymm5	# tmp258, tmp257, tmp253
	vpshufb	ymm5, ymm0, YMMWORD PTR .LC6[rip]	# tmp263, MEM <const vector(32) unsigned char> [(const uint8_t *)_98],
	vpor	ymm1, ymm1, ymm2	# vect_shuffle3_high_210, tmp255, tmp258
	vpermq	ymm5, ymm5, 78	# tmp264, tmp263,
	vpshufb	ymm2, ymm0, YMMWORD PTR .LC7[rip]	# tmp266, MEM <const vector(32) unsigned char> [(const uint8_t *)_98],
	vpor	ymm2, ymm2, ymm5	# tmp269, tmp266, tmp264
	vpshufb	ymm5, ymm3, ymm15	# tmp279, MEM <const vector(32) unsigned char> [(const uint8_t *)_98 + 64B], tmp488
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpmovzxbw	ymm7, xmm1	#, vect_shuffle3_high_210
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	vpor	ymm2, ymm2, ymm6	# tmp259, tmp269, tmp268
	vpshufb	ymm6, ymm3, YMMWORD PTR .LC9[rip]	# tmp274, MEM <const vector(32) unsigned char> [(const uint8_t *)_98 + 64B],
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vextracti128	xmm1, ymm1, 0x1	# tmp353, vect_shuffle3_high_210
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	vpermq	ymm6, ymm6, 78	# tmp275, tmp274,
	vpshufb	ymm2, ymm2, ymm9	# tmp277, tmp259, tmp487
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpmovzxbw	ymm1, xmm1	# tmp351, tmp353
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	vpor	ymm5, ymm5, ymm6	# tmp280, tmp279, tmp275
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpmovzxbw	ymm6, XMMWORD PTR 80[rsp]	# tmp308, %sfp
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	vpor	ymm2, ymm2, ymm5	# vect_shuffle3_high_212, tmp277, tmp280
	vpshufb	ymm5, ymm0, ymm14	# tmp285, MEM <const vector(32) unsigned char> [(const uint8_t *)_98], tmp489
	vpshufb	ymm0, ymm0, ymm13	# tmp288, MEM <const vector(32) unsigned char> [(const uint8_t *)_98], tmp490
	vpermq	ymm5, ymm5, 78	# tmp286, tmp285,
	vpor	ymm0, ymm0, ymm5	# tmp291, tmp288, tmp286
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpmovzxbw	ymm5, XMMWORD PTR 64[rsp]	# tmp316, %sfp
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	vpor	ymm0, ymm0, ymm4	# tmp281, tmp291, tmp290
	vpshufb	ymm4, ymm3, ymm11	# tmp296, MEM <const vector(32) unsigned char> [(const uint8_t *)_98 + 64B], tmp492
	vpshufb	ymm3, ymm3, ymm10	# tmp301, MEM <const vector(32) unsigned char> [(const uint8_t *)_98 + 64B], tmp493
	vpermq	ymm4, ymm4, 78	# tmp297, tmp296,
	vpshufb	ymm0, ymm0, ymm9	# tmp299, tmp281, tmp487
	vpor	ymm3, ymm3, ymm4	# tmp302, tmp301, tmp297
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpmovzxbw	ymm4, xmm2	#, vect_shuffle3_high_212
	vextracti128	xmm2, ymm2, 0x1	# tmp344, vect_shuffle3_high_212
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	vpor	ymm0, ymm0, ymm3	# vect_shuffle3_high_214, tmp299, tmp302
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpmullw	ymm4, ymm4, ymm5	# vect_patt_119.25, tmp315, tmp316
	vpmovzxbw	ymm2, xmm2	# tmp342, tmp344
	vpmovzxbw	ymm3, xmm0	#, vect_shuffle3_high_214
	vpmullw	ymm2, ymm2, ymm5	# vect_patt_119.25, tmp342, tmp316
	vextracti128	xmm0, ymm0, 0x1	# tmp336, vect_shuffle3_high_214
	vpmullw	ymm3, ymm3, ymm6	# vect_patt_124.24, tmp307, tmp308
	vpmovzxbw	ymm0, xmm0	# tmp334, tmp336
	vpmullw	ymm0, ymm0, ymm6	# vect_patt_124.24, tmp334, tmp308
	vpaddw	ymm3, ymm3, ymm4	# vect_patt_116.26, vect_patt_124.24, vect_patt_119.25
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpmovzxbw	ymm4, XMMWORD PTR 48[rsp]	# tmp325, %sfp
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpaddw	ymm0, ymm0, ymm2	# vect_patt_116.26, vect_patt_124.24, vect_patt_119.25
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpmullw	ymm7, ymm7, ymm4	# vect_patt_112.27, tmp324, tmp325
	vpmullw	ymm1, ymm1, ymm4	# vect_patt_112.27, tmp351, tmp325
	vpaddw	ymm3, ymm3, ymm7	# vect_patt_109.28, vect_patt_116.26, vect_patt_112.27
	vpaddw	ymm0, ymm0, ymm1	# vect_patt_109.28, vect_patt_116.26, vect_patt_112.27
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpsrlw	ymm3, ymm3, 8	# vect_patt_107.29, vect_patt_109.28,
	vpsrlw	ymm0, ymm0, 8	# vect_patt_107.29, vect_patt_109.28,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpand	ymm3, ymm8, ymm3	# tmp358, tmp361, vect_patt_107.29
	vpand	ymm0, ymm8, ymm0	# tmp359, tmp361, vect_patt_107.29
	vpackuswb	ymm3, ymm3, ymm0	# tmp363, tmp358, tmp359
	vpermq	ymm3, ymm3, 216	# tmp364, tmp363,
# image_processing.cpp:47:             gray_row_ptr[x] = grayValue;
	vmovdqu	YMMWORD PTR -32[rsi], ymm3	# MEM <vector(32) unsigned char> [(uint8_t *)_97], tmp364
	cmp	r14, rsi	# _91, ivtmp.74
	jne	.L6	#,
	cmp	ebx, r11d	# cols, _56
	je	.L12	#,
	mov	r14d, ebx	# niters.33, cols
	sub	r14d, r11d	# niters.33, _56
	lea	ecx, -1[r14]	# tmp365,
	cmp	ecx, 14	# tmp365,
	jbe	.L15	#,
	mov	ecx, r11d	#, _56
	mov	r15d, r11d	# x, _56
.L5:
	lea	rsi, [rcx+rcx*2]	# tmp368,
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	vmovdqa	xmm5, XMMWORD PTR .LC24[rip]	# tmp380,
	add	rsi, r9	# tmp369, _45
	add	rdi, rsi	# vectp.38, tmp369
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	mov	esi, 54	# tmp400,
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	vmovdqu	xmm0, XMMWORD PTR [rdi]	# MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.38_278], MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.38_278]
	vmovdqu	xmm4, XMMWORD PTR 16[rdi]	# MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.38_278 + 16B], MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.38_278 + 16B]
	vmovdqu	xmm3, XMMWORD PTR 32[rdi]	# MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.38_278 + 32B], MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.38_278 + 32B]
	vpshufb	xmm2, xmm4, XMMWORD PTR .LC22[rip]	# tmp377, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.38_278 + 16B],
	vpshufb	xmm1, xmm0, XMMWORD PTR .LC21[rip]	# tmp375, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.38_278],
	vpshufb	xmm6, xmm4, XMMWORD PTR .LC26[rip]	# tmp385, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.38_278 + 16B],
	vpor	xmm1, xmm1, xmm2	# tmp373, tmp375, tmp377
	vpshufb	xmm2, xmm3, XMMWORD PTR .LC23[rip]	# tmp378, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.38_278 + 32B],
	vpshufb	xmm4, xmm4, XMMWORD PTR .LC29[rip]	# tmp393, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.38_278 + 16B],
	vpblendvb	xmm1, xmm1, xmm2, xmm5	# vect_shuffle3_high_290, tmp373, tmp378, tmp380
	vpshufb	xmm2, xmm0, XMMWORD PTR .LC25[rip]	# tmp383, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.38_278],
	vpshufb	xmm0, xmm0, XMMWORD PTR .LC28[rip]	# tmp391, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.38_278],
	vpor	xmm2, xmm2, xmm6	# tmp381, tmp383, tmp385
	vpshufb	xmm6, xmm3, XMMWORD PTR .LC27[rip]	# tmp386, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.38_278 + 32B],
	vpor	xmm0, xmm0, xmm4	# tmp389, tmp391, tmp393
	vpblendvb	xmm2, xmm2, xmm6, xmm5	# vect_shuffle3_high_292, tmp381, tmp386, tmp380
	vpshufb	xmm3, xmm3, XMMWORD PTR .LC30[rip]	# tmp394, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.38_278 + 32B],
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vmovd	xmm6, esi	# tmp399, tmp400
	mov	esi, -73	# tmp406,
# image_processing.cpp:41:             cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);
	vpblendw	xmm0, xmm0, xmm3, 224	# tmp396, tmp389, tmp394,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpbroadcastb	xmm6, xmm6	# tmp399, tmp399
	vmovd	xmm5, esi	# tmp405, tmp406
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	mov	esi, 18	# tmp413,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpmovzxbw	xmm4, xmm6	# tmp402, tmp399
	vpmovzxbw	xmm3, xmm0	# tmp401, tmp396
	vpbroadcastb	xmm5, xmm5	# tmp405, tmp405
	vpmullw	xmm3, xmm3, xmm4	# vect_patt_80.42, tmp401, tmp402
	vpmovzxbw	xmm7, xmm5	# tmp408, tmp405
	vpmovzxbw	xmm4, xmm2	# tmp407, vect_shuffle3_high_292
	vpmullw	xmm4, xmm4, xmm7	# vect_patt_75.43, tmp407, tmp408
	vpsrldq	xmm0, xmm0, 8	# tmp424, tmp396,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpmovzxbw	xmm7, xmm1	# tmp414, vect_shuffle3_high_290
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpsrldq	xmm6, xmm6, 8	# tmp425, tmp399,
	vpsrldq	xmm2, xmm2, 8	# tmp432, vect_shuffle3_high_292,
	vpmovzxbw	xmm0, xmm0	# tmp422, tmp424
	vpsrldq	xmm5, xmm5, 8	# tmp433, tmp405,
	vpmovzxbw	xmm6, xmm6	# tmp423, tmp425
	vpmovzxbw	xmm2, xmm2	# tmp430, tmp432
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpsrldq	xmm1, xmm1, 8	# tmp441, vect_shuffle3_high_290,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpmullw	xmm0, xmm0, xmm6	# vect_patt_80.42, tmp422, tmp423
	vpmovzxbw	xmm5, xmm5	# tmp431, tmp433
	vpmullw	xmm2, xmm2, xmm5	# vect_patt_75.43, tmp430, tmp431
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpmovzxbw	xmm1, xmm1	# tmp439, tmp441
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpaddw	xmm3, xmm3, xmm4	# vect_patt_72.44, vect_patt_80.42, vect_patt_75.43
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vmovd	xmm4, esi	# tmp412, tmp413
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	mov	esi, 255	# tmp450,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpbroadcastb	xmm4, xmm4	# tmp412, tmp412
	vpmovzxbw	xmm8, xmm4	# tmp415, tmp412
	vpsrldq	xmm4, xmm4, 8	# tmp442, tmp412,
	vpmovzxbw	xmm4, xmm4	# tmp440, tmp442
	vpmullw	xmm7, xmm7, xmm8	# vect_patt_68.45, tmp414, tmp415
	vpmullw	xmm1, xmm1, xmm4	# vect_patt_68.45, tmp439, tmp440
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpaddw	xmm0, xmm0, xmm2	# vect_patt_72.44, vect_patt_80.42, vect_patt_75.43
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpaddw	xmm3, xmm3, xmm7	# vect_patt_65.46, vect_patt_72.44, vect_patt_68.45
	vpaddw	xmm0, xmm0, xmm1	# vect_patt_65.46, vect_patt_72.44, vect_patt_68.45
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpsrlw	xmm3, xmm3, 8	# vect_patt_63.47, vect_patt_65.46,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vmovd	xmm1, esi	# tmp449, tmp450
	mov	esi, r14d	# niters_vector_mult_vf.35, niters.33
	vpbroadcastw	xmm1, xmm1	# tmp449, tmp449
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpsrlw	xmm0, xmm0, 8	# vect_patt_63.47, vect_patt_65.46,
	and	esi, -16	# niters_vector_mult_vf.35,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	vpand	xmm3, xmm1, xmm3	# tmp446, tmp449, vect_patt_63.47
	vpand	xmm1, xmm1, xmm0	# tmp447, tmp449, vect_patt_63.47
	add	esi, r15d	# tmp.36, x
	and	r14d, 15	# niters.33,
	vpackuswb	xmm3, xmm3, xmm1	# vect_patt_61.48, tmp446, tmp447
# image_processing.cpp:47:             gray_row_ptr[x] = grayValue;
	vmovdqu	XMMWORD PTR [rax+rcx], xmm3	# MEM <vector(16) unsigned char> [(uint8_t *)vectp.50_311], vect_patt_61.48
	je	.L12	#,
.L8:
	movsx	rcx, esi	# ivtmp.63, tmp.36
	lea	esi, [rsi+rsi*2]	# tmp457,
	movsx	rsi, esi	# tmp458, tmp457
	add	rsi, rdx	# ivtmp.65, _46
	.p2align 4,,10
	.p2align 3
.L10:
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	movzx	edx, BYTE PTR 2[rsi]	# MEM[(const uint8_t *)_321 + 2B], MEM[(const uint8_t *)_321 + 2B]
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	movzx	edi, BYTE PTR 1[rsi]	# MEM[(const uint8_t *)_321 + 1B], MEM[(const uint8_t *)_321 + 1B]
# image_processing.cpp:38:         for (int x = 0; x < cols; ++x)
	add	rsi, 3	# ivtmp.65,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	imul	edi, edi, 183	# tmp462, MEM[(const uint8_t *)_321 + 1B],
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	imul	edx, edx, 54	# tmp460, MEM[(const uint8_t *)_321 + 2B],
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	add	edx, edi	# tmp463, tmp462
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	movzx	edi, BYTE PTR -3[rsi]	# MEM[(const uint8_t *)_321], MEM[(const uint8_t *)_321]
	lea	edi, [rdi+rdi*8]	# tmp467,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	lea	edx, [rdx+rdi*2]	# tmp469,
# image_processing.cpp:44:             unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;
	mov	BYTE PTR [rax+rcx], dh	# MEM[(uint8_t *)_26 + ivtmp.63_332 * 1], tmp469
# image_processing.cpp:38:         for (int x = 0; x < cols; ++x)
	inc	rcx	# ivtmp.63
	cmp	ebx, ecx	# cols, ivtmp.63
	jg	.L10	#,
	jmp	.L12	#
.L14:
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	r14d, ebx	# niters.33, cols
	xor	ecx, ecx	#
# image_processing.cpp:38:         for (int x = 0; x < cols; ++x)
	xor	r15d, r15d	# x
	jmp	.L5	#
.L15:
	mov	esi, r11d	# tmp.36, _56
	jmp	.L8	#
	.cfi_endproc
.LFE16215:
	.size	_Z9grayscaleRKN2cv3MatE, .-_Z9grayscaleRKN2cv3MatE
	.p2align 4
	.globl	_Z11sobelFilterRKN2cv3MatE
	.type	_Z11sobelFilterRKN2cv3MatE, @function
_Z11sobelFilterRKN2cv3MatE:
.LFB16216:
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# image_processing.cpp:71:     cv::Mat sobelFrame(rows - 2, cols - 2, CV_8UC1);
	xor	ecx, ecx	#
# image_processing.cpp:67: {
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	r15	#
	push	r14	#
	push	r13	#
	push	r12	#
	push	rbx	#
	and	rsp, -32	#,
	add	rsp, -128	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
# image_processing.cpp:69:     const int cols = grayFrame.cols;
	mov	r15d, DWORD PTR 12[rsi]	# cols, grayFrame_56(D)->cols
# image_processing.cpp:68:     const int rows = grayFrame.rows;
	mov	ebx, DWORD PTR 8[rsi]	# rows, grayFrame_56(D)->rows
# image_processing.cpp:67: {
	mov	QWORD PTR 24[rsp], rsi	# %sfp, grayFrame
	mov	QWORD PTR 32[rsp], rdi	# %sfp, <retval>
# image_processing.cpp:71:     cv::Mat sobelFrame(rows - 2, cols - 2, CV_8UC1);
	lea	r14d, -2[r15]	# niters.157,
	lea	esi, -2[rbx]	# tmp478,
# image_processing.cpp:69:     const int cols = grayFrame.cols;
	mov	DWORD PTR 56[rsp], r15d	# %sfp, cols
# image_processing.cpp:71:     cv::Mat sobelFrame(rows - 2, cols - 2, CV_8UC1);
	mov	edx, r14d	#, niters.157
	mov	DWORD PTR 88[rsp], r14d	# %sfp, niters.157
	call	_ZN2cv3MatC1Eiii@PLT	#
# image_processing.cpp:72:     for (int y = 1; y < rows - 1; ++y)
	cmp	ebx, 2	# rows,
	jle	.L31	#,
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	lea	eax, -1[r15]	# _189,
	mov	DWORD PTR 92[rsp], eax	# %sfp, _189
	cmp	r15d, 2	# cols,
	jle	.L31	#,
	lea	eax, -3[rbx]	# _993,
	mov	QWORD PTR 48[rsp], 0	# %sfp,
	mov	QWORD PTR 16[rsp], rax	# %sfp, _993
	lea	eax, -3[r15]	# _416,
	mov	DWORD PTR 60[rsp], eax	# %sfp, _416
	mov	eax, r14d	# bnd.89, niters.157
	and	r14d, -32	# niters_vector_mult_vf.90,
	shr	eax, 5	#,
	mov	DWORD PTR 12[rsp], r14d	# %sfp, niters_vector_mult_vf.90
	sal	rax, 5	# bnd.89,
	mov	QWORD PTR 64[rsp], rax	# %sfp, bnd.89
	lea	eax, 1[r14]	# tmp.91,
	mov	DWORD PTR 8[rsp], eax	# %sfp, tmp.91
# image_processing.cpp:81:             int gx =
	mov	eax, 2	# tmp863,
	vmovd	xmm7, eax	# tmp864, tmp863
	vpbroadcastb	xmm7, xmm7	# tmp864, tmp864
	vpsrldq	xmm0, xmm7, 8	# tmp865, tmp922,
	vmovdqa	XMMWORD PTR 112[rsp], xmm7	# %sfp, tmp864
	vpmovzxbw	xmm7, xmm0	# tmp866, tmp865
	vmovdqa	XMMWORD PTR 96[rsp], xmm7	# %sfp, tmp866
	.p2align 4,,10
	.p2align 3
.L34:
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rax, QWORD PTR 24[rsp]	# grayFrame, %sfp
	mov	rdi, QWORD PTR 16[rax]	# _236, grayFrame_56(D)->data
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rax, QWORD PTR 72[rax]	# grayFrame_56(D)->step.p, grayFrame_56(D)->step.p
	mov	r9, QWORD PTR [rax]	# _234, *_235
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	mov	rax, QWORD PTR 48[rsp]	# ivtmp.273, %sfp
	mov	r10, rax	# _232, ivtmp.273
	mov	rbx, rax	# ivtmp.273, ivtmp.273
	mov	QWORD PTR 40[rsp], rax	# %sfp, ivtmp.273
	inc	rax	# ivtmp.273
	mov	QWORD PTR 48[rsp], rax	# %sfp, ivtmp.273
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	rax, QWORD PTR 32[rsp]	# <retval>, %sfp
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	imul	r10, r9	# _232, _234
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	r15, QWORD PTR 16[rax]	# _223, sobelFrame_59(D)->data
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	rax, QWORD PTR 72[rax]	# sobelFrame_59(D)->step.p, sobelFrame_59(D)->step.p
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	lea	r11, [r10+r9]	# _229,
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	lea	rcx, [rdi+r10]	# _231,
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	imul	rbx, QWORD PTR [rax]	# _220, *_222
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	add	r9, r11	# _225, _229
	cmp	DWORD PTR 60[rsp], 14	# %sfp,
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	QWORD PTR 72[rsp], r15	# %sfp, _223
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:723:     return (const _Tp*)(data + step.p[0] * y);
	lea	rsi, [rdi+r11]	# _228,
	lea	rdx, [rdi+r9]	# _224,
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	mov	QWORD PTR 80[rsp], rbx	# %sfp, _220
	lea	r8, [r15+rbx]	# tmp862,
	jbe	.L36	#,
	lea	r13, 1[rdi+r11]	# tmp489,
	mov	rax, r8	# tmp490, tmp862
	lea	rbx, 1[rdi+r9]	# _420,
	sub	rax, r13	# tmp490, tmp489
	lea	r12, 1[rdi+r10]	# _434,
	cmp	rax, 32	# tmp490,
	mov	rax, r8	# tmp493, tmp862
	seta	r13b	#, tmp492
	sub	rax, rbx	# tmp493, _420
	cmp	rax, 32	# tmp493,
	seta	al	#, tmp495
	test	r13b, al	# tmp492, tmp495
	je	.L36	#,
	mov	rax, r8	# tmp497, tmp862
	sub	rax, r12	# tmp497, _434
	cmp	rax, 32	# tmp497,
	jbe	.L36	#,
	cmp	DWORD PTR 60[rsp], 30	# %sfp,
	jbe	.L37	#,
# image_processing.cpp:108:             if (magnitude > 255)
	vpbroadcastd	ymm15, DWORD PTR .LC47[rip]	# tmp639,
	vpbroadcastw	ymm13, WORD PTR .LC48[rip]	# tmp644,
	lea	r15, 2[rdi+r10]	# vectp.93,
	lea	r14, 2[rdi+r11]	# vectp.97,
	lea	r13, 2[rdi+r9]	# vectp.102,
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	xor	eax, eax	# ivtmp.253
.L38:
# image_processing.cpp:83:                 + 2 * row_ptr_mid[x + 1]
	vmovdqu	ymm0, YMMWORD PTR [r14+rax]	# MEM <const vector(32) unsigned char> [(const uint8_t *)vectp.97_524 + ivtmp.253_1003 * 1], MEM <const vector(32) unsigned char> [(const uint8_t *)vectp.97_524 + ivtmp.253_1003 * 1]
# image_processing.cpp:87:                 + 2 * row_ptr_mid[x - 1]
	vmovdqu	ymm6, YMMWORD PTR [rsi+rax]	# MEM <const vector(32) unsigned char> [(const uint8_t *)_228 + ivtmp.253_1003 * 1], MEM <const vector(32) unsigned char> [(const uint8_t *)_228 + ivtmp.253_1003 * 1]
# image_processing.cpp:81:             int gx =
	vpmovzxbw	ymm5, XMMWORD PTR 112[rsp]	# tmp524, %sfp
# image_processing.cpp:82:                 (row_ptr_top[x + 1]
	vmovdqu	ymm8, YMMWORD PTR [r15+rax]	# MEM <const vector(32) unsigned char> [(const uint8_t *)vectp.93_517 + ivtmp.253_1003 * 1], MEM <const vector(32) unsigned char> [(const uint8_t *)vectp.93_517 + ivtmp.253_1003 * 1]
# image_processing.cpp:81:             int gx =
	vpmovzxbw	ymm7, xmm0	#, MEM <const vector(32) unsigned char> [(const uint8_t *)vectp.97_524 + ivtmp.253_1003 * 1]
	vpmovzxbw	ymm2, xmm6	#, MEM <const vector(32) unsigned char> [(const uint8_t *)_228 + ivtmp.253_1003 * 1]
# image_processing.cpp:86:                 (row_ptr_top[x - 1]
	vmovdqu	ymm9, YMMWORD PTR [rcx+rax]	# MEM <const vector(32) unsigned char> [(const uint8_t *)_231 + ivtmp.253_1003 * 1], MEM <const vector(32) unsigned char> [(const uint8_t *)_231 + ivtmp.253_1003 * 1]
# image_processing.cpp:84:                 + row_ptr_bot[x + 1])
	vmovdqu	ymm10, YMMWORD PTR 0[r13+rax]	# MEM <const vector(32) unsigned char> [(const uint8_t *)vectp.102_534 + ivtmp.253_1003 * 1], MEM <const vector(32) unsigned char> [(const uint8_t *)vectp.102_534 + ivtmp.253_1003 * 1]
# image_processing.cpp:81:             int gx =
	vpmullw	ymm7, ymm7, ymm5	# vect_patt_49.99, tmp523, tmp524
	vpmullw	ymm2, ymm2, ymm5	# vect_patt_255.113, tmp532, tmp524
# image_processing.cpp:88:                 + row_ptr_bot[x - 1]);
	vmovdqu	ymm1, YMMWORD PTR [rdx+rax]	# MEM <const vector(32) unsigned char> [(const uint8_t *)_224 + ivtmp.253_1003 * 1], MEM <const vector(32) unsigned char> [(const uint8_t *)_224 + ivtmp.253_1003 * 1]
# image_processing.cpp:97:                 + 2 * row_ptr_top[x]
	vmovdqu	ymm4, YMMWORD PTR [r12+rax]	# MEM <const vector(32) unsigned char> [(const uint8_t *)_434 + ivtmp.253_1003 * 1], MEM <const vector(32) unsigned char> [(const uint8_t *)_434 + ivtmp.253_1003 * 1]
	vpmovzxbw	ymm12, xmm8	#, MEM <const vector(32) unsigned char> [(const uint8_t *)vectp.93_517 + ivtmp.253_1003 * 1]
	vpmovzxbw	ymm14, xmm9	#, MEM <const vector(32) unsigned char> [(const uint8_t *)_231 + ivtmp.253_1003 * 1]
	vpmovzxbw	ymm11, xmm10	#, MEM <const vector(32) unsigned char> [(const uint8_t *)vectp.102_534 + ivtmp.253_1003 * 1]
	vpmovzxbw	ymm3, xmm1	#, MEM <const vector(32) unsigned char> [(const uint8_t *)_224 + ivtmp.253_1003 * 1]
# image_processing.cpp:81:             int gx =
	vextracti128	xmm0, ymm0, 0x1	# tmp546, MEM <const vector(32) unsigned char> [(const uint8_t *)vectp.97_524 + ivtmp.253_1003 * 1]
	vextracti128	xmm6, ymm6, 0x1	# tmp555, MEM <const vector(32) unsigned char> [(const uint8_t *)_228 + ivtmp.253_1003 * 1]
	vpmovzxbw	ymm0, xmm0	# tmp544, tmp546
	vpmovzxbw	ymm6, xmm6	# tmp553, tmp555
	vextracti128	xmm8, ymm8, 0x1	# tmp505, MEM <const vector(32) unsigned char> [(const uint8_t *)vectp.93_517 + ivtmp.253_1003 * 1]
	vpmullw	ymm0, ymm0, ymm5	# vect_patt_49.99, tmp544, tmp524
	vpmullw	ymm6, ymm6, ymm5	# vect_patt_255.113, tmp553, tmp524
	vextracti128	xmm9, ymm9, 0x1	# tmp512, MEM <const vector(32) unsigned char> [(const uint8_t *)_231 + ivtmp.253_1003 * 1]
	vpaddw	ymm7, ymm7, ymm12	# tmp527, vect_patt_49.99, vect_patt_245.95
	vpaddw	ymm2, ymm2, ymm14	# tmp536, vect_patt_255.113, vect_patt_258.109
	vpmovzxbw	ymm8, xmm8	# vect_patt_245.95, tmp505
	vpsubw	ymm2, ymm7, ymm2	# tmp537, tmp527, tmp536
	vpsubw	ymm7, ymm11, ymm3	# tmp538, vect_patt_249.104, vect_patt_262.118
	vpmovzxbw	ymm9, xmm9	# vect_patt_258.109, tmp512
# image_processing.cpp:91:             int gy = 
	vpaddw	ymm11, ymm11, ymm3	# tmp565, vect_patt_249.104, vect_patt_262.118
	vpmovzxbw	ymm3, xmm4	#, MEM <const vector(32) unsigned char> [(const uint8_t *)_434 + ivtmp.253_1003 * 1]
	vextracti128	xmm4, ymm4, 0x1	# tmp593, MEM <const vector(32) unsigned char> [(const uint8_t *)_434 + ivtmp.253_1003 * 1]
	vpmovzxbw	ymm4, xmm4	# tmp591, tmp593
	vpmullw	ymm3, ymm3, ymm5	# vect_patt_280.131, tmp570, tmp524
	vextracti128	xmm10, ymm10, 0x1	# tmp509, MEM <const vector(32) unsigned char> [(const uint8_t *)vectp.102_534 + ivtmp.253_1003 * 1]
	vpmullw	ymm4, ymm4, ymm5	# vect_patt_280.131, tmp591, tmp524
	vextracti128	xmm1, ymm1, 0x1	# tmp516, MEM <const vector(32) unsigned char> [(const uint8_t *)_224 + ivtmp.253_1003 * 1]
# image_processing.cpp:81:             int gx =
	vpaddw	ymm6, ymm6, ymm9	# tmp557, vect_patt_255.113, vect_patt_258.109
	vpmovzxbw	ymm10, xmm10	# vect_patt_249.104, tmp509
	vpmovzxbw	ymm1, xmm1	# vect_patt_262.118, tmp516
	vpaddw	ymm0, ymm0, ymm8	# tmp548, vect_patt_49.99, vect_patt_245.95
	vpsubw	ymm0, ymm0, ymm6	# tmp558, tmp548, tmp557
	vpsubw	ymm6, ymm10, ymm1	# tmp559, vect_patt_249.104, vect_patt_262.118
# image_processing.cpp:91:             int gy = 
	vpaddw	ymm1, ymm10, ymm1	# tmp586, vect_patt_249.104, vect_patt_262.118
# image_processing.cpp:81:             int gx =
	vpaddw	ymm2, ymm2, ymm7	# vect_patt_266.120, tmp537, tmp538
# image_processing.cpp:91:             int gy = 
	vpaddw	ymm3, ymm3, ymm14	# tmp574, vect_patt_280.131, vect_patt_258.109
# image_processing.cpp:102:             int abs_gx = (gx < 0) ? -gx : gx;
	vpabsw	ymm2, ymm2	# vect_patt_290.136, vect_patt_266.120
# image_processing.cpp:81:             int gx =
	vpaddw	ymm0, ymm0, ymm6	# vect_patt_266.120, tmp558, tmp559
# image_processing.cpp:91:             int gy = 
	vpaddw	ymm4, ymm4, ymm9	# tmp595, vect_patt_280.131, vect_patt_258.109
	vpsubw	ymm3, ymm11, ymm3	# tmp575, tmp565, tmp574
	vpmovzxbw	ymm11, XMMWORD PTR [rbx+rax]	#, MEM <const vector(32) unsigned char> [(const uint8_t *)_420 + ivtmp.253_1003 * 1]
	vpmovsxwd	ymm7, xmm2	#, vect_patt_290.136
	vpsubw	ymm4, ymm1, ymm4	# tmp596, tmp586, tmp595
	vmovdqu	ymm1, YMMWORD PTR [rbx+rax]	# tmp943, MEM <const vector(32) unsigned char> [(const uint8_t *)_420 + ivtmp.253_1003 * 1]
	vextracti128	xmm2, ymm2, 0x1	# tmp562, vect_patt_290.136
# image_processing.cpp:102:             int abs_gx = (gx < 0) ? -gx : gx;
	vpabsw	ymm0, ymm0	# vect_patt_290.136, vect_patt_266.120
# image_processing.cpp:91:             int gy = 
	vpmullw	ymm11, ymm11, ymm5	# vect_patt_271.125, tmp580, tmp524
	vpmovsxwd	ymm2, xmm2	# vect_patt_291.137, tmp562
	vpmovsxwd	ymm6, xmm0	#, vect_patt_290.136
	vextracti128	xmm1, ymm1, 0x1	# tmp603, tmp943
	vextracti128	xmm0, ymm0, 0x1	# tmp564, vect_patt_290.136
	vpmovzxbw	ymm1, xmm1	# tmp601, tmp603
	vpmovsxwd	ymm0, xmm0	# vect_patt_291.137, tmp564
	vpmullw	ymm1, ymm1, ymm5	# vect_patt_271.125, tmp601, tmp524
	vpsubw	ymm11, ymm11, ymm12	# tmp584, vect_patt_271.125, vect_patt_245.95
	vpaddw	ymm3, ymm3, ymm11	# vect_patt_287.134, tmp575, tmp584
# image_processing.cpp:103:             int abs_gy = (gy < 0) ? -gy : gy;
	vpabsw	ymm3, ymm3	# vect_patt_292.138, vect_patt_287.134
# image_processing.cpp:91:             int gy = 
	vpsubw	ymm1, ymm1, ymm8	# tmp605, vect_patt_271.125, vect_patt_245.95
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpsrad	ymm8, ymm7, 1	# vect__173.146, vect_patt_291.137,
# image_processing.cpp:91:             int gy = 
	vpaddw	ymm4, ymm4, ymm1	# vect_patt_287.134, tmp596, tmp605
	vpmovsxwd	ymm1, xmm3	#, vect_patt_292.138
	vextracti128	xmm3, ymm3, 0x1	# tmp608, vect_patt_292.138
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpaddd	ymm8, ymm8, ymm1	# vect__50.149, vect__173.146, vect_patt_293.139
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpsrad	ymm9, ymm1, 1	# vect__171.140, vect_patt_293.139,
	vpmovsxwd	ymm3, xmm3	# vect_patt_293.139, tmp608
	vpcmpgtd	ymm1, ymm7, ymm1	# tmp615, vect_patt_291.137, vect_patt_293.139
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpaddd	ymm9, ymm9, ymm7	# vect__54.143, vect__171.140, vect_patt_291.137
# image_processing.cpp:103:             int abs_gy = (gy < 0) ? -gy : gy;
	vpabsw	ymm4, ymm4	# vect_patt_292.138, vect_patt_287.134
	vpmovsxwd	ymm5, xmm4	#, vect_patt_292.138
	vextracti128	xmm4, ymm4, 0x1	# tmp610, vect_patt_292.138
	vpmovsxwd	ymm4, xmm4	# vect_patt_293.139, tmp610
	vpblendvb	ymm7, ymm8, ymm9, ymm1	# tmp616, vect__50.149, vect__54.143, tmp615
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpsrad	ymm8, ymm3, 1	# vect__171.140, vect_patt_293.139,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpaddd	ymm8, ymm8, ymm2	# vect__54.143, vect__171.140, vect_patt_291.137
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpsrad	ymm1, ymm2, 1	# vect__173.146, vect_patt_291.137,
	vpcmpgtd	ymm2, ymm2, ymm3	# tmp621, vect_patt_291.137, vect_patt_293.139
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpaddd	ymm1, ymm1, ymm3	# vect__50.149, vect__173.146, vect_patt_293.139
	vpblendvb	ymm3, ymm1, ymm8, ymm2	# tmp622, vect__50.149, vect__54.143, tmp621
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpsrad	ymm2, ymm5, 1	# vect__171.140, vect_patt_293.139,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpaddd	ymm2, ymm2, ymm6	# vect__54.143, vect__171.140, vect_patt_291.137
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpsrad	ymm1, ymm6, 1	# vect__173.146, vect_patt_291.137,
# image_processing.cpp:108:             if (magnitude > 255)
	vpand	ymm3, ymm15, ymm3	# tmp637, tmp639, tmp622
	vpcmpgtd	ymm6, ymm6, ymm5	# tmp627, vect_patt_291.137, vect_patt_293.139
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpaddd	ymm1, ymm1, ymm5	# vect__50.149, vect__173.146, vect_patt_293.139
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpsrad	ymm5, ymm4, 1	# vect__171.140, vect_patt_293.139,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpaddd	ymm5, ymm5, ymm0	# vect__54.143, vect__171.140, vect_patt_291.137
	vpblendvb	ymm1, ymm1, ymm2, ymm6	# tmp628, vect__50.149, vect__54.143, tmp627
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpsrad	ymm2, ymm0, 1	# vect__173.146, vect_patt_291.137,
	vpcmpgtd	ymm0, ymm0, ymm4	# tmp633, vect_patt_291.137, vect_patt_293.139
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpaddd	ymm2, ymm2, ymm4	# vect__50.149, vect__173.146, vect_patt_293.139
# image_processing.cpp:108:             if (magnitude > 255)
	vpand	ymm1, ymm15, ymm1	# tmp647, tmp639, tmp628
	vpblendvb	ymm2, ymm2, ymm5, ymm0	# tmp634, vect__50.149, vect__54.143, tmp633
	vpand	ymm0, ymm15, ymm7	# tmp636, tmp639, tmp616
	vpand	ymm2, ymm15, ymm2	# tmp648, tmp639, tmp634
	vpackusdw	ymm0, ymm0, ymm3	# tmp641, tmp636, tmp637
	vpackusdw	ymm1, ymm1, ymm2	# tmp652, tmp647, tmp648
	vpermq	ymm0, ymm0, 216	# tmp642, tmp641,
	vpermq	ymm1, ymm1, 216	# tmp653, tmp652,
	vpminuw	ymm0, ymm13, ymm0	# vect_patt_294.152, tmp644, tmp642
	vpminuw	ymm1, ymm13, ymm1	# vect_patt_294.152, tmp644, tmp653
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	vpand	ymm0, ymm13, ymm0	# tmp658, tmp644, vect_patt_294.152
	vpand	ymm1, ymm13, ymm1	# tmp659, tmp644, vect_patt_294.152
	vpackuswb	ymm0, ymm0, ymm1	# tmp663, tmp658, tmp659
	vpermq	ymm0, ymm0, 216	# tmp664, tmp663,
	vmovdqu	YMMWORD PTR [r8+rax], ymm0	# MEM <vector(32) unsigned char> [(uint8_t *)_418 + ivtmp.253_1003 * 1], tmp664
	add	rax, 32	# ivtmp.253,
	cmp	QWORD PTR 64[rsp], rax	# %sfp, ivtmp.253
	jne	.L38	#,
	test	BYTE PTR 88[rsp], 31	# %sfp,
	je	.L48	#,
	mov	eax, DWORD PTR 56[rsp]	# _673, %sfp
	mov	r15d, DWORD PTR 12[rsp]	# niters_vector_mult_vf.90, %sfp
	sub	eax, r15d	# _673, niters_vector_mult_vf.90
	lea	ebx, -2[rax]	# niters.157,
	sub	eax, 3	# tmp666,
	cmp	eax, 14	# tmp666,
	jbe	.L51	#,
	mov	r12d, DWORD PTR 8[rsp]	# x, %sfp
	mov	eax, r15d	#, niters_vector_mult_vf.90
.L50:
	add	r11, rax	# _752, _742
# image_processing.cpp:81:             int gx =
	vmovdqa	xmm10, XMMWORD PTR 112[rsp]	# tmp864, %sfp
	add	r10, rax	# _743, _742
	add	r9, rax	# _764, _742
# image_processing.cpp:83:                 + 2 * row_ptr_mid[x + 1]
	vmovdqu	xmm0, XMMWORD PTR 2[rdi+r11]	# MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.166_750], MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.166_750]
# image_processing.cpp:82:                 (row_ptr_top[x + 1]
	vmovdqu	xmm6, XMMWORD PTR 2[rdi+r10]	# MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.162_741], MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.162_741]
# image_processing.cpp:81:             int gx =
	vpmovzxbw	xmm11, xmm10	# tmp685, tmp864
# image_processing.cpp:84:                 + row_ptr_bot[x + 1])
	vmovdqu	xmm8, XMMWORD PTR 2[rdi+r9]	# MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.171_762], MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.171_762]
# image_processing.cpp:86:                 (row_ptr_top[x - 1]
	vmovdqu	xmm7, XMMWORD PTR [rdi+r10]	# MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.176_773], MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.176_773]
# image_processing.cpp:81:             int gx =
	vpmovzxbw	xmm2, xmm0	# tmp684, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.166_750]
# image_processing.cpp:87:                 + 2 * row_ptr_mid[x - 1]
	vmovdqu	xmm3, XMMWORD PTR [rdi+r11]	# MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.180_781], MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.180_781]
	vpmovzxbw	xmm13, xmm6	# vect_patt_361.164, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.162_741]
# image_processing.cpp:81:             int gx =
	vmovdqa	xmm10, XMMWORD PTR 96[rsp]	# tmp866, %sfp
	vpmullw	xmm2, xmm2, xmm11	# vect_patt_358.168, tmp684, tmp685
	vpmovzxbw	xmm15, xmm8	# vect_patt_365.173, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.171_762]
	vpmovzxbw	xmm14, xmm7	# vect_patt_374.178, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.176_773]
# image_processing.cpp:88:                 + row_ptr_bot[x - 1]);
	vmovdqu	xmm5, XMMWORD PTR [rdi+r9]	# MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.185_792], MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.185_792]
# image_processing.cpp:81:             int gx =
	vpsubw	xmm9, xmm15, xmm14	# tmp687, vect_patt_365.173, vect_patt_374.178
	vpsrldq	xmm0, xmm0, 8	# tmp703, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.166_750],
# image_processing.cpp:93:                 + 2 * row_ptr_bot[x]
	vmovdqu	xmm1, XMMWORD PTR 1[rdi+r9]	# MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.192_806], MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.192_806]
# image_processing.cpp:97:                 + 2 * row_ptr_top[x]
	vmovdqu	xmm4, XMMWORD PTR 1[rdi+r10]	# MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.198_820], MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.198_820]
# image_processing.cpp:81:             int gx =
	vpmovzxbw	xmm0, xmm0	# tmp701, tmp703
	vpmovzxbw	xmm12, xmm5	# vect_patt_378.187, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.185_792]
	mov	r14, QWORD PTR 80[rsp]	# _220, %sfp
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	mov	rdi, QWORD PTR 72[rsp]	# _223, %sfp
# image_processing.cpp:81:             int gx =
	vpmullw	xmm0, xmm0, xmm10	# vect_patt_358.168, tmp701, tmp866
	vpsrldq	xmm6, xmm6, 8	# tmp669, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.162_741],
	vpsrldq	xmm8, xmm8, 8	# tmp672, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.171_762],
	vpsrldq	xmm7, xmm7, 8	# tmp674, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.176_773],
	vpmovzxbw	xmm6, xmm6	# vect_patt_361.164, tmp669
	add	r14, rax	# _220, _742
	vpaddw	xmm2, xmm2, xmm13	# tmp686, vect_patt_358.168, vect_patt_361.164
	vpmovzxbw	xmm7, xmm7	# vect_patt_374.178, tmp674
	vpmovzxbw	xmm8, xmm8	# vect_patt_365.173, tmp672
	vpaddw	xmm2, xmm2, xmm9	# tmp688, tmp686, tmp687
	vpsrldq	xmm5, xmm5, 8	# tmp677, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.185_792],
	vpmovzxbw	xmm9, xmm3	# tmp693, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.180_781]
	vpmullw	xmm9, xmm9, xmm11	# vect_patt_371.182, tmp693, tmp685
	vpsrldq	xmm3, xmm3, 8	# tmp714, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.180_781],
	vpmovzxbw	xmm5, xmm5	# vect_patt_378.187, tmp677
	vpmovzxbw	xmm3, xmm3	# tmp712, tmp714
	vpaddw	xmm0, xmm0, xmm6	# tmp705, vect_patt_358.168, vect_patt_361.164
	vpmullw	xmm3, xmm3, xmm10	# vect_patt_371.182, tmp712, tmp866
	vpaddw	xmm9, xmm9, xmm12	# tmp695, vect_patt_371.182, vect_patt_378.187
# image_processing.cpp:91:             int gy = 
	vpsubw	xmm12, xmm12, xmm14	# tmp727, vect_patt_378.187, vect_patt_374.178
# image_processing.cpp:81:             int gx =
	vpsubw	xmm2, xmm2, xmm9	# vect_patt_382.189, tmp688, tmp695
	vpsubw	xmm9, xmm8, xmm7	# tmp706, vect_patt_365.173, vect_patt_374.178
	vpaddw	xmm3, xmm3, xmm5	# tmp716, vect_patt_371.182, vect_patt_378.187
	vpaddw	xmm0, xmm0, xmm9	# tmp707, tmp705, tmp706
# image_processing.cpp:102:             int abs_gx = (gx < 0) ? -gx : gx;
	vpabsw	xmm2, xmm2	# vect_patt_406.205, vect_patt_382.189
# image_processing.cpp:81:             int gx =
	vpsubw	xmm0, xmm0, xmm3	# vect_patt_382.189, tmp707, tmp716
# image_processing.cpp:91:             int gy = 
	vpmovzxbw	xmm3, xmm1	# tmp724, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.192_806]
	vpsubw	xmm5, xmm5, xmm7	# tmp746, vect_patt_378.187, vect_patt_374.178
	vpmullw	xmm3, xmm3, xmm11	# vect_patt_387.194, tmp724, tmp685
	vpsrldq	xmm1, xmm1, 8	# tmp743, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.192_806],
	vpmovsxwd	xmm10, xmm2	# vect_patt_407.206, vect_patt_406.205
	vpmovzxbw	xmm1, xmm1	# tmp741, tmp743
	vpsrldq	xmm2, xmm2, 8	# tmp718, vect_patt_406.205,
# image_processing.cpp:102:             int abs_gx = (gx < 0) ? -gx : gx;
	vpabsw	xmm0, xmm0	# vect_patt_406.205, vect_patt_382.189
	vpmovsxwd	xmm2, xmm2	# vect_patt_407.206, tmp718
	vpmovsxwd	xmm9, xmm0	# vect_patt_407.206, vect_patt_406.205
	vpsrldq	xmm0, xmm0, 8	# tmp719, vect_patt_406.205,
	vpmovsxwd	xmm0, xmm0	# vect_patt_407.206, tmp719
# image_processing.cpp:91:             int gy = 
	vpaddw	xmm3, xmm3, xmm15	# tmp726, vect_patt_387.194, vect_patt_365.173
	vpaddw	xmm3, xmm3, xmm12	# tmp728, tmp726, tmp727
	vpmovzxbw	xmm12, xmm4	# tmp733, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.198_820]
	vpmullw	xmm11, xmm12, xmm11	# vect_patt_396.200, tmp733, tmp685
	vpsrldq	xmm4, xmm4, 8	# tmp754, MEM <const vector(16) unsigned char> [(const uint8_t *)vectp.198_820],
	vpmovzxbw	xmm4, xmm4	# tmp752, tmp754
	vpaddw	xmm11, xmm11, xmm13	# tmp735, vect_patt_396.200, vect_patt_361.164
	vmovdqa	xmm13, XMMWORD PTR 96[rsp]	# tmp866, %sfp
	vpsubw	xmm3, xmm3, xmm11	# vect_patt_403.203, tmp728, tmp735
	vpmullw	xmm1, xmm1, xmm13	# vect_patt_387.194, tmp741, tmp866
	vpmullw	xmm4, xmm4, xmm13	# vect_patt_396.200, tmp752, tmp866
# image_processing.cpp:103:             int abs_gy = (gy < 0) ? -gy : gy;
	vpabsw	xmm3, xmm3	# vect_patt_408.207, vect_patt_403.203
	vpmovsxwd	xmm7, xmm3	# vect_patt_409.208, vect_patt_408.207
	vpsrldq	xmm3, xmm3, 8	# tmp758, vect_patt_408.207,
	vpmovsxwd	xmm3, xmm3	# vect_patt_409.208, tmp758
# image_processing.cpp:91:             int gy = 
	vpaddw	xmm1, xmm1, xmm8	# tmp745, vect_patt_387.194, vect_patt_365.173
	vpaddw	xmm4, xmm4, xmm6	# tmp756, vect_patt_396.200, vect_patt_361.164
	vpaddw	xmm1, xmm1, xmm5	# tmp747, tmp745, tmp746
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpsrad	xmm5, xmm7, 1	# vect__487.209, vect_patt_409.208,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpaddd	xmm5, xmm5, xmm10	# vect__490.212, vect__487.209, vect_patt_407.206
# image_processing.cpp:91:             int gy = 
	vpsubw	xmm1, xmm1, xmm4	# vect_patt_403.203, tmp747, tmp756
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpsrad	xmm4, xmm10, 1	# vect__493.215, vect_patt_407.206,
	vpcmpgtd	xmm10, xmm10, xmm7	# tmp764, vect_patt_407.206, vect_patt_409.208
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpaddd	xmm4, xmm4, xmm7	# vect__496.218, vect__493.215, vect_patt_409.208
# image_processing.cpp:103:             int abs_gy = (gy < 0) ? -gy : gy;
	vpabsw	xmm1, xmm1	# vect_patt_408.207, vect_patt_403.203
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpsrad	xmm7, xmm3, 1	# vect__487.209, vect_patt_409.208,
	vpmovsxwd	xmm6, xmm1	# vect_patt_409.208, vect_patt_408.207
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpaddd	xmm7, xmm7, xmm2	# vect__490.212, vect__487.209, vect_patt_407.206
	vpsrldq	xmm1, xmm1, 8	# tmp759, vect_patt_408.207,
	vpblendvb	xmm4, xmm4, xmm5, xmm10	# tmp765, vect__496.218, vect__490.212, tmp764
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpsrad	xmm5, xmm2, 1	# vect__493.215, vect_patt_407.206,
	vpmovsxwd	xmm1, xmm1	# vect_patt_409.208, tmp759
	vpcmpgtd	xmm2, xmm2, xmm3	# tmp770, vect_patt_407.206, vect_patt_409.208
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpaddd	xmm5, xmm5, xmm3	# vect__496.218, vect__493.215, vect_patt_409.208
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpsrad	xmm3, xmm6, 1	# vect__487.209, vect_patt_409.208,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpaddd	xmm3, xmm3, xmm9	# vect__490.212, vect__487.209, vect_patt_407.206
	vpblendvb	xmm5, xmm5, xmm7, xmm2	# tmp771, vect__496.218, vect__490.212, tmp770
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpsrad	xmm2, xmm9, 1	# vect__493.215, vect_patt_407.206,
	vpcmpgtd	xmm9, xmm9, xmm6	# tmp776, vect_patt_407.206, vect_patt_409.208
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpaddd	xmm2, xmm2, xmm6	# vect__496.218, vect__493.215, vect_patt_409.208
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpsrad	xmm6, xmm1, 1	# vect__487.209, vect_patt_409.208,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpaddd	xmm6, xmm6, xmm0	# vect__490.212, vect__487.209, vect_patt_407.206
	vpblendvb	xmm2, xmm2, xmm3, xmm9	# tmp777, vect__496.218, vect__490.212, tmp776
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpsrad	xmm3, xmm0, 1	# vect__493.215, vect_patt_407.206,
	vpcmpgtd	xmm0, xmm0, xmm1	# tmp782, vect_patt_407.206, vect_patt_409.208
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	vpaddd	xmm3, xmm3, xmm1	# vect__496.218, vect__493.215, vect_patt_409.208
# image_processing.cpp:108:             if (magnitude > 255)
	vpand	xmm1, xmm4, XMMWORD PTR .LC44[rip]	# tmp785, tmp765,
	vpblendvb	xmm3, xmm3, xmm6, xmm0	# tmp783, vect__496.218, vect__490.212, tmp782
	vpand	xmm0, xmm5, XMMWORD PTR .LC44[rip]	# tmp786, tmp771,
	vpackusdw	xmm1, xmm1, xmm0	# vect_patt_410.221, tmp785, tmp786
	vpand	xmm0, xmm2, XMMWORD PTR .LC44[rip]	# tmp794, tmp777,
	vpand	xmm2, xmm3, XMMWORD PTR .LC44[rip]	# tmp795, tmp783,
	vpminuw	xmm1, xmm1, XMMWORD PTR .LC34[rip]	# vect_patt_410.221, vect_patt_410.221,
	vpackusdw	xmm0, xmm0, xmm2	# vect_patt_410.221, tmp794, tmp795
	vpminuw	xmm0, xmm0, XMMWORD PTR .LC34[rip]	# vect_patt_410.221, vect_patt_410.221,
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	vpand	xmm1, xmm1, XMMWORD PTR .LC34[rip]	# tmp803, vect_patt_410.221,
	vpand	xmm0, xmm0, XMMWORD PTR .LC34[rip]	# tmp804, vect_patt_410.221,
	vpackuswb	xmm1, xmm1, xmm0	# vect_patt_413.223, tmp803, tmp804
	vmovdqu	XMMWORD PTR [rdi+r14], xmm1	# MEM <vector(16) unsigned char> [(uint8_t *)vectp.225_904], vect_patt_413.223
	mov	edi, ebx	# niters_vector_mult_vf.159, niters.157
	and	edi, -16	# niters_vector_mult_vf.159,
	add	edi, r12d	# tmp.160, x
	and	ebx, 15	# niters.157,
	je	.L48	#,
.L40:
	movsx	rdi, edi	# ivtmp.240, tmp.160
	.p2align 4,,10
	.p2align 3
.L44:
# image_processing.cpp:82:                 (row_ptr_top[x + 1]
	movzx	r11d, BYTE PTR 1[rcx+rdi]	# _680, MEM[(const uint8_t *)_231 + 1B + ivtmp.240_1008 * 1]
# image_processing.cpp:86:                 (row_ptr_top[x - 1]
	movzx	r10d, BYTE PTR -1[rcx+rdi]	# _693, MEM[(const uint8_t *)_231 + -1B + ivtmp.240_1008 * 1]
# image_processing.cpp:83:                 + 2 * row_ptr_mid[x + 1]
	movzx	eax, BYTE PTR 1[rsi+rdi]	# MEM[(const uint8_t *)_228 + 1B + ivtmp.240_1008 * 1], MEM[(const uint8_t *)_228 + 1B + ivtmp.240_1008 * 1]
# image_processing.cpp:87:                 + 2 * row_ptr_mid[x - 1]
	movzx	r9d, BYTE PTR -1[rsi+rdi]	# MEM[(const uint8_t *)_228 + -1B + ivtmp.240_1008 * 1], MEM[(const uint8_t *)_228 + -1B + ivtmp.240_1008 * 1]
# image_processing.cpp:84:                 + row_ptr_bot[x + 1])
	movzx	ebx, BYTE PTR 1[rdx+rdi]	# _688, MEM[(const uint8_t *)_224 + 1B + ivtmp.240_1008 * 1]
# image_processing.cpp:88:                 + row_ptr_bot[x - 1]);
	movzx	r12d, BYTE PTR -1[rdx+rdi]	# _701, MEM[(const uint8_t *)_224 + -1B + ivtmp.240_1008 * 1]
# image_processing.cpp:87:                 + 2 * row_ptr_mid[x - 1]
	lea	r9d, [r10+r9*2]	# tmp816,
# image_processing.cpp:83:                 + 2 * row_ptr_mid[x + 1]
	lea	eax, [r11+rax*2]	# tmp812,
# image_processing.cpp:84:                 + row_ptr_bot[x + 1])
	add	eax, ebx	# tmp813, _688
# image_processing.cpp:88:                 + row_ptr_bot[x - 1]);
	add	r9d, r12d	# tmp817, _701
# image_processing.cpp:81:             int gx =
	sub	eax, r9d	# gx, tmp817
# image_processing.cpp:102:             int abs_gx = (gx < 0) ? -gx : gx;
	mov	r9d, eax	# tmp819, gx
	sar	r9d, 31	# tmp819,
	xor	eax, r9d	# abs_gx, tmp819
	sub	eax, r9d	# abs_gx, tmp819
# image_processing.cpp:93:                 + 2 * row_ptr_bot[x]
	movzx	r9d, BYTE PTR [rdx+rdi]	# MEM[(const uint8_t *)_224 + ivtmp.240_1008 * 1], MEM[(const uint8_t *)_224 + ivtmp.240_1008 * 1]
# image_processing.cpp:93:                 + 2 * row_ptr_bot[x]
	lea	r9d, [r12+r9*2]	# tmp822,
# image_processing.cpp:94:                 + row_ptr_bot[x + 1])
	add	r9d, ebx	# tmp823, _688
# image_processing.cpp:97:                 + 2 * row_ptr_top[x]
	movzx	ebx, BYTE PTR [rcx+rdi]	# MEM[(const uint8_t *)_231 + ivtmp.240_1008 * 1], MEM[(const uint8_t *)_231 + ivtmp.240_1008 * 1]
# image_processing.cpp:97:                 + 2 * row_ptr_top[x]
	lea	r10d, [r10+rbx*2]	# tmp826,
# image_processing.cpp:98:                 + row_ptr_top[x + 1]);
	add	r10d, r11d	# tmp827, _680
# image_processing.cpp:91:             int gy = 
	sub	r9d, r10d	# gy, tmp827
# image_processing.cpp:103:             int abs_gy = (gy < 0) ? -gy : gy;
	mov	r10d, r9d	# tmp829, gy
	sar	r10d, 31	# tmp829,
	xor	r9d, r10d	# abs_gy, tmp829
	sub	r9d, r10d	# abs_gy, tmp829
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	cmp	eax, r9d	# abs_gx, abs_gy
	jle	.L68	#,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	sar	r9d	# tmp831
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	add	r9d, eax	# tmp830, abs_gx
# image_processing.cpp:108:             if (magnitude > 255)
	mov	eax, 255	# tmp878,
	cmp	r9d, eax	# tmp830, tmp878
	cmovg	r9d, eax	# tmp830,, tmp830, tmp878
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	mov	BYTE PTR -1[r8+rdi], r9b	# MEM[(uint8_t *)_418 + -1B + ivtmp.240_1008 * 1], tmp830
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	inc	rdi	# ivtmp.240
	cmp	DWORD PTR 92[rsp], edi	# %sfp, ivtmp.240
	jg	.L44	#,
.L48:
# image_processing.cpp:72:     for (int y = 1; y < rows - 1; ++y)
	mov	rsi, QWORD PTR 40[rsp]	# ivtmp.273, %sfp
	cmp	QWORD PTR 16[rsp], rsi	# %sfp, ivtmp.273
	jne	.L34	#,
.L70:
	vzeroupper
.L31:
# image_processing.cpp:119: }
	mov	rax, QWORD PTR 32[rsp]	#, %sfp
	lea	rsp, -40[rbp]	#,
	pop	rbx	#
	pop	r12	#
	pop	r13	#
	pop	r14	#
	pop	r15	#
	pop	rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4,,10
	.p2align 3
.L68:
	.cfi_restore_state
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	sar	eax	# tmp833
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	add	eax, r9d	# tmp832, abs_gy
# image_processing.cpp:108:             if (magnitude > 255)
	mov	r9d, 255	# tmp877,
	cmp	eax, r9d	# tmp832, tmp877
	cmovg	eax, r9d	# tmp832,, tmp832, tmp877
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	mov	BYTE PTR -1[r8+rdi], al	# MEM[(uint8_t *)_418 + -1B + ivtmp.240_1008 * 1], tmp832
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	inc	rdi	# ivtmp.240
	cmp	DWORD PTR 92[rsp], edi	# %sfp, ivtmp.240
	jg	.L44	#,
# image_processing.cpp:72:     for (int y = 1; y < rows - 1; ++y)
	mov	rsi, QWORD PTR 40[rsp]	# ivtmp.273, %sfp
	cmp	QWORD PTR 16[rsp], rsi	# %sfp, ivtmp.273
	jne	.L34	#,
	jmp	.L70	#
	.p2align 4,,10
	.p2align 3
.L36:
	mov	r13d, DWORD PTR 88[rsp]	# _1009, %sfp
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	xor	edi, edi	# ivtmp.230
	.p2align 4,,10
	.p2align 3
.L49:
# image_processing.cpp:82:                 (row_ptr_top[x + 1]
	movzx	r11d, BYTE PTR 2[rcx+rdi]	# _146, MEM[(const uint8_t *)_231 + 2B + ivtmp.230_1015 * 1]
# image_processing.cpp:86:                 (row_ptr_top[x - 1]
	movzx	r10d, BYTE PTR [rcx+rdi]	# _133, MEM[(const uint8_t *)_231 + ivtmp.230_1015 * 1]
# image_processing.cpp:83:                 + 2 * row_ptr_mid[x + 1]
	movzx	r9d, BYTE PTR 2[rsi+rdi]	# MEM[(const uint8_t *)_228 + 2B + ivtmp.230_1015 * 1], MEM[(const uint8_t *)_228 + 2B + ivtmp.230_1015 * 1]
# image_processing.cpp:87:                 + 2 * row_ptr_mid[x - 1]
	movzx	r12d, BYTE PTR [rsi+rdi]	# MEM[(const uint8_t *)_228 + ivtmp.230_1015 * 1], MEM[(const uint8_t *)_228 + ivtmp.230_1015 * 1]
# image_processing.cpp:84:                 + row_ptr_bot[x + 1])
	movzx	ebx, BYTE PTR 2[rdx+rdi]	# _138, MEM[(const uint8_t *)_224 + 2B + ivtmp.230_1015 * 1]
# image_processing.cpp:88:                 + row_ptr_bot[x - 1]);
	movzx	eax, BYTE PTR [rdx+rdi]	# _125, MEM[(const uint8_t *)_224 + ivtmp.230_1015 * 1]
# image_processing.cpp:87:                 + 2 * row_ptr_mid[x - 1]
	lea	r12d, [r10+r12*2]	# tmp841,
# image_processing.cpp:83:                 + 2 * row_ptr_mid[x + 1]
	lea	r9d, [r11+r9*2]	# tmp837,
# image_processing.cpp:88:                 + row_ptr_bot[x - 1]);
	add	r12d, eax	# tmp842, _125
# image_processing.cpp:84:                 + row_ptr_bot[x + 1])
	add	r9d, ebx	# tmp838, _138
# image_processing.cpp:81:             int gx =
	sub	r9d, r12d	# gx, tmp842
# image_processing.cpp:102:             int abs_gx = (gx < 0) ? -gx : gx;
	mov	r12d, r9d	# tmp844, gx
	sar	r12d, 31	# tmp844,
	xor	r9d, r12d	# abs_gx, tmp844
	sub	r9d, r12d	# abs_gx, tmp844
# image_processing.cpp:93:                 + 2 * row_ptr_bot[x]
	movzx	r12d, BYTE PTR 1[rdx+rdi]	# MEM[(const uint8_t *)_224 + 1B + ivtmp.230_1015 * 1], MEM[(const uint8_t *)_224 + 1B + ivtmp.230_1015 * 1]
# image_processing.cpp:93:                 + 2 * row_ptr_bot[x]
	lea	eax, [rax+r12*2]	# tmp847,
# image_processing.cpp:94:                 + row_ptr_bot[x + 1])
	add	eax, ebx	# tmp848, _138
# image_processing.cpp:97:                 + 2 * row_ptr_top[x]
	movzx	ebx, BYTE PTR 1[rcx+rdi]	# MEM[(const uint8_t *)_231 + 1B + ivtmp.230_1015 * 1], MEM[(const uint8_t *)_231 + 1B + ivtmp.230_1015 * 1]
# image_processing.cpp:97:                 + 2 * row_ptr_top[x]
	lea	r10d, [r10+rbx*2]	# tmp851,
# image_processing.cpp:98:                 + row_ptr_top[x + 1]);
	add	r10d, r11d	# tmp852, _146
# image_processing.cpp:91:             int gy = 
	sub	eax, r10d	# gy, tmp852
# image_processing.cpp:103:             int abs_gy = (gy < 0) ? -gy : gy;
	mov	r10d, eax	# tmp854, gy
	sar	r10d, 31	# tmp854,
	xor	eax, r10d	# abs_gy, tmp854
	sub	eax, r10d	# abs_gy, tmp854
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	cmp	eax, r9d	# abs_gy, abs_gx
	jl	.L46	#,
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	sar	r9d	# tmp857
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	add	r9d, eax	# tmp856, abs_gy
# image_processing.cpp:108:             if (magnitude > 255)
	mov	eax, 255	# tmp876,
	cmp	r9d, eax	# tmp856, tmp876
	cmovg	r9d, eax	# tmp856,, tmp856, tmp876
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	mov	BYTE PTR [r8+rdi], r9b	# MEM[(uint8_t *)_1013 + ivtmp.230_1015 * 1], tmp856
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	inc	rdi	# ivtmp.230
	cmp	r13, rdi	# _1009, ivtmp.230
	jne	.L49	#,
	jmp	.L48	#
	.p2align 4,,10
	.p2align 3
.L46:
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	sar	eax	# tmp860
# image_processing.cpp:105:             int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);
	add	eax, r9d	# tmp859, abs_gx
# image_processing.cpp:108:             if (magnitude > 255)
	mov	r9d, 255	# tmp875,
	cmp	eax, r9d	# tmp859, tmp875
	cmovg	eax, r9d	# tmp859,, tmp859, tmp875
# image_processing.cpp:114:             sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
	mov	BYTE PTR [r8+rdi], al	# MEM[(uint8_t *)_666 + ivtmp.230_1015 * 1], tmp859
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	inc	rdi	# ivtmp.230
	cmp	rdi, r13	# ivtmp.230, _1009
	jne	.L49	#,
# image_processing.cpp:72:     for (int y = 1; y < rows - 1; ++y)
	mov	rsi, QWORD PTR 40[rsp]	# ivtmp.273, %sfp
	cmp	QWORD PTR 16[rsp], rsi	# %sfp, ivtmp.273
	jne	.L34	#,
	jmp	.L70	#
.L37:
	mov	ebx, DWORD PTR 88[rsp]	# niters.157, %sfp
# /usr/include/opencv4/opencv2/core/mat.inl.hpp:716:     return (_Tp*)(data + step.p[0] * y);
	xor	eax, eax	#
# image_processing.cpp:78:         for (int x = 1; x < cols - 1; ++x)
	mov	r12d, 1	# x,
	jmp	.L50	#
.L51:
	mov	edi, DWORD PTR 8[rsp]	# tmp.160, %sfp
	jmp	.L40	#
	.cfi_endproc
.LFE16216:
	.size	_Z11sobelFilterRKN2cv3MatE, .-_Z11sobelFilterRKN2cv3MatE
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC0:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	2
	.byte	5
	.byte	8
	.byte	11
	.byte	14
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 32
.LC1:
	.byte	0
	.byte	3
	.byte	6
	.byte	9
	.byte	12
	.byte	15
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 32
.LC2:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	4
	.byte	7
	.byte	10
	.byte	13
	.byte	0
	.byte	3
	.byte	6
	.byte	9
	.byte	12
	.byte	15
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 32
.LC3:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	2
	.byte	5
	.byte	8
	.byte	11
	.byte	14
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 32
.LC4:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 32
.LC5:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	4
	.byte	7
	.byte	10
	.byte	13
	.align 32
.LC6:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	3
	.byte	6
	.byte	9
	.byte	12
	.byte	15
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 32
.LC7:
	.byte	1
	.byte	4
	.byte	7
	.byte	10
	.byte	13
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 32
.LC8:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	2
	.byte	5
	.byte	8
	.byte	11
	.byte	14
	.byte	1
	.byte	4
	.byte	7
	.byte	10
	.byte	13
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 32
.LC9:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	3
	.byte	6
	.byte	9
	.byte	12
	.byte	15
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 32
.LC10:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 32
.LC11:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	2
	.byte	5
	.byte	8
	.byte	11
	.byte	14
	.align 32
.LC12:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	4
	.byte	7
	.byte	10
	.byte	13
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 32
.LC13:
	.byte	2
	.byte	5
	.byte	8
	.byte	11
	.byte	14
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 32
.LC14:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	3
	.byte	6
	.byte	9
	.byte	12
	.byte	15
	.byte	2
	.byte	5
	.byte	8
	.byte	11
	.byte	14
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 32
.LC15:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	4
	.byte	7
	.byte	10
	.byte	13
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 32
.LC16:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	3
	.byte	6
	.byte	9
	.byte	12
	.byte	15
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC21:
	.byte	0
	.byte	3
	.byte	6
	.byte	9
	.byte	12
	.byte	15
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.set	.LC22,.LC3
	.align 16
.LC23:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	1
	.byte	4
	.byte	7
	.byte	10
	.byte	13
	.align 16
.LC24:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.align 16
.LC25:
	.byte	1
	.byte	4
	.byte	7
	.byte	10
	.byte	13
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.set	.LC26,.LC9
	.align 16
.LC27:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	2
	.byte	5
	.byte	8
	.byte	11
	.byte	14
	.align 16
.LC28:
	.byte	2
	.byte	5
	.byte	8
	.byte	11
	.byte	14
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.set	.LC29,.LC12+16
	.align 16
.LC30:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	0
	.byte	3
	.byte	6
	.byte	9
	.byte	12
	.byte	15
	.align 16
.LC34:
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.align 16
.LC44:
	.long	65535
	.long	65535
	.long	65535
	.long	65535
	.set	.LC47,.LC44
	.set	.LC48,.LC34
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
