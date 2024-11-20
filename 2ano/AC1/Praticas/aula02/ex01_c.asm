	.data
	.text
	.globl main
main:
	ori $t0, $0, 0x0F1E
	xori $t1, $t0, 0xFFFF
	jr $ra