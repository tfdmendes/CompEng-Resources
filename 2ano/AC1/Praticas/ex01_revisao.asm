	.data
arr: 	.float 0.0, 2.59375
	.text
	.globl main

# MAPA DE REGISTOS
# res 		$f0
# val 		$t0
# (float)val 	$f2
# 2.59375 / 0.0	$f4

main:				# int main(void)

do:				#	do{
	li 	$v0, 5		#		val = read_int();
	syscall 				
	move 	$t0, $v0

	mtc1 	$t0, $f2 	# 		$t0 -> $f2
	cvt.s.w $f2, $f2 	# 		float(val);

	la 	$t1, arr
	l.s 	$f4, 4($t1)	#

	mul.s 	$f0, $f2, $f4	#		res = (float)val ? 2.59375

	li 	$v0, 2
	mov.s 	$f12, $f0
	syscall 		# 		print_float(res);

	l.s 	$f4, 0($t1) 	# 		

	c.eq.s 	$f0, $f4 	# 		
	bc1t 	while
	j 	do 		#
while:				#	} while( res != 0.0 );

	li 	$v0, 0 		# 	return 0;
	jr 	$ra
