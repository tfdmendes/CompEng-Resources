	.data
arr:	.double 5.0, 9.0, 32.0, 0.0, 100.0
	.text
	.globl main
# MAPA DE REGISTOS
# ft 	$f12
# 5.0 	$f2
# 9.0 	$f4
# 32.0 	$f6
# 5.0 / 9.0 $f8

f2c:				# double f2c(double ft)
	la 	$t0, arr 	# 	

	l.d 	$f2, 0($t0) 	# 	$f2 = 5.0
	l.d 	$f4, 8($t0) 	# 	$f4 = 9.0
	l.d 	$f6, 16($t0) 	# 	$f6 = 32.0

	sub.d 	$f0, $f12, $f6 	# 	ft - 32.0
	div.d 	$f8, $f2, $f4 	# 	5.0/9.0
	mul.d 	$f0, $f0, $f8 	# 	5.0/9.0 * (ft-32.0)
	jr 	$ra 		# 	return ^

####### MAIN #######
# MAPA DE REGISTOS
# ft 		$f4
# ct 		$f2

main:				# int main (void){
	addiu 	$sp, $sp, -4
	sw 	$ra, 0($sp) 	# 	prologo

	la 	$t0, arr
	l.d 	$f2, 24($t0) 	# 	$f2 = ct = 0.0
	
mainwhile:			#	while(ct <= 100.0)
	la 	$t0, arr
	l.d 	$f6, 32($t0) 	# 	$f4 = 100.0
	c.le.d 	$f2, $f4
	bc1f 	mainendwhile 	

	li 	$v0, 7
	syscall 	
	mov.d 	$f4, $f0 	# 	$f4 = ft = read_double();

	mov.d 	$f12, $f4 	# 
	jal 	f2c 

	mov.d 	$f2, $f0
	li 	$v0, 3 
	mov.d 	$f12, $f0
	syscall 		# 	print_double(ct)

	j 	mainwhile
mainendwhile:

	li 	$v0, 0 
	
	lw 	$ra, 0($sp) 	# 	prologo 	
	addiu 	$sp, $sp, 4
	jr 	$ra 
