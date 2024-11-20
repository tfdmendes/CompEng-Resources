	.data
	.eqv SIZE, 20
s0:	.asciiz "Introduza uma string: "
arr:	.space 21		# Reserva 21 bytes na memória
	.text
	.globl main
# MAPA DE REGISTOS
# $t0: p = &arr[0]
# $t1: *p

main:					# void main(void){
	li	$v0, 4
	la	$a0, s0	
	syscall			#	print_string(s0);
	li	$v0, 8
	la	$a0, arr	
	li	$a1, SIZE
	syscall			#	read_string(arr, SIZE);
	la	$t0, arr		#	p = str;
while:				# 	while(1){
	lb 	$t1, 0($t0) 	# 		*p
	beq 	$t1, '\0', endw	# 		if(*p == '\0') break;
	addi 	$t1, $t1, -0x20	# 		*p -= 'a' + 'A'
	sb	$t0, 0($t1)
	addiu	$t0, $t0, 1 	# 		p++;
	j 	while
endw:					# 	}
	li 	$v0, 4		#
	la 	$a0, arr		#	
	syscall 			# 	print_string(str);
	jr	$ra 			# }