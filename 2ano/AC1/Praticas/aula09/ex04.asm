	.data
k0:	.double	0.0
array:	.space 80	# 8 * SIZE
	.eqv SIZE, 10
	.text
	.globl main

# MAPA DE REGISTOS
# $t0 		*p
# $t1 		n
# $t2 		(n-1)*8
# $t3 		u

# $f0 		max 
# $f2 		*p

max: 					# double max (double *p, unsigned int n){
	move 	$t0, $a0 		# 	*p 
	move 	$t1, $a1 		# 	n

	addiu 	$t1, $t1, -1 		#  	n-1 
	sll 	$t2, $t1, 3 		# 	(n-1)*8 

	addu 	$t3, $t2, $t0 		# 	u = p+n-1

	l.d 	$f0, 0($t3) 		# 	max = *p
	addiu 	$t0, $t0, 8 		# 	p++;
maxfor: 				# 	for(; p <= u; p++){
	bgt 	$t0, $t3, maxendfor

	l.d 	$f2, 0($t0) 		# 	*p
maxif: 					# 	if(*p > max)
	c.le.d 	$f2, $f0  		# 
	bc1t 	maxendif 

	mov.d 	$f0, $f2 		# 		max = *p;
maxendif: 				# 	}
	addiu 	$t0, $t0, 8 		# 		p++;
	j 	maxfor 
maxendfor:				# 	} 
	
	jr 	$ra 


# MAPA DE REGISTOS
# $a0: &array[0]
# $a1: n
# $t0: i
#
# $f0: sum
average:				# double average(double* array, int n){
	addi 	$t0, $a1, -1		#	int i = n-1;
	la 	$t1, k0
	l.d	$f0, 0($t1)		#	double sum = 0.0;
foravg:					#	for(; i >= 0; i--){
	blt	$t0, $0, endforavg	#
	sll	$t3, $t0, 3		# 		i*8
	addu	$t1, $a0, $t3		#		$t1 = array[i]
	l.d	$f2, 0($t1)		#		$f2 = *array[i]
	add.d	$f0, $f0, $f2 		# 		sum += *array[i]
	addi 	$t0, $t0, -1 		# 		i--;
	j	foravg
endforavg:				#	}
	mtc1	$a1, $f4		#	
	cvt.d.w $f4, $f4 		# 	(double) n
	div.d 	$f0, $f0, $f4 		# 	sum / (double) n
	jr 	$ra 			#

#################

# MAPA DE REGISTOS
# $t0: i
# $t1: &array[0]
# $t2: &array[i]
# $t3: *array[i]

main:					# int m	ain (void) {		
	addiu	$sp, $sp, -4		#
	sw	$ra, 0($sp)		#	Prologo, salvaguarda de $ra
	li	$t0, 0			#	i = 0
for:					#	for(; i < SIZE; i++){
	bge	$t0, 10, endfor		#
	
	la	$t1, array		#		&array[0];
	sll 	$t3, $t0, 3		# 		i * 8
	addu	$t2, $t1, $t3		#		&array[i];
	li	$v0, 7
	syscall
	s.d	$f0, 0($t2)		#		a[i] = read_double();
	
	addi	$t0, $t0, 1		#		i++
	j 	for
endfor:					#	}
	la 	$a0, array		#		
	li	$a1, 10			#
	jal 	average			#	$f0 = average(a, SIZE)

	la 	$a0, array
	li 	$a1, 10 
	jal 	max 
	
	li 	$v0, 3
	mov.d	$f12, $f0
	syscall				#	print_double($f0);

	lw	$ra, 0($sp)		#
	addiu 	$sp, $sp, 4		#
	li	$v0, 0
	jr 	$ra			# return 0; }
