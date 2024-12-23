	.data
db: 	.double 0.0
	.text
	.globl main

# MAPA DE REGISTOS
# $a0 		&array[0]
# $a1 		n 
# $t0 		i 
# $t1 		i*8
# $t2 		&array[i]

# $f0 		aux 
# $f2 		sum
# $f4 		*array[i]
# $f6 		(double) n

# $f12 		thd 
# $f14 		val

proc: 					 # float proc(double* array, double thd, double val, int n){
	la 	$t0, db
	l.d 	$f0, 0($t0) 		# 	sum = 0.0
	li 	$t0, 0 			# 	i = 0;
proc_for: 				# 	for(i = 0; i < n; i++){
	bge 	$t0, $a1, proc_endfor
	sll 	$t1, $t0, 3 		# 		i*8;
	addu 	$t2, $a0, $t1 		# 		&array[i]

	l.d 	$f4, 0($t2) 		# 		array[i]
	add.d 	$f0, $f4, $f14 		# 		aux = array[i] + val;
proc_if: 				#
	c.le.d 	$f0, $f12 		# 		if(aux > thd){
	bc1t 	proc_else 
	s.d 	$f12, 0($t2) 		# 			array[i] = thd;
	add.d 	$f2, $f2, $f12 		# 			sum += thd;
	j 	proc_endif
proc_else: 				# 		} else {
	s.d 	$f0, 0($t2) 		# 			array[i] = aux;
	add.d 	$f2, $f2, $f0 		# 			sum += aux;
proc_endif:
	addiu 	$t0, $t0, 1 		# 		i++;
	j 	proc_for 		#
proc_endfor:  				# 	}
	mtc1 	$a1, $f6 		#
	cvt.d.w $f6, $f6 		# 	(double) n;
	div.d 	$f0, $f2, $f6 		# 	(sum / (double) n)
	cvt.s.d $f0, $f0 		# 	return (float) (sum / (double) n);
	jr 	$ra 