	.data
k0:	.float	1.0
str0:	.asciiz "Digite a base B (float):"
str1:	.asciiz "Digite o expoente E (inteiro)"
str2:	.asciiz "\n B^E="
	.text
	.globl main
# MAPA DE REGISTOS

main:					# int main(void) {
	addiu 	$sp, $sp, -4		#
	sw 	$ra, 0($sp)		#	prologue
	
	li	$v0, 4
	la 	$a0, str0
	syscall				#	print_string(str0)
	li	$v0, 6
	syscall				#
	mov.s 	$f12, $f0 		# 	float x = read_float();
	
	li	$v0, 4
	la 	$a0, str1
	syscall 			#	print_string(str1);
	
	li 	$v0, 5
	syscall
	move 	$a0, $v0		# 	int y = read_int()
	jal 	xtoy
	mov.s 	$f12, $f0		#	float result = xtoy(x,y);
	li 	$v0, 4
	la 	$a0, str2
	syscall				#	print_string(str2);
	
	li	$v0, 2
	syscall 			#	print_float(result);
	
	li 	$v0, 0 			# 	return 0;
	lw 	$ra, 0($sp)		#
	addiu 	$sp, $sp, 4		#	epilogue
	jr 	$ra
	
###################################################
# MAPA DE REGISTOS
# $s0: i	-> salvaguardar
# $f22: result 	-> salvaguardar
# $f12: x	-> $f20 salvaguardar
# $a0: y 	-> $s1 salvaguardar

xtoy:					# float xtoy(float x, int y){
	addiu	$sp, $sp, -20
	sw	$ra, 0($sp)		#	prologo, salvaguardar registos
	sw 	$s0, 4($sp)		#
	sw 	$s1, 8($sp)
	s.s	$f20, 12($sp)
	s.s 	$f22, 16($sp)
	
	move 	$s1, $a0		# 	y
	mov.s 	$f20, $f12		#	x
	li 	$s0, 0			# 	i = 0;
	la 	$t0, k0 		#
	l.s 	$f22, 0($t0)		# 	result = 1.0;
forxtoy:				#	while(1) {
	move 	$a0, $s1		# 
	jal 	abs 			#		$v0 = abs(y)
	bge	$s0, $v0, endforxtoy	#		if (i >= abs(y)) break;				
ifxtoy:					#		if( y > 0) {
	ble	$s1, 0, elsextoy 	# 		
	mul.s 	$f22, $f22, $f20 	# 			result *= x;
	j	endifxtoy
elsextoy:				#		} else {
	div.s	$f22, $f22, $f20 	#			result /= x;
endifxtoy:				#		}	
	addi 	$s0, $s0, 1		# 		i++
	j	forxtoy
endforxtoy:
	mov.s 	$f0, $f22		#
	lw 	$ra, 0($sp)
	lw 	$s0, 4($sp)
	lw 	$s1, 8($sp)
	l.s 	$f20, 12($sp)
	l.s	$f22, 16($sp)
	addiu 	$sp, $sp, 20		# epilogo, repor os registos
	jr	$ra
	
####################################################
# MAPA DE REGISTOS
# val: $a0
abs:					# int abs (int val) {
	bge 	$a0, 0, absendif 	#	
	sub  	$a0, $0, $a0 		# 		val = -val;
absendif:				# 	}
	move 	$v0, $a0		#
	jr 	$ra
