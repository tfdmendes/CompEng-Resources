	.data 
k0:	.double 0.0, 5.0, 9.0, 32.0, 100.0
	.text
	.globl main
	
f2c:
	la 	$t0, k0		#
	l.d	$f0, 8($t0)	# $f0 =  5.0
	l.d	$f2, 16($t0)	# $f2 = 9.0
	l.d	$f4, 24($t0) 	# $f4 = 32.0
	
	div.d	$f0, $f0, $f2 	# $f0 = 5.0/9.0
	sub.d 	$f6, $f12, $f4 	# $f6 = ft - 32.0
	
	mul.d 	$f0, $f0, $f6 	# $f0 = 5.0/9.0 * (ft-32.0);
	
	jr 	$ra		# return $f0 
	
############################################################
# MAPA DE REGISTOS
# $f0: ct
# $f4: ft	

main:				# int main(void){
	addiu 	$sp, $sp, -4
	sw 	$ra, 0($sp)	# 	Epilogo, salvaguardar o $ra
	
	la 	$t0, k0		#
				# 	ft nao e igual a 0!
	l.d	$f0, 0($t0)	# 	ct = 0.0
	l.d	$f2, 32($t0)	#	$f2 = 100.0
while:				# 	while(){
	c.le.d	$f0, $f2 	#		
	bc1f 	endw 		#		if(ct > 100.0) break;
	li 	$v0, 7
	syscall 
	mov.d 	$f4, $f0	#		ft = read_double();
	mov.d 	$f12, $f4 	# 		
	jal 	f2c		# 		ct = f2c(ft);
	li 	$v0, 3
	mov.d 	$f12, $f0
	syscall 		#		print_double(ct);
	j	while
endw:				#	}
	lw 	$ra, 0($sp)	# 	Prologo, carregar o $ra
	addiu 	$sp, $sp, 4	
	li	$v0, 0
	jr 	$ra		# return 0;}