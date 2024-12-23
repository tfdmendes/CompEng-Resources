	.data
k0:	.double  1.0, 0.0, 0.5
	.text
	.globl main
# MAPA DE REGISTOS



main:					# int main(void){
	addiu	$sp, $sp, -4
	sw	$ra, 0($sp)		# prologue, salvaguarda $ra

	li	$v0, 7
	syscall 			#
	mov.d 	$f12, $f0 		# 	val = $f12
	jal 	sqrt 			# 	result = sqrt(double val);
	li 	$v0, 3			#
	mov.d	$f12, $f0
	syscall 			# 	print_double(result);
	
	li 	$v0, 0 			# return 0;
	lw 	$ra, 0($sp)		# epilogo, salvaguarda $ra
	addiu 	$sp, $sp, 4
	
	jr 	$ra
	
	
###############################################
	
# MAPA DE REGISTOS
# val: $f12
# xn: $f0
# zero: $f2 
# aux: $f4
# temp: $f6
# 0.5: $f8

# i: $t0
sqrt:					# double sqrt(double val){
	la 	$t0, k0
	l.d	$f0, 0($t0) 		# 	$f0: xn = 1.0
	l.d	$f2, 8($t0)		# 	$f2: zero = 0.0
	l.d 	$f8, 16($t0)		#	$f8 = 0.5	
	li 	$t0, 0 			#	int i = 0
ifsqrt:					# 	if( val > 0.0 ){
	c.le.d 	$f12, $f2		#
	bc1t 	elsesqrt 		# 
do:					#		do {
	mov.d 	$f4, $f0 		# 			aux = xn;
	div.d 	$f6, $f12, $f0 		#			temp = val/xn;
	add.d 	$f6, $f6, $f0 		# 			temp += xn;
	mul.d 	$f6, $f6, $f8		#			temp * 0.5;
	mov.d 	$f0, $f6 		#			xn = temp;
	
	addi 	$t0, $t0, 1		#			++i
	bge	$t0, 25, while		#			
	c.eq.d	$f4, $f0		#
	bc1t	while			#
	j	do
while:					# 		} while( (aux != xn) && (++i < 25));				
	j 	endifsqrt
elsesqrt:				#	} else {
	mov.d 	$f0, $f2		#		xn = 0.0;
endifsqrt:				#	}
	jr 	$ra			#  return xn;