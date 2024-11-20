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
	
	
	la 	$a0, str1	
	li	$v0, 4
	syscall				#     print_string(str1);
	
	li 	$v0, 5
	syscall
	move	$t0, $v0		#     value = read_int();

	la	$a0, str2
	li	$v0, 4
	syscall				#     print_string(str2);
while:
	bge 	$t2, 32, endw		#     for(i=0; i < 32; i++){
	li	$t3, 0x80000000
	and 	$t1, $t0, $t3		#         bit = value & 0x80000000
	
if:	
	beq 	$t1, 0, else		#	  if(bit != 0){
	li 	$v0, 11 		#
	ori	$a0, $0, 0x31		#
	syscall 			#	      print_char('1');
	j 	endif	
else:					#         } else {
	li 	$v0, 11
	ori	$a0, $0, 0x30		#
	syscall				#	     print_char('0');
					
endif:
	sll  	$t0, $t0, 1
	addi 	$t2, $t2, 1		#      i++;
	j 	while
endw: 
	jr $ra