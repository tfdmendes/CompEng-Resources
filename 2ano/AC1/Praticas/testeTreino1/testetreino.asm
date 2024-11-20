	.data
val:	.word	8, 4, 15, -1987, 327,-9, 27, 16
s0:	.asciiz "Result is: "
	.eqv SIZE, 8
	.text
	.globl main

# MAPA DE REGISTOS
# $t0: i
# $t1: v = val[i]
# $t2: &val[0]
# $t3: &val[i]
# $t4: i*4
# $t5: SIZE/2
# $t6: val[i+SIZE/2]

main:					# void main(void){
	li	$t0, 0		#	i = 0;
	li	$t5, SIZE		#	SIZE = 8;
	srl	$t5, $t5, 1		#	SIZE / 2;
	sll 	$t5, $t5, 2 	# 	SIZE * 4
while1:				# 	do{
	la	$t2, val		#		&val[0];
	sll	$t4, $t0, 2 	# 		i*4
	addu 	$t3, $t2, $t4 	# 		&val[i];
	addu 	$t6, $t3, $t5 	#		&val[i+SIZE/2]

	lw	$t1, 0($t3)		# 		v = val[i]
	lw	$t7, 0($t6)
	sw	$t7 ,0($t3)
	sw	$t1, 0($t6)

	addi	$t0, $t0, 1 	# 		++i
	bge	$t0, 4, endw1 	#
	j 	while1	
endw1:				# 	} while(i < (SIZE/2));
	li	$v0, 4
	la	$a0, s0
	syscall 			# 	print_string("Result is: ");
	li	$t0, 0 		# 	i = 0;
while2:				# 	do{
	la	$t2, val		#		&val[0];
	sll	$t4, $t0, 2 	# 		temp = i*4
	addu 	$t3, $t2, $t4 	# 		&val[i];
	lw 	$t1, 0($t3) 	# 		val[i]

	li	$v0, 1	
	move 	$a0, $t1
	syscall 			# 		print_int10( val[i++] );
	addiu $t0, $t0, 1 	# 		Primeiro é i e depois é que atualiza o valor
	li 	$v0, 11
	li 	$a0, ','
	syscall			#		print_char(',');

	bge 	$t0, SIZE, endw2 	# 
	j 	while2		#
endw2:				# 	} while(i < SIZE);
	jr	$ra			# }