	.data
str1:	.asciiz "Introduza um numero: "
str2:	.asciiz "\nValor em binario e': "
	.eqv print_string, 4
	.eqv read_int, 5
	.eqv print_char, 11
	.text
	.globl main

# Mapa de Registos
# value:  $t0
# bit:	  $t1
# i: 	  $t2 
# flag:   $t3

main:					# void main (void){

	li 	$t0, 0			# int value = 0;
	li 	$t1, 0			# int bit = 0;
	li 	$t2, 0			# int i = 0;
	
	li 	$v0, print_string
	la 	$a0, str1			
	syscall				# print_string(str1);
	
	li	$v0, read_int
	syscall				# value = read_int();
	move	$t0, $v0
	
	li 	$v0, print_string
	la	$a0, str2
	syscall				# print_String(str2);
	li 	$t3, 0			# flag i = 0;
	
for:							#
	bge 	$t2, 32, endfor		# for(i = 0; flag = 0; i < 32; i++){
	srl	$t1, $t0, 31			# 	bit = value >> 31;
	bne 	$t3, $0, if1
	bne 	$t1, $0, if1
	j 	endif1	
if1:							#	if (flag == 1 || bit != 0){
	li 	$t3, 1					#		flag = 1;
	rem 	$t4, $t2, 4			#		i % 4
	bne	$t4, 0, endif2			#	
if2:							#		if((i % 4) == 0){
	li 	$v0, print_char			#
	li	$a0, 0x20
	syscall						#			print_char(' ');
endif2:							#		}
	addi	$t4, $t1, 0x30		#			
	li	$v0, print_char			#
	move	$a0, $t4			#	
	syscall						#	print_char(0x30 + bit);
endif1:							#	}
	sll	$t0, $t0, 1				#	value = value << 1;
	addi	$t2, $t2, 1			#	i++
	j 	for
endfor:	
	jr 	$ra