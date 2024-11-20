	.data
str:	.space 	21		# static char str[SIZE+1];
	.eqv 	SIZE, 20
	.eqv	read_string, 8
	.eqv	print_int10, 1
	.text
	.globl	main
	
# Mapa de Registos
# num: 		$t0
# p: 		$t1	# Contém o ENDEREÇO (hexadecimal)
# *p:		$t2	# Contém o valor armazenado no ENDEREÇO
	
main:
	li 	$t0, 0						# int num = 0;
	li 	$v0, read_string
	la 	$a0, str
	li 	$a1,  SIZE					# (Tamanho máximo da string)
	syscall							# read_str(str, SIZE);
	la 	$t1, str					# p = &str[0]
while:								# while() {
	lb 	$t2, 0($t1)            		# 	(str[i]);
    beq $t2, '\0', endw        		# 	if ( *p == '\0') break;
if:	
	blt	$t2, '0', endif				#		if ((str[i] >= '0') && (str[i] <= '9')){
	bgt	$t2, '9', endif				#
	addi	$t0, $t0, 1				#			num ++
endif:								#		}
	addiu	$t1, $t1, 1				# 		p++
	j 	while
endw:	
	li	$v0, print_int10			#
	move	$a0, $t0				#
	syscall							#	print_int10(num)