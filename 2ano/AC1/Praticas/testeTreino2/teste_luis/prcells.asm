############################################################
# typedef struct{ 	Alignm 	Size 	Offset
# 	char smp[17];	1 	17	0
#	double xpt; 	8	8	17->24
# 	int ns; 	4 	4 	32
# 	char id;  	1 	1 	36
# 	int sum; 	4 	4 	37->40
# } t_cell 		8 	44->48


	.data
	.eqv smp, 0
	.eqv xpt, 24
	.eqv ns, 32
	.eqv id, 36
	.eqv sum, 40

db: 	.double 1.0, 3.597
	.text
	.globl main

# MAPA DE REGISTOS
# $a0 		size
# $a1 		&tc[0]

# $t0 		i
# $t1 		i*48
# $t2 		&tc[i]
# $t3 		tc[i].ns
# $t4 		(int) result
# $t5 		db

# $f0		result
# $f2 		tmp
# $f4 		3.597
# $f6 		(double) tc[i].ns
# $f8 		(int) result

prcells: 			 		# double prcells (int size, t_cell *tc){
	la 	$t5, db 
	l.d 	$f0, 0($t0) 			#	result = 1.0;

	li 	$t0, 0 				# 	i = 0;
prcells_for: 					# 	for(; i < size; i++){
	bge 	$t0, $a0, prcells_endfor
	mul 	$t1, $t0, 48 			# 		i*48
	addiu 	$t2, $a1, $t1 			# 		&tc[i]

	la 	$t5, db 
	l.d 	$f4, 8($t5) 			# 		3.597

	lw 	$t3, ns($t2) 			# 		tc[i].ns
	mtc1 	$t3, $f6
	cvt.d.w $f6, $f6 			# 		(double) tc[i].ns
	div.d 	$f2, $f6, $f4 			# 		tmp = (double)tc[i].ns / 3.597;

	add.d 	$f0, $f0, $f2 			# 		sum += tmp;
	s.d 	$f2, xpt($t2) 			# 		tc[i].xpt = tmp;

	cvt.w.d $f8, $f0 			# 		(int) result
	mfc1 	$t4, $f8
	addiu 	$t4, $t4, -1 			# 		result -1;
	sw 	$t4, sum($t2)

	addiu 	$t0, $t0, 1 			# 		i++;
	j 	prcells_for
prcells_endfor: 				# 	}
	# $f0 já tem o result
	jr 	$ra  				# }

	
