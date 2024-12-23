################################
# 	Name	Alignmn 	Size 	Offset
# char a1[10] 	1 		10 	0
# double g 	8 		8 	10->16
# int a2[2] 	4 		8 	24
# char v 	1 		1 	32
# float k 	4 		4 	33->36
# uvw		8		40

	.data
	.eqv a1, 0
	.eqv g, 16
	.eqv a2_0, 24
	.eqv a2_1, 28
	.eqv v, 32
	.eqv k, 36

	#static uvw s1 = {...}
uvw:	.asciiz "St1"
	.space 6
	.double 3.141592
	.word 291, 756
	.asciiz "X" 
	.float 	1.983
	.text
	.globl main

###### MAPA DE REGISTOS ######
# $t0 		&uvw

# $f0 		return value
# $f2 		s1.g 
# $f4 		s1.a2[1]
# $f6 		s1.k

f1: 				# float f1(void)
	la 	$t0, uvw
	l.d 	$f2, g($t0) 	# 	s1.g

	lw 	$t1, a2_1($t0) 	#
	mtc1 	$t1, $f4
	cvt.d.w $f4, $f4 	# 	(double) s1.a2[1]


	l.s 	$f6, k($t0)
	cvt.d.s $f6, $f6 	# 	(double) s1.k

	mul.d 	$f0, $f2, $f4
	div.d 	$f0, $f0, $f6 	

	cvt.s.d $f0, $f0

	jr 	$ra 		# }


main: 				# int main(void){

	addiu 	$sp, $sp, -4
	sw 	$ra, 0($sp) 	# 	prologo


	jal 	f1
	li 	$v0, 2
	mov.s 	$f12, $f0
	syscall 

	lw 	$ra, 0($sp)
	addiu 	$sp, $sp, 4
	jr 	$ra


