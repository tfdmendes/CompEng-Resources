	.data
k1:	.float 2.59375
k2:	.float 0.0
	.text
	.globl main	
main:

do:
	li	$v0, 5 		#
	syscall 		# 
	move 	$t0, $v0 	# val = read_int();
	mtc1 	$t0, $f0 	# Move Register $t0, to Coprocessor $f0 of FPU
	cvt.s.w $f0, $f0 	# Convert Integer to float -> (float) val
	
	la 	$t0, k1
	
	l.s 	$f2, 0($t0)	# $f2 = 2.59375
	mul.s	$f0, $f0, $f2	# res = (float) val * 2.59375;
		 
	li 	$v0, 2		#
	mov.s 	$f12, $f0
	syscall 		# print_float(res);
	
	la 	$t0, k2
	
	l.s	$f2, 0($t0)	# $f2 = 0.0
	c.eq.s	$f2, $f0 	#
	bc1f	do	
while:
	li 	$v0, 0	
	jr 	$ra		# return 0;
