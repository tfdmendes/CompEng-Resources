	.data
lista:	.word 8, -4, 3, 5, 124, -15, 87, 9, 27, 15 
str: 	.asciiz "\nConteudo do array: \n"
semi:	.asciiz "; "
	.text
	.globl main
	
# MAPA REGISTOS
# $t0:	&lista[0]
# $t1:	lista + size
# $t2: 	*p


main:				# void main (void) {
	li 	$v0, 4		
	la	$a0, str	
	syscall			#	print_string(str);
	la	$t0, lista	#	p = lista
	addiu	$t1, $t0, 40	#	lista + size
for:				#	while(){
	bge	$t0, $t1, endf	#		if (p >= lista + size) break;
	lw	$t2, 0($t0)	#			*p
	li	$v0, 1		#
	move 	$a0, $t2 	
	syscall			#			print_int10( *p );
	li 	$v0, 4		
	la	$a0, semi	
	syscall			#			print_string("; ");
	addiu	$t0, $t0, 4	#	p++
	j for
endf:				#	}
	jr 	$ra		# }