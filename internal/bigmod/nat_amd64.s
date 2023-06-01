// Code generated by command: go run nat_amd64_asm.go -out ../nat_amd64.s -pkg bigmod. DO NOT EDIT.

//go:build !purego
// +build !purego

// func addMulVVW1024(z *uint, x *uint, y uint) (c uint)
// Requires: ADX, BMI2
TEXT ·addMulVVW1024(SB), $0-32
	CMPB ·supportADX+0(SB), $0x01
	JEQ  adx
	MOVQ z+0(FP), CX
	MOVQ x+8(FP), BX
	MOVQ y+16(FP), SI
	XORQ DI, DI

	// Iteration 0
	MOVQ (BX), AX
	MULQ SI
	ADDQ (CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, (CX)

	// Iteration 1
	MOVQ 8(BX), AX
	MULQ SI
	ADDQ 8(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 8(CX)

	// Iteration 2
	MOVQ 16(BX), AX
	MULQ SI
	ADDQ 16(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 16(CX)

	// Iteration 3
	MOVQ 24(BX), AX
	MULQ SI
	ADDQ 24(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 24(CX)

	// Iteration 4
	MOVQ 32(BX), AX
	MULQ SI
	ADDQ 32(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 32(CX)

	// Iteration 5
	MOVQ 40(BX), AX
	MULQ SI
	ADDQ 40(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 40(CX)

	// Iteration 6
	MOVQ 48(BX), AX
	MULQ SI
	ADDQ 48(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 48(CX)

	// Iteration 7
	MOVQ 56(BX), AX
	MULQ SI
	ADDQ 56(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 56(CX)

	// Iteration 8
	MOVQ 64(BX), AX
	MULQ SI
	ADDQ 64(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 64(CX)

	// Iteration 9
	MOVQ 72(BX), AX
	MULQ SI
	ADDQ 72(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 72(CX)

	// Iteration 10
	MOVQ 80(BX), AX
	MULQ SI
	ADDQ 80(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 80(CX)

	// Iteration 11
	MOVQ 88(BX), AX
	MULQ SI
	ADDQ 88(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 88(CX)

	// Iteration 12
	MOVQ 96(BX), AX
	MULQ SI
	ADDQ 96(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 96(CX)

	// Iteration 13
	MOVQ 104(BX), AX
	MULQ SI
	ADDQ 104(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 104(CX)

	// Iteration 14
	MOVQ 112(BX), AX
	MULQ SI
	ADDQ 112(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 112(CX)

	// Iteration 15
	MOVQ 120(BX), AX
	MULQ SI
	ADDQ 120(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 120(CX)
	MOVQ DI, c+24(FP)
	RET

adx:
	MOVQ z+0(FP), AX
	MOVQ x+8(FP), CX
	MOVQ y+16(FP), DX
	XORQ BX, BX
	XORQ SI, SI

	// Iteration 0
	MULXQ (CX), R8, DI
	ADCXQ BX, R8
	ADOXQ (AX), R8
	MOVQ  R8, (AX)

	// Iteration 1
	MULXQ 8(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 8(AX), R8
	MOVQ  R8, 8(AX)

	// Iteration 2
	MULXQ 16(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 16(AX), R8
	MOVQ  R8, 16(AX)

	// Iteration 3
	MULXQ 24(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 24(AX), R8
	MOVQ  R8, 24(AX)

	// Iteration 4
	MULXQ 32(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 32(AX), R8
	MOVQ  R8, 32(AX)

	// Iteration 5
	MULXQ 40(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 40(AX), R8
	MOVQ  R8, 40(AX)

	// Iteration 6
	MULXQ 48(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 48(AX), R8
	MOVQ  R8, 48(AX)

	// Iteration 7
	MULXQ 56(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 56(AX), R8
	MOVQ  R8, 56(AX)

	// Iteration 8
	MULXQ 64(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 64(AX), R8
	MOVQ  R8, 64(AX)

	// Iteration 9
	MULXQ 72(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 72(AX), R8
	MOVQ  R8, 72(AX)

	// Iteration 10
	MULXQ 80(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 80(AX), R8
	MOVQ  R8, 80(AX)

	// Iteration 11
	MULXQ 88(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 88(AX), R8
	MOVQ  R8, 88(AX)

	// Iteration 12
	MULXQ 96(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 96(AX), R8
	MOVQ  R8, 96(AX)

	// Iteration 13
	MULXQ 104(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 104(AX), R8
	MOVQ  R8, 104(AX)

	// Iteration 14
	MULXQ 112(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 112(AX), R8
	MOVQ  R8, 112(AX)

	// Iteration 15
	MULXQ 120(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 120(AX), R8
	MOVQ  R8, 120(AX)

	// Add back carry flags and return
	ADCXQ SI, BX
	ADOXQ SI, BX
	MOVQ  BX, c+24(FP)
	RET

// func addMulVVW1536(z *uint, x *uint, y uint) (c uint)
// Requires: ADX, BMI2
TEXT ·addMulVVW1536(SB), $0-32
	CMPB ·supportADX+0(SB), $0x01
	JEQ  adx
	MOVQ z+0(FP), CX
	MOVQ x+8(FP), BX
	MOVQ y+16(FP), SI
	XORQ DI, DI

	// Iteration 0
	MOVQ (BX), AX
	MULQ SI
	ADDQ (CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, (CX)

	// Iteration 1
	MOVQ 8(BX), AX
	MULQ SI
	ADDQ 8(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 8(CX)

	// Iteration 2
	MOVQ 16(BX), AX
	MULQ SI
	ADDQ 16(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 16(CX)

	// Iteration 3
	MOVQ 24(BX), AX
	MULQ SI
	ADDQ 24(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 24(CX)

	// Iteration 4
	MOVQ 32(BX), AX
	MULQ SI
	ADDQ 32(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 32(CX)

	// Iteration 5
	MOVQ 40(BX), AX
	MULQ SI
	ADDQ 40(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 40(CX)

	// Iteration 6
	MOVQ 48(BX), AX
	MULQ SI
	ADDQ 48(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 48(CX)

	// Iteration 7
	MOVQ 56(BX), AX
	MULQ SI
	ADDQ 56(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 56(CX)

	// Iteration 8
	MOVQ 64(BX), AX
	MULQ SI
	ADDQ 64(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 64(CX)

	// Iteration 9
	MOVQ 72(BX), AX
	MULQ SI
	ADDQ 72(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 72(CX)

	// Iteration 10
	MOVQ 80(BX), AX
	MULQ SI
	ADDQ 80(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 80(CX)

	// Iteration 11
	MOVQ 88(BX), AX
	MULQ SI
	ADDQ 88(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 88(CX)

	// Iteration 12
	MOVQ 96(BX), AX
	MULQ SI
	ADDQ 96(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 96(CX)

	// Iteration 13
	MOVQ 104(BX), AX
	MULQ SI
	ADDQ 104(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 104(CX)

	// Iteration 14
	MOVQ 112(BX), AX
	MULQ SI
	ADDQ 112(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 112(CX)

	// Iteration 15
	MOVQ 120(BX), AX
	MULQ SI
	ADDQ 120(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 120(CX)

	// Iteration 16
	MOVQ 128(BX), AX
	MULQ SI
	ADDQ 128(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 128(CX)

	// Iteration 17
	MOVQ 136(BX), AX
	MULQ SI
	ADDQ 136(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 136(CX)

	// Iteration 18
	MOVQ 144(BX), AX
	MULQ SI
	ADDQ 144(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 144(CX)

	// Iteration 19
	MOVQ 152(BX), AX
	MULQ SI
	ADDQ 152(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 152(CX)

	// Iteration 20
	MOVQ 160(BX), AX
	MULQ SI
	ADDQ 160(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 160(CX)

	// Iteration 21
	MOVQ 168(BX), AX
	MULQ SI
	ADDQ 168(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 168(CX)

	// Iteration 22
	MOVQ 176(BX), AX
	MULQ SI
	ADDQ 176(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 176(CX)

	// Iteration 23
	MOVQ 184(BX), AX
	MULQ SI
	ADDQ 184(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 184(CX)
	MOVQ DI, c+24(FP)
	RET

adx:
	MOVQ z+0(FP), AX
	MOVQ x+8(FP), CX
	MOVQ y+16(FP), DX
	XORQ BX, BX
	XORQ SI, SI

	// Iteration 0
	MULXQ (CX), R8, DI
	ADCXQ BX, R8
	ADOXQ (AX), R8
	MOVQ  R8, (AX)

	// Iteration 1
	MULXQ 8(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 8(AX), R8
	MOVQ  R8, 8(AX)

	// Iteration 2
	MULXQ 16(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 16(AX), R8
	MOVQ  R8, 16(AX)

	// Iteration 3
	MULXQ 24(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 24(AX), R8
	MOVQ  R8, 24(AX)

	// Iteration 4
	MULXQ 32(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 32(AX), R8
	MOVQ  R8, 32(AX)

	// Iteration 5
	MULXQ 40(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 40(AX), R8
	MOVQ  R8, 40(AX)

	// Iteration 6
	MULXQ 48(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 48(AX), R8
	MOVQ  R8, 48(AX)

	// Iteration 7
	MULXQ 56(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 56(AX), R8
	MOVQ  R8, 56(AX)

	// Iteration 8
	MULXQ 64(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 64(AX), R8
	MOVQ  R8, 64(AX)

	// Iteration 9
	MULXQ 72(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 72(AX), R8
	MOVQ  R8, 72(AX)

	// Iteration 10
	MULXQ 80(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 80(AX), R8
	MOVQ  R8, 80(AX)

	// Iteration 11
	MULXQ 88(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 88(AX), R8
	MOVQ  R8, 88(AX)

	// Iteration 12
	MULXQ 96(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 96(AX), R8
	MOVQ  R8, 96(AX)

	// Iteration 13
	MULXQ 104(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 104(AX), R8
	MOVQ  R8, 104(AX)

	// Iteration 14
	MULXQ 112(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 112(AX), R8
	MOVQ  R8, 112(AX)

	// Iteration 15
	MULXQ 120(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 120(AX), R8
	MOVQ  R8, 120(AX)

	// Iteration 16
	MULXQ 128(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 128(AX), R8
	MOVQ  R8, 128(AX)

	// Iteration 17
	MULXQ 136(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 136(AX), R8
	MOVQ  R8, 136(AX)

	// Iteration 18
	MULXQ 144(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 144(AX), R8
	MOVQ  R8, 144(AX)

	// Iteration 19
	MULXQ 152(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 152(AX), R8
	MOVQ  R8, 152(AX)

	// Iteration 20
	MULXQ 160(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 160(AX), R8
	MOVQ  R8, 160(AX)

	// Iteration 21
	MULXQ 168(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 168(AX), R8
	MOVQ  R8, 168(AX)

	// Iteration 22
	MULXQ 176(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 176(AX), R8
	MOVQ  R8, 176(AX)

	// Iteration 23
	MULXQ 184(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 184(AX), R8
	MOVQ  R8, 184(AX)

	// Add back carry flags and return
	ADCXQ SI, BX
	ADOXQ SI, BX
	MOVQ  BX, c+24(FP)
	RET

// func addMulVVW2048(z *uint, x *uint, y uint) (c uint)
// Requires: ADX, BMI2
TEXT ·addMulVVW2048(SB), $0-32
	CMPB ·supportADX+0(SB), $0x01
	JEQ  adx
	MOVQ z+0(FP), CX
	MOVQ x+8(FP), BX
	MOVQ y+16(FP), SI
	XORQ DI, DI

	// Iteration 0
	MOVQ (BX), AX
	MULQ SI
	ADDQ (CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, (CX)

	// Iteration 1
	MOVQ 8(BX), AX
	MULQ SI
	ADDQ 8(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 8(CX)

	// Iteration 2
	MOVQ 16(BX), AX
	MULQ SI
	ADDQ 16(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 16(CX)

	// Iteration 3
	MOVQ 24(BX), AX
	MULQ SI
	ADDQ 24(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 24(CX)

	// Iteration 4
	MOVQ 32(BX), AX
	MULQ SI
	ADDQ 32(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 32(CX)

	// Iteration 5
	MOVQ 40(BX), AX
	MULQ SI
	ADDQ 40(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 40(CX)

	// Iteration 6
	MOVQ 48(BX), AX
	MULQ SI
	ADDQ 48(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 48(CX)

	// Iteration 7
	MOVQ 56(BX), AX
	MULQ SI
	ADDQ 56(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 56(CX)

	// Iteration 8
	MOVQ 64(BX), AX
	MULQ SI
	ADDQ 64(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 64(CX)

	// Iteration 9
	MOVQ 72(BX), AX
	MULQ SI
	ADDQ 72(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 72(CX)

	// Iteration 10
	MOVQ 80(BX), AX
	MULQ SI
	ADDQ 80(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 80(CX)

	// Iteration 11
	MOVQ 88(BX), AX
	MULQ SI
	ADDQ 88(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 88(CX)

	// Iteration 12
	MOVQ 96(BX), AX
	MULQ SI
	ADDQ 96(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 96(CX)

	// Iteration 13
	MOVQ 104(BX), AX
	MULQ SI
	ADDQ 104(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 104(CX)

	// Iteration 14
	MOVQ 112(BX), AX
	MULQ SI
	ADDQ 112(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 112(CX)

	// Iteration 15
	MOVQ 120(BX), AX
	MULQ SI
	ADDQ 120(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 120(CX)

	// Iteration 16
	MOVQ 128(BX), AX
	MULQ SI
	ADDQ 128(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 128(CX)

	// Iteration 17
	MOVQ 136(BX), AX
	MULQ SI
	ADDQ 136(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 136(CX)

	// Iteration 18
	MOVQ 144(BX), AX
	MULQ SI
	ADDQ 144(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 144(CX)

	// Iteration 19
	MOVQ 152(BX), AX
	MULQ SI
	ADDQ 152(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 152(CX)

	// Iteration 20
	MOVQ 160(BX), AX
	MULQ SI
	ADDQ 160(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 160(CX)

	// Iteration 21
	MOVQ 168(BX), AX
	MULQ SI
	ADDQ 168(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 168(CX)

	// Iteration 22
	MOVQ 176(BX), AX
	MULQ SI
	ADDQ 176(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 176(CX)

	// Iteration 23
	MOVQ 184(BX), AX
	MULQ SI
	ADDQ 184(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 184(CX)

	// Iteration 24
	MOVQ 192(BX), AX
	MULQ SI
	ADDQ 192(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 192(CX)

	// Iteration 25
	MOVQ 200(BX), AX
	MULQ SI
	ADDQ 200(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 200(CX)

	// Iteration 26
	MOVQ 208(BX), AX
	MULQ SI
	ADDQ 208(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 208(CX)

	// Iteration 27
	MOVQ 216(BX), AX
	MULQ SI
	ADDQ 216(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 216(CX)

	// Iteration 28
	MOVQ 224(BX), AX
	MULQ SI
	ADDQ 224(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 224(CX)

	// Iteration 29
	MOVQ 232(BX), AX
	MULQ SI
	ADDQ 232(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 232(CX)

	// Iteration 30
	MOVQ 240(BX), AX
	MULQ SI
	ADDQ 240(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 240(CX)

	// Iteration 31
	MOVQ 248(BX), AX
	MULQ SI
	ADDQ 248(CX), AX
	ADCQ $0x00, DX
	ADDQ DI, AX
	ADCQ $0x00, DX
	MOVQ DX, DI
	MOVQ AX, 248(CX)
	MOVQ DI, c+24(FP)
	RET

adx:
	MOVQ z+0(FP), AX
	MOVQ x+8(FP), CX
	MOVQ y+16(FP), DX
	XORQ BX, BX
	XORQ SI, SI

	// Iteration 0
	MULXQ (CX), R8, DI
	ADCXQ BX, R8
	ADOXQ (AX), R8
	MOVQ  R8, (AX)

	// Iteration 1
	MULXQ 8(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 8(AX), R8
	MOVQ  R8, 8(AX)

	// Iteration 2
	MULXQ 16(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 16(AX), R8
	MOVQ  R8, 16(AX)

	// Iteration 3
	MULXQ 24(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 24(AX), R8
	MOVQ  R8, 24(AX)

	// Iteration 4
	MULXQ 32(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 32(AX), R8
	MOVQ  R8, 32(AX)

	// Iteration 5
	MULXQ 40(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 40(AX), R8
	MOVQ  R8, 40(AX)

	// Iteration 6
	MULXQ 48(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 48(AX), R8
	MOVQ  R8, 48(AX)

	// Iteration 7
	MULXQ 56(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 56(AX), R8
	MOVQ  R8, 56(AX)

	// Iteration 8
	MULXQ 64(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 64(AX), R8
	MOVQ  R8, 64(AX)

	// Iteration 9
	MULXQ 72(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 72(AX), R8
	MOVQ  R8, 72(AX)

	// Iteration 10
	MULXQ 80(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 80(AX), R8
	MOVQ  R8, 80(AX)

	// Iteration 11
	MULXQ 88(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 88(AX), R8
	MOVQ  R8, 88(AX)

	// Iteration 12
	MULXQ 96(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 96(AX), R8
	MOVQ  R8, 96(AX)

	// Iteration 13
	MULXQ 104(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 104(AX), R8
	MOVQ  R8, 104(AX)

	// Iteration 14
	MULXQ 112(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 112(AX), R8
	MOVQ  R8, 112(AX)

	// Iteration 15
	MULXQ 120(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 120(AX), R8
	MOVQ  R8, 120(AX)

	// Iteration 16
	MULXQ 128(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 128(AX), R8
	MOVQ  R8, 128(AX)

	// Iteration 17
	MULXQ 136(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 136(AX), R8
	MOVQ  R8, 136(AX)

	// Iteration 18
	MULXQ 144(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 144(AX), R8
	MOVQ  R8, 144(AX)

	// Iteration 19
	MULXQ 152(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 152(AX), R8
	MOVQ  R8, 152(AX)

	// Iteration 20
	MULXQ 160(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 160(AX), R8
	MOVQ  R8, 160(AX)

	// Iteration 21
	MULXQ 168(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 168(AX), R8
	MOVQ  R8, 168(AX)

	// Iteration 22
	MULXQ 176(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 176(AX), R8
	MOVQ  R8, 176(AX)

	// Iteration 23
	MULXQ 184(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 184(AX), R8
	MOVQ  R8, 184(AX)

	// Iteration 24
	MULXQ 192(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 192(AX), R8
	MOVQ  R8, 192(AX)

	// Iteration 25
	MULXQ 200(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 200(AX), R8
	MOVQ  R8, 200(AX)

	// Iteration 26
	MULXQ 208(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 208(AX), R8
	MOVQ  R8, 208(AX)

	// Iteration 27
	MULXQ 216(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 216(AX), R8
	MOVQ  R8, 216(AX)

	// Iteration 28
	MULXQ 224(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 224(AX), R8
	MOVQ  R8, 224(AX)

	// Iteration 29
	MULXQ 232(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 232(AX), R8
	MOVQ  R8, 232(AX)

	// Iteration 30
	MULXQ 240(CX), R8, DI
	ADCXQ BX, R8
	ADOXQ 240(AX), R8
	MOVQ  R8, 240(AX)

	// Iteration 31
	MULXQ 248(CX), R8, BX
	ADCXQ DI, R8
	ADOXQ 248(AX), R8
	MOVQ  R8, 248(AX)

	// Add back carry flags and return
	ADCXQ SI, BX
	ADOXQ SI, BX
	MOVQ  BX, c+24(FP)
	RET
