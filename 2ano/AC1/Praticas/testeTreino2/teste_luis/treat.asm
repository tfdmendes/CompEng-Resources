	.data
	.text
	.globl main
# MAPA DE REGISTOS
# $a0->$s0 	&array[0]
# $a1->$s1 	low
# $a2->$s2  	high
# $s3 		i
# $s4 		p
# $s5 		npr


treat:					# int treat (int* array, int low, int high){
	addiu 	$sp, $sp, -28  		# 	prologo
	sw 	$ra, 0($sp)
	sw 	$s0, 4($sp)
	sw 	$s1, 8($sp)
	sw 	$s2, 12($sp)
	sw 	$s3, 16($sp)
	sw 	$s4, 20($sp)
	sw 	$s5, 24($sp)

	move 	$s0, $a0
	move 	$s1, $a1
	move 	$s2, $a2 
	move 	$s4, $a0

	addi 	$s3, $s1, 1 		# 	i = low + 1;
	li 	$s5, 0 			# 	npr = 0;
treat_for:				#  	for(; i < high; i++){
	bge 	$s3, $s2, treat_endfor 
	move 	$a0, $s3 
	jal 	checkp
treat_if: 				# 
	bne 	$v0, 1, treat_endif 	# 	if(checkp(i) == 1){
	sw 	$s3, 0($s0) 		# 		*array = i;
	addiu 	$s0, $s0, 4 		#		array++;
	addi 	$s5, $s5, 1 		# 		npr++;
treat_endif: 				# 	}
	addi 	$s3, $s3, 1 		# 		i++
	j 	treat_for 
treat_endfor:

	sll 	$t0, $s5, 2 		# 	npr*4
	addu 	$t1, $s4, $t0 		# 	(p+npr)
	sw 	$s5, 0($t1) 		# 	*(p + npr) = npr
	move 	$v0, $s5 		# 	return npr;


	lw 	$ra, 0($sp)
	lw 	$s0, 4($sp)
	lw 	$s1, 8($sp)
	lw 	$s2, 12($sp)
	lw 	$s3, 16($sp)
	lw 	$s4, 20($sp)
	lw 	$s5, 24($sp)
	addiu 	$sp, $sp, 28  		# 	epilogo

	jr 	$ra