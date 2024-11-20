	.data
	.text
	.globl main
# MAPA DE REGISTOS
# $a0: s	
# $t0: res = *s
# $t1: digit
# $v0: res

atoi:					# unsigned int atoi(char *s)
	li	$t0, 0			#	res = 0;
atoiWl:					#	while(1){
	lb	$t0, 0($a0)		#				
	blt	$t0, '0', atoiEndWl	#		if(*s < '0') break;
	bgt	$t0, '9', atoiEndWl	#		if (*s > '9') break;
	addiu	$t0, $t0, 1		#		*s++
	addiu	$t1, $t0, -0x30		#		digit = *s - '0';
	
	mul 	$v0, $v0, 10
	addu 	$v0, $v0, $t1
	
	j	atoiWl
atoiEndWl:
	jr	$ra
