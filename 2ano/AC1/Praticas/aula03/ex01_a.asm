	.data
str1:	.asciiz "Introduza um numero: "
str2:	.asciiz "Valor ignorado"
str3:	.asciiz "A soma dos positivos e: "
	.text
	.globl main
	
# Mapa de Registos
# soma: $t0
# value: $t1
# i: $t2 
	
	
main:  				# void main (void) {
	li 	$t0, 0 		#    soma = 0;
	li 	$t2, 0		#    i = 0;
				#
while:				#    
	bge 	$t2, 5, endw	#     while (i < 5) {
	la 	$a0, str1	#       	
	li 	$v0, 4		#	
	syscall			#         print_str(str1);
	li	$v0, 5		#
	syscall			#
	move	$t1, $v0	#         value = read_int();
if:				#
	blez	$t1, else	#	  if (value > 0) { 
	add	$t0, $t0, $t1	#		soma += value;
	j 	endif		#
else:				#	  } else {
	la 	$a0, str2	#	   	
	li 	$v0, 4		#
	syscall			#		print_str(str2)
endif:				#	  }
	addi 	$t2, $t2, 1	#	  i++;
	j 	while 		#     }
endw:				#
	la 	$a0, str3	#
	li	$v0, 4		#
	syscall	   		#
	li 	$v0, 1		#	   
	move	$a0, $t0	#
	syscall			# 	print_int10(soma);
	jr 	$ra		#