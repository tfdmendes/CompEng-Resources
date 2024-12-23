########################################################################
#	Name			Alignm	Size	Offset			
# unsigned int id_number	4	4	0
# char first_name[18]		1 	18 	4
# char last_name[15] 		1 	15 	22
# float grade 			4 	4 	37->40
# 	struct 			4 	41->44 	

	.data
	.eqv 	MAX_STUDENTS, 4
	.eqv 	id_number, 0
	.eqv 	first_name, 4
	.eqv 	last_name, 22
	.eqv 	grade, 40
starr:	.space 176 			# Reserva 4*44 para o array de structs
media: 	.space 4
fltarr:	.float -20.0, 0.0 
s0:	.asciiz "\nMedia:"
s1:	.asciiz "N. Mec: "
s2: 	.asciiz "Primeiro Nome: "
s3: 	.asciiz "Ultimo Nome: "
s4: 	.asciiz "Nota: "
	.text
	.globl main

main: 					# int main(void){
	addiu 	$sp, $sp, -4 
	sw 	$ra, 0($sp)

	la 	$a0, starr 
	li 	$a1, MAX_STUDENTS
	jal 	readdata 		# 	read_data(starr, MAX_STUDENTS);

	la 	$a0, starr
	li 	$a1, MAX_STUDENTS 	
	la 	$a2, media 		
	jal 	max 			# 	max(starray, MAX_STUDENTS, &media);

	move 	$t1, $v0 		# 	pmax = max(starray, MAX_STUDENTS, &media);

	li 	$v0, 4
	la 	$a0, s0 
	syscall 			# 	print_string("\nMedia: ");

	li 	$v0, 2
	la 	$t0, media 
	l.s 	$f12, 0($t0)
	syscall 			# 	print_float(media);

	move 	$a0, $t1
	jal 	printstudent

	li 	$v0, 0 			#	return 0;

	lw 	$ra, 0($sp)
	addiu 	$sp, $sp, 4 

	jr 	$ra 



################ READ_DATA ################
# MAPA DE REGISTOS
# $t0 		i
# $a0 		*st 	-> $t1
# $a1 		ns 	-> $t2
# $t3 		i*44
# $t4 		*st[i]

readdata: 				# void read_data(student *st, int ns){
	li 	$t0,0 			# 	i = 0;
	move 	$t1, $a0 		# 	*st 
	move 	$t2, $a1 		# 	ns 

readtfor: 				# 	for(; i < ns; i++){
	bge 	$t0, $t2, readdtendfor 	#
	mul 	$t3, $t0, 44  		#		i*44

	addu 	$t4, $t1, $t3 		# 		*st[i] 

	li 	$v0, 4
	la 	$a0, s1
	syscall 			# 		print_string("N.Mec: ");

	li 	$v0, 5
	syscall 			# 		read_int();
	sw 	$v0, 0($t4) 		# 		st[i].id_number = read_int();
# Primeiro Nome

	li 	$v0, 4
	la 	$a0, s2
	syscall 			# 		print_string("Primeiro Nome: ");

	li 	$v0, 8
	addiu 	$a0, $t4, 4
	li 	$a1, 17
	syscall 			# 		read_string(st[i].first_name, 17);
# Ultimo Nome

	li  	$v0, 4
	la 	$a0, s3 
	syscall 			# 		print_string("Ultimo Nome: ");


	li 	$v0, 8
	addiu 	$a0, $t4, last_name	
	li 	$a1, 14
	syscall 			# 		read_string(st[i].last_name, 14);

# Nota
	li 	$v0, 4
	la 	$a0, s4
	syscall 			# 		print_string("Nota: ");

	li 	$v0, 6
	syscall 			# 		read_float();
	s.s 	$f0, grade($t4) 	# 		st[i].grade = read_float();

	addiu 	$t0, $t0, 1 		# 		i++;
	j 	readtfor
readdtendfor:
	jr 	$ra 			# }




########## MAX ##########
# max_grade 	$f0
# sum 		$f2
# p->grade 	$f4
# (float)ns 	$f6
# sum / (float)ns $f8
# p 		$t0
# st + ns 	$t1
# pmax 		$t2 

max: 					# student *max (student *st, int ns, float *media){
	la 	$t0, fltarr
	l.s 	$f0, 0($t0) 		# 	max_grade = $f0 = -20.0
	l.s 	$f2, 4($t0) 		#  	sum = $f2 = 0.0

	move 	$t0, $a0 		# 	p = st
	mul 	$t1, $a1, 44 		#
	addu 	$t1, $t1, $a0 		# 	st + ns 
maxfor: 				# 	for(p = st, p < (st+ns); p++){
	bge 	$t0, $t1, maxendfor

	l.s 	$f4, grade($t0) 	# 		p->grade;
	add.s 	$f2, $f2, $f4 		# 		sum += p->grade;

maxif: 					# 		if(p->grade > max_grade){
	c.le.s 	$f4, $f0 
	bc1t 	maxendif 		
	mov.s 	$f0, $f4 		# 		max_grade = p->grade;
	move 	$t2, $t0		#		pmax = p;
maxendif:				# 		}
	addiu 	$t0, $t0, 44 		# 		p++;
	j 	maxfor 			# 	}
maxendfor:
	mtc1 	$a1, $f6
	cvt.s.w $f6, $f6 		# 	(float)ns;
	div.s 	$f2, $f2, $f6 		# 	sum = sum / (float)ns;
	s.s 	$f2, 0($a2) 		# 	media = sum / (float)ns;
	jr 	$ra


############## PRINT_STUDENT ##############
printstudent: 				# void print_student(student *p){
	move 	$t0, $a0


	li 	$v0, 1 			#
	lw 	$a0, 0($t0) 
	syscall 			# 	print_intu10(p->id_number);

	addiu 	$t0, $t0, 4 		#
	lw 	$a0, 0($t0)
	li 	$v0, 4
	syscall 			# 	print_string(p->first_name);

	addiu 	$t0, $t0, 18
	lw 	$a0, 0($t0)
	li 	$v0, 4
	syscall				# 	print_string(p->last_name);

	addiu 	$t0, $t0, 15
	li 	$v0, 2
	l.s 	$f12, 0($t0)
	syscall 			# 	print_float(p->grade);








