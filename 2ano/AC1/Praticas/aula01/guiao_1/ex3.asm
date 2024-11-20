	.data
	.text
	.globl main	
main:				# OBJETIVO: y = 2x-8
	ori $v0, $0, 5		# chamada ao syscall "read_int(void)"
	syscall			# chama a syscall
	or $t0, $0, $v0		#$ $t0 = x (valor lido de $v0)
	
	ori $t2, $0, 8		# $t2 = 8
	add $t1, $t0, $t0	# $t1 = x + x = 2x
	sub $t1, $t1, $t2	# $t1 = 2x (t1) - 8 (t2)
	
	or $a0, $0, $t1		# Atribuir a $a0 o valor de y ($t1)
	ori $v0, $0, 1		# chamada ao syscall "print_char"
	syscall
	
	ori $v0, $0, 34		# chamada ao syscall "print_int16()"
	syscall
	
	jr $ra
	
	