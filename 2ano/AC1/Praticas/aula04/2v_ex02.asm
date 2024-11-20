	.data
array:	.space 21 	# Reserva espaço para um array de "SIZE+1" 
	.eqv SIZE, 20
	.text
	.globl main
	
# MAPA REGISTOS	
# $t0 =	num
# $t1 = p
# $t2 = *p


main:				# void main(){
	li 	$t0, 0		# 	int num = 0
	li 	$v0, 8		#
	la	$a0, array	#
	li 	$a1, SIZE	#
	syscall			# 	read_string(str, SIZE);
	la	$t1, array	#	p = &str[0];
while:				#	while(){
	lb 	$t2, 0($t1)	#		array[i]
	beq	$t2, '\0', endw #		if(*p != '\0') break;
if:				#		if ( (*p >= '0') && (*p <= '9') ){
	blt 	$t2, '0', endif #
	bgt	$t2, '9', endif #
	addi	$t0, $t0, 1	#			num++
endif:				#		}
	addiu	$t1, $t1, 1	#		p++ como o array é de characteres apenas temos que somar 1
	j 	while
endw:				#	}
	li $v0, 1
	move $a0, $t0
	syscall	
	jr $ra
