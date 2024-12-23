############
# typedef struct
# {				Align 	Size 	Offset
#	int acc 		4 	4 	0
#	unsigned char nm 	1 	1 	4
# 	double grade 		8 	8 	5->8
# 	char quest[14] 		1 	14 	16
# 	int cq 			4 	4 	30->32
# } t_kvd 			8 	36->40


	.data
	.eqv acc, 0
	.eqv nm, 4
	.eqv grade, 8
	.eqv quest, 16
	.eqv cq, 32 

t_kvd: 	.space 40 		
db: 	.double 0.0	
	.text
	.globl main
# MAPA DE REGISTOS
# $a0 		nv
# $a1 		&pt
# $t0 		i 
# $t1 		j
# $t2 		pt->nm
# $t3		&(pt->quest[j])
# $t4 		*(pt->quest[j])
# $t5 		(int) (sum / pt->grade)

# $f0		return 
# $f2 		sum 
# $f4 		(double) pt->quest[j]
# $f6 		pt->grade
# $f8 		(sum / pt->grade) 


func3: 					# double func3 (int nv; t_kvd *pt){
	la 	$t0, db
	l.d 	$f2, 0($t0) 		# 	double sum = 0.0;
	li 	$t0, 0 			# 	i = 0;
f3_for:					# 	for(i = 0; i < nv; i++; pt++){
	bge 	$t0, $a0, f3_endfor
	li 	$t1, 0 			# 		j = 0;
f3_do: 					# 		do{

	addiu 	$t3, $a1, quest 	# 			&(pt-> quest[0])
	addiu 	$t3, $t3, $t1 		# 			&(pt-> quest[j])

	lbu 	$t4, 0($t3) 		# 			
	mtc1 	$t4, $f4   		#
	cvt.d.w $f4, $f4 		# 			(double) pt-> quest[j]
	add.d 	$f2, $f2, $f4 		# 			sum += (double) pt-> quest[j]
	addiu 	$t1, $t1, 1 		# 			j++;
	lb 	$t2, nm($a1) 		# 			pt->nm
	bge 	$t1, $t2, f3_while 	# 
	j 	f3_do
f3_while:				# 		}while( j < pt->nm)
	
	l.d 	$f6, grade($a1) 	# 		pt->grade
	div.d 	$f8, $f2, $f6 		# 		sum / pt->grade
	cvt.w.d $f8, $f8 		# 		(int) (sum / pt->grade)
	mfc1 	$t5, $f8 		# 
	sw 	$t5, acc($a1) 		# 		pt->acc = (int) (sum / pt->grade) 

	addiu 	$t0, $t0, 1 		# 		i++;
	addiu 	$a1, $a1, 40 		# 		pt++;
	j 	f3_for
f3_endfor: 				# 	}
	
	lw 	$t5, cq($a1) 		# 		pt->cq
	mtc1 	$t5, $f8
	cvt.d.w $f8, $f8 		# 		(double) pt->cq
	l.d   	$f6, grade($a1)   	# 		pt->grade
	mul.d 	$f0, $f6, $f8		# 		pt->grade * (double) pt->cq

	jr 	$ra 
