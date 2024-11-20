	.data 
s0:	.asciiz "Array"
s1:	.asciiz "de"
s2:	.asciiz "ponteiros"
array:	.word	s0, s1, s2
s3:	.asciiz "\nString #"
s4:	.asciiz ": "
	.text
	.globl main
	
# MAPA DE REGISTOS
# $t0:	i
# $t1:	j
# $t2:	&array[0]
# $t3:	&array[i]
# $t4: 	*array[i]
# $t5:	i*4
# $t6:	*array[i][j]

main:				#  void main (void) {
	li	$t0, 0		#	int i = 0;
for:				#	for(i = 0; i < SIZE; i++){
	bge	$t0, 3, endf	#
	la	$t2, array	#	&array[0]		
	sll	$t5, $t0, 2	#		i*4
	addu	$t3, $t2, $t5	#		&array[i]
	li	$v0, 4		#
	la	$a0, s3		#
	syscall			#		print_string(s3);
	li	$v0, 1		#
	move	$a0, $t0	#
	syscall			#		print_int10(i)
	li	$v0, 4		#
	la	$a0, s4		#
	syscall			#		print_string(s4)
	li	$t1, 0		#		j = 0
	lw	$t4, 0($t3)	#		*array[i]
while:				#		while( array[i][j] != '\0'){
	addu	$t5, $t4, $t1	#			array[i][j]
	lb	$t6, 0($t5)	#			*array[i][j]
	beq	$t6, '\0', endw	#
	li	$v0, 11		#
	lb	$a0, 0($t5)	#
	syscall			#			print_char(array[i][j])
	li	$v0, 11		#
	li	$a0, '-'	#
	syscall			#			print_char('-');
	addiu	$t1, $t1, 1	#			j++;
	j while			#
endw:				#		}
	addiu	$t0, $t0, 1	#		i++;
	j	for		#
endf:				#	}
	jr $ra
