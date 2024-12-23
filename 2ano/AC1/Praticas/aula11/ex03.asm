####################################################################################
# 	Name 	Alignmn Size 	Offset
# char a1[14] 	1 	14 	0
# int i 	4 	4 	14->16
# double g 	8 	8 	20->24
# char a2[17] 	1 	17 	32
# xyz 		8 	49->56


	.data
	.eqv a1, 0
	.eqv i, 16
	.eqv g, 24
	.eqv a2, 32

xyz: 	.asciiz "Str_1"
	.space 8
	.word 2023
	.double 2.718281
	.asciiz "Str_2"
	.space 11
	.space 7

flt: 	.double 0.35

	.text
	.globl main

# MAPA DE REGISTOS
# $f0 		p->g
# $f2 		(double) p->i

# $t0 		&p
# $t1 		p->i

f2: 				# double f2 (xyz *p){
	move 	$t0, $a0 

	l.d 	$f0, g($t0) 	# p->g

	lw 	$t1, i($t0) 	# p->i
	mtc1 	$t1, $f2 	# 
	cvt.d.w $f2, $f2 	# (double) p->i

	mul.d 	$f0, $f0, $f2 	# p->g * (double)p->i

	la 	$t0, flt
	l.d 	$f4, 0($t0)
	div.d 	$f0, $f0, $f4 	# p->g * (double)p->i / 0,35

	jr 	$ra

main: 				# int main(void){
	addiu 	$sp, $sp, -4
	sw 	$ra, 0($sp)

	la 	$a0, xyz
	jal 	f2

	li 	$v0, 3
	mov.s 	$f12, $f0
	syscall

	li 	$v0, 0 		# 	return 0;

	lw 	$ra, 0($sp)
	addiu 	$sp, $sp, 4

	jr 	$ra 


