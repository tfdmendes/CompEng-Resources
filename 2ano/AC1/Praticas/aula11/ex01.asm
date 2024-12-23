#########################################################################
#	Name		Alignmn		Size		Offset
# int id_number		4		4		0
# char first_name[18]	1		18		0+4
# char last_name[15]	1		15		18+4
# float grade 		4		4		18+4+15 -> 40
#			4		40+4	
	
	.eqv 		id_number, 0
	.eqv 		first_name, 4
	.eqv 		last_name, 22
	.eqv		grade, 40
	.data
# A diretiva .word já força o alinhamento, daí
# nao temos que incluir o .align

stg:	.word 72343
	.asciiz "Napoleao" 
	.space 9
	.asciiz "Bonaparte"
	.space 5
	.float 5.1

s0:	.asciiz  "\nN. Mec: "
s1:	.asciiz  "\nNome: "
s2:	.asciiz  "\nNota: "
	.text
	.globl main	
	
	
main:
	li 	$v0, 4
	la 	$a0, s0
	syscall 			# print_str(str1);
	
	li	$v0, 36
	la 	$t0, stg
	lw 	$a0, id_number($t0)
	syscall 			# print_intu10(stg.id_number);
	
	li 	$v0, 4
	la 	$a0, s1			
	syscall				# print_string("\nNome: ");
	
	li 	$v0, 4
	addiu 	$a0, $t0, last_name	# char *cpt = &stg + last_name_offset;
	syscall 			# print_string(stg.last_name);
	
	li 	$v0, 11
	li 	$a0, ',' 		
	syscall 			# print_char(",");
	
	li 	$v0, 4
	addiu 	$a0, $t0, first_name 	# char *cpt  = &stg + first_name_offset;
	syscall 			
	
	li 	$v0, 4
	la 	$a0, s2 	
	syscall 			# print_string("\nNota: ");
	
	l.s 	$f12, grade($t0)
	li 	$v0, 2
	syscall 			#	
	
	
	jr 	$ra


