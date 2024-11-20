	.data
s0:	.asciiz "Array"
s1:	.asciiz "de"
s2:	.asciiz "ponteiros"
array:	.word	s0, s1, s2
	.text
	.globl main
	
# MAPA DE REGISTOS
# $t1:	p
# $t2:	pultimo

main:				# void main(void) {
	la	$t1, array	#	
	addiu	$t2, $t1, 12	#	pultimo = array + Size
while:				#	while(){
	bge 	$t1, $t2, endw	#		if (p >= pultimo) break;
	li	$v0, 4		#
	lw	$a0, 0($t1)	#
	syscall			#		print_string(*p)
	li 	$v0, 11		#
	li	$a0, '\n'	#
	syscall			#		print_char('\n')
	addiu	$t1, $t1, 4	#		p++;
	 j while 
endw:				#	}
	jr $ra			# }