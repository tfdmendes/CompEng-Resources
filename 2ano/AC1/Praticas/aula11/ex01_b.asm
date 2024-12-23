#########################################################################
#	Name		Alignmn		Size		Offset
# int id_number		4		4		0
# char first_name[18]	1		18		0+4
# char last_name[15]	1		15		18+4
# float grade 		4		4		18+4+15 -> 40
#			4		40+4	
	
	.eqv	print_string,4
	.eqv	read_string,8
	.eqv 	print_intu10,36
	.eqv	read_int,5
	.eqv	print_float,2
	.eqv	read_float,6
	.eqv	print_char,11
		
	.eqv 	id_number, 0
	.eqv 	first_name, 4
	.eqv 	last_name, 22
	.eqv	grade, 40
	.data

	.align 2
stg:	.space 44


str1:	.asciiz	"\nN. mec: "
str2:	.asciiz	"\nNome: "
str3:	.asciiz	"\nNota: "
str4:	.asciiz	"\nPrimeiro nome: "
str5:	.asciiz	"\nSegundo nome: "
	.text
	.globl main	
	
	
main:					# int main(void){
	la	$t0,stg			# pôr o endereço inicial da estrutura em $t0



	la	$a0,str1
	li	$v0,print_string
	syscall				# print("\nN. mec: ")
	li	$v0,read_int
	syscall
	sw	$v0,0($t0)
	la	$a0,str4
	li	$v0,print_string
	syscall				# print("\nPrimeiro nome: ")
	li	$v0,read_string
	addiu	$a0,$t0,4
	li	$a1,17
	syscall
	la	$a0,str5
	li	$v0,print_string
	syscall				# print("\nSegundo nome: ")
	li	$v0,read_string
	addiu	$a0,$t0,22
	li	$a1,15
	syscall
	la	$a0,str3
	li	$v0,print_string
	syscall				# print("\Nota: ")
	li	$v0,read_float
	syscall
	s.s	$f0,40($t0)



	la	$a0,str1
	li	$v0,print_string
	syscall				# print("\nN. mec: ")
	lw	$a0,0($t0)		# $t0 = stg.id_number
	li	$v0,print_intu10
	syscall				# print(stg.id_number)
	
	la	$a0,str2
	li	$v0,print_string
	syscall				# print("\nNome: ")
	addiu	$a0,$t0,22
	li	$v0,4
	syscall				# print(stg.last_name)
	li	$a0,','
	li	$v0,print_char
	syscall				# print(',')
	addiu	$a0,$t0,4		# $a0 = &stg + 4
	li	$v0,4
	syscall				# print(stg.first_name)
	
	la	$a0,str3
	li	$v0,print_string
	syscall				# print("\Nota: ")
	l.s	$f12,40($t0)		# $f12 = stg.grade
	li	$v0,print_float
	syscall
	
	jr	$ra