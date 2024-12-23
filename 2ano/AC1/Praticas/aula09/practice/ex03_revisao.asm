	.data
	.eqv SIZE,10
db:	.double 0.0
a: 	.space 	80 		# static double a[10] 	8*10
	.text
	.globl main

######## MAIN ########
# MAPA DE REGISTOS
# $t0 		i
# $t1 		i*8
# $t2 		&a[0]
# $t3 		&a[i]



main:					# int main(void){
	addiu 	$sp, $sp, -4 
	sw 	$ra, 0($sp) 		# 	prologo

	li 	$t0, 1 			# 	
mainfor:				#	for(; i < SIZE; i++){
	bge 	$t0, SIZE, mainendfor 	# 	
	sll 	$t1, $t0, 3
	la 	$t2, a 			# 		&a[0];
	addu 	$t3, $t2, $t1		# 		&a[i];

	li 	$v0, 7
	syscall
	s.d 	$f0, 0($t3) 		# 		a[i] = read_double();

	addiu 	$t0, $t0, 1 		# 		i++;
	j 	mainfor 	
mainendfor: 				# 	}

	la 	$a0, a 
	li 	$a1, SIZE
	jal 	average

	li 	$v0, 3
	mov.d 	$f12, $f0 
	syscall 			# 	print_double (average (a, SIZE));

	li 	$v0, 0 			# 	return 0;


	lw 	$ra, 0($sp)
	addiu 	$sp, $sp, 4 		# 	epilogo
	jr 	$ra 			# }



######## AVERAGE ########
# MAPA DE REGISTOS
# $t0 		i
# $a0 		&array
# $t1 		i*8
# $t2 		&array[i]

# $f0 		sum
# $f2 		(double) n

average:				# double average(double *array, int n){
	addiu 	$t0, $a1, -1  		#	int i = n-1
	la 	$t1, db 
	l.d 	$f0, 0($t1) 		# 	double sum = 0.0;

foravg:					#	for(; i >= 0; i--){
	move 	$t2, $a0 
	blt 	$t0, 0, endforavg 	# 	
	sll 	$t1, $t0, 3 		# 		i*8
	addu 	$t2, $t2, $t1 		# 		&array[i];

	l.d 	$f2, 0($t2) 		#		*(array[i]);
	add.d 	$f0, $f0, $f2 		# 		sum += array[i]

	addiu 	$t0, $t0, -1  		# 		i--;
	j 	foravg
endforavg:				# 	}
	
	mtc1 	$a1, $f2
	cvt.d.w $f2, $f2 		# 	(double) n 
	div.d 	$f0, $f0, $f2 		# 	return sum / (double) n;

	jr 	$ra 			# }
