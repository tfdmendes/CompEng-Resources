	.data 
	.text
	.globl main
main:
	ori $t0, $0, 4		# $t0 (bin)
	srl $t2, $t0, 1		# $t0 >> 1
	xor $t1, $t0, $t2	# $t0 ^ ($t0 >> 1)
	jr $ra