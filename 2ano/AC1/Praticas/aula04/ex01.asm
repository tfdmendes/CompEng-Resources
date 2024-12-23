	.data
str:	.space 	21		# static char str[SIZE+1]; Reserva 21 bytes
	.eqv 	SIZE, 20
	.eqv	read_string, 8
	.eqv	print_int10, 1
	.text
	.globl	main
	
	
# Mapa de Registos
# num: 		$t0
# i: 		$t1
# str[0]: 	$t2
# str+i:	$t3
# str[i]: 	$t4

main:							# int main(void) {
	la	$a0, str	 			# 	$a0 = &(array[0]) endereço inciial de memoria onde vai se começar a ler a string
	li	$a1, SIZE	 			# 
	li 	$v0, read_string 		#
	syscall						# 	read_string(str, SIZE);
	li	$t0, 0					# 	int num = 0;
	li	$t1, 0					# 	i = 0;
while:							#	while() {
	la	$t2, str				#		char *p1 = &(str[0]);
	addu	$t3, $t2, $t1		#		char *p2 = &(str[i]);
	lb	$t4, 0($t3)				#		char val = str[i];
	beq	$t4, '\0', endw 		# 		if(val == '\0') break;
if:								#		if ((str[i] >= '0') && (str[i] <= '9')){
	blt	$t4, '0', endif			#		
	bgt	$t4, '9', endif			#
	addi	$t0, $t0, 1			#			num ++
endif:							#		}
	addi	$t1, $t1, 1			# 		i++
	j 	while
endw:							#	}
	li	$v0, print_int10		#
	move	$a0, $t0			#
	syscall						#	print_int10(num)
	jr $ra						#}	
