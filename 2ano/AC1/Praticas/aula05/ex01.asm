	.data
lista:	.space	20	#	static int lista[5]
str:	.asciiz "\n Introduza um numero: "
	.align 2
	.text
	.globl	main
# MAPA REGISTOS
# $t0:	i
# $t1:	&lista[0]
# $t2:	$lista[i]
	
main:						# void main(void){
	li	$t0, 0				# int i = 0;
for:						# for( i = 0; i < SIZE; i++){
	bge 	$t0, 5, endf			#
	li	$v0, 4				#
	la	$a0, str			#
	syscall					#	print_string(str);
	
	li 	$v0, 5				#
	syscall					#	$v0 = read_int()

	la	$t1, lista			# 	&lista[0]
	sll 	$t2, $t0, 2			#	$t2 = i*4
	addu 	$t2, $t2, $t1
	sw	$v0, 0($t2)
	addi 	$t0, $t0, 1			# 	i++
	j 	for				#		
endf:						#
	jr 	$ra				# }
