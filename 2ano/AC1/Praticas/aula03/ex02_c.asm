	.data
str1:	.asciiz "Introduza um numero: "
str2:	.asciiz "Valor em binario e': "
	.text
	.globl main

# Mapa de Registos
# value:  $t0
# bit:	  $t1
# i: 	  $t2 

main:					# void main (void){
	li 	$t1, 0			#     int value = 0;
	li 	$t2, 0			#     int i = 0;
	la 	$a0, str1		#
	li	$v0, 4			#
	syscall				#     print_string(str1);
	li 	$v0, 5			#	
	syscall				#	
	move	$t0, $v0		#     value = read_int();
	la	$a0, str2
	li	$v0, 4
	syscall				#     print_string(str2);
while:
	bge 	$t2, 32, endw		#     for(i=0; i < 32; i++){
	
if1:					#         if( (i % 4) == 0){
	rem 	$t4, $t2, 4		#	
	bne 	$t4, $0, endif1		#
	li 	$v0, 11			#
	li	$a0, 0x20		#
	syscall				#	        print_char(' ');	
endif1:					#	  }
	li	$t3, 0x80000000
	and  	$t1, $t0, $t3		#         value & 0x80000000
	srl 	$t1, $t1, 31		# 	  bit = (value & 0x80000000) >> 31;
	addi	$t4, $t1, 0x30		#	  0x30 + bit;
	li 	$v0, 11			#		
	move	$a0, $t4		#
	syscall				#	  print_char(0x30 + bit);
	
	
	sll  	$t0, $t0, 1		#
	addi 	$t2, $t2, 1		#      i++;
	j 	while
endw: 
	jr $ra
