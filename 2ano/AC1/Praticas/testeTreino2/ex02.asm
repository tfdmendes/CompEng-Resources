	.data
flt: 	.float -1.0, 1.0, 0.0
	.text
	.globl main

# *a é um endereço de um array de FLOATS 
# MAPA DE REGISTOS
# $a0->$t0 	&a[0]
# $a1->$t1 	n
# $t2 		k
# $t3 		k*2^2
# $t4 		&a[k]

# $f2 		oldg 
# $f4 		g
# $f6 		s
# $f8 		g - oldg
# $f10 		*(a[k])
# $f12 		t
# $f14 		g + a[k]

func2:					# float func2 (float *a, float t, int n){
	la 	$t0, flt
	l.s 	$f2, 0($t0) 		# 	float oldg = -1.0;
	l.s 	$f4, 4($t0) 		# 	float g = 1.0;
	l.s 	$f6, 8($t0) 		# 	float s = 0.0;


	move 	$t0, $a0
	move 	$t1, $a1 
	li 	$t2, 0 			# 	k = 0;

f2For: 					# 	for(; k < n; k++){
	bge 	$t2, $t1, f2EndFor 
	sll 	$t3, $t2, 2 		#		$t3 = k*2^2

f2While: 				# 		while( (g-oldg) > t){
	sub.s 	$f8, $f4, $f2 		# 			g - oldg
	c.le.s 	$f8, $f12 		#
	bc1t 	f2EndWhile 		#

	mov.s 	$f2, $f4 		# 			oldg = g;

	addiu 	$t4, $t0, $t3 		# 			&a[k]
	l.s 	$f10, 0($t4) 		# 			*(a[k])

	add.s  	$f14, $f4, $f10 	# 			g + a[k];
	div.s 	$f4, $f14, $f12 	# 			g = (g + a[k]) / t;

	j 	f2While
f2EndWhile: 				# 		}
	
	add.s 	$f6, $f6, $f4 		# 		s = s + g;
	addiu 	$t4, $t0, $t3 		# 		&a[k]
	s.s 	$f4, 0($t4) 		# 		a[k] = g

	addiu 	$t2, $t2, 1 		# 		k++
	j 	f2For 			# 	
f2EndFor: 				# 	}

	mtc1 	$t1, $f0 
	cvt.s.w $f0, $f0
	div.s 	$f0, $f6, $f0 		# 	return s / (float) n

	jr 	$ra 			# }

