########################################################
# 	Name		Alignm 	Size 	Offset
# int id_number 	4 	4 	0
# char first_name[18] 	1 	18 	4
# char last_name[15] 	1 	15 	22
# float grade  		4 	4 	37->40
# } struct 		4 	44 


	.data
	.eqv id_number, 0
	.eqv first_name, 4
	.eqv last_name, 22
	.eqv grade, 40

st_arr: .space 176		#static student st_array[4] 4*44
	.align 2
media:	.space 4
flt: 	.float -20.0, 0.0

s0:	.asciiz "\nMedia"
s1: 	.asciiz "N. Mec: "
s2: 	.asciiz "Primeiro Nome: "
s3: 	.asciiz "Ultimo Nome: "
s4: 	.asciiz "Nota: "

# max retorna endereço de struct de student 


	.text
	.globl main

main: 				# int main(void){
	addiu 	$sp, $sp, -8 	# 	prologo
	sw 	$ra, 0($sp)	# 
	sw 	$s0, 4($sp) 	#

	la 	$a0, st_arr
	li 	$a1, 4
	jal 	read_data 	# 	read_data(st_array, max_STUDENTS)


	la 	$a0, st_arr 
	li 	$a1, 4
	la 	$a2, media
	jal 	max 		# 	max(st_array, max_STUDENTS, &media)
	move 	$s0, $v0 	# 	pmax 

	la 	$a0, s0
	li 	$v0, 4
	syscall 		# 	print_string("\nMedia");

	la 	$t0, media
	li 	$v0, 2
	l.s 	$f12, 0($t0) 	#
	syscall 		# 	print_float(media);

	move 	$a0, $s0
	jal 	print_student 	# 	print_student(pmax);

	li 	$v0, 0 		# 	return 0;


	lw 	$ra, 0($sp)	# 
	lw 	$s0, 4($sp) 	#
	addiu 	$sp, $sp, 8 	# 	prologo

	jr 	$ra



######## READ_DATA ########
# MAPA DE REGISTOS
# &st[0] 	$t0
# ns 		$t1
# i 		$t2
# i*44 		$t3
# &st[i] 	$t4

read_data: 				# void read_data (student *st, int ns){
	li 	$t2, 0 			# 	i=0;
	move 	$t0, $a0
	move 	$t1, $a1 

readdata_for: 				#  for(; i < ns; i++){
	bge 	$t2, $t1, readdata_endf
	mul 	$t3, $t2, 44
	addu 	$t4, $t3, $t0 		# 	&st[i]

# N MEC

	li 	$v0, 4
	la 	$a0, s1
	syscall 			# 	print_string("N Mec: ");

	li 	$v0, 5
	syscall
	lw 	$v0, id_number($t4) 	# 	st[i].id_number = read_int();

# PRIMEIRO NOME

	li 	$v0, 4
	la 	$a0, s2 
	syscall 			# 	print_string("Primeiro Nome: ");

	li 	$v0, 8
	addiu 	$t5, $t4, first_name
	move 	$a0, $t5 		# 	st[i].first_name
	li 	$a1, 17
	syscall 			# 	read_string(st[i].first_name, 17);

# ULTIMO NOME

	li 	$v0, 4
	la 	$a0, s3
	syscall 			# 	print_string("Ultimo Nome: ");

	li 	$v0, 8
	addiu 	$t5, $t4, last_name 	#
	move 	$a0, $t5 
	li 	$a1, 14 		#
	syscall 			# 	read_string(st[i].last_name, 14);

# NOTA
	li 	$v0, 4
	la 	$a0, s4
	syscall 			# 	print_string("Nota: ");

	li 	$v0, 6
	syscall 
	s.s 	$f0, grade($t4) 	# 	st[i].grade = read_float();

	addiu 	$t2, $t2, 1 		# 		i++;
	j 	readdata_for
readdata_endf:				#  }
	jr 	$ra 			# }


########## MAX ##########
# Retorna o endereço de uma struct student 
# MAPA DE REGISTOS 
# &st[0] 		$t0
# ns 			$t1
# &media 		$t2
# &p 			$t3
# &pmax 		$t4
# st + ns 		$t5

# max_grade 		$f0
# sum 			$f2
# p->grade 		$f4
# (float) ns 		$f6
# sum / (float) ns

max: 					# student* max (student *st, int ns, float *media)
	la 	$t7, flt
	l.s 	$f0, 0($t7) 		# 	float max_grade = -20.0
	l.s 	$f2, 4($t7) 		#	float sum = 0.0;

	move 	$t0, $a0
	move 	$t1, $a1
	move 	$t2, $a2

	move 	$t3, $a0 		# 	p = st
	mul 	$t5, $t1, 44 		# 	ns*44
	addu 	$t5, $t5, $t0 		# 	(st + ns)

maxFor:					# 	for(; p < (st + ns); p++){
	bge 	$t3, $t5, maxEndFor 	# 

	l.s 	$f4, grade,($t3) 	# 		p->grade
	add.s 	$f2, $f2, $f4 		# 		sum += p->grade;

maxIf: 					# 		if (p->grade > max_grade)
	c.le.s 	$f4, $f0
	bc1t 	maxEndIf 		

	mov.s 	$f0, $f4 		# 			max_graed = p->grade;
	move 	$t4, $t3 		# 			pmax = p;
maxEndIf:
	addiu 	$t3, $t3, 44 		# 		p++;
	j 	maxFor
maxEndFor:
	
	mtc1 	$t1, $f6 		# 	
	cvt.s.w $f6, $f6  		# 	(float)ns
	div.s 	$f8, $f2, $f6 		# 	sum / (float) ns;
	s.s 	$f8, 0($t2) 		# 	*media = sum/(float)ns;

	move 	$v0, $t4 		# 	return pmax;

	jr 	$ra 


############### PRINT STUDENT ###############
# MAPA DE REGISTOS
# *p 		$a0 -> $t0


print_student: 				# void print_student (student *p){
	move 	$t0, $a0

	li 	$v0, 1
	lw 	$a0, id_number($t0)  	# 	
	syscall 			#	print_intu10(p->id_number);

	li 	$v0, 4
	addiu 	$t1, $t0, first_name 	# 	
	move 	$a0, $t1
	syscall 			# 	print_string(p->first_name);

	li 	$v0, 4
	addiu 	$t1, $t0, last_name
	move 	$a0, $t1
	syscall 			# 	print_string(p->last_name);

	li 	$v0, 2
	l.s 	$f12, grade($t0) 	#
	syscall 			# 	print_float(p->grade);


	jr 	$ra 




