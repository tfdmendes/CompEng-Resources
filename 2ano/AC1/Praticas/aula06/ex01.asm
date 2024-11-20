        .eqv    SIZE, 3
        .data
s0:     .asciiz "Array"
s1:     .asciiz "de"
s2:     .asciiz "ponteiros"
array:  .word   s0, s1, s2
        .text
        .globl main
	
# MAPA DE REGISTOS
# i:		$t0
# &(array[0]): 	$t1
# &(array[i]):	$t2
main:				# void main(void){
	li 	$t0, 0		#	int i = 0;
while:				# 	while(){
	bge	$t0, SIZE, endw	#		if( i >= SIZE ) break;
	la	$t1, array	#	&(array[0]);
	sll	$t3, $t0, 2	#		i *= 4;
	addu 	$t2, $t1, $t3	#		&(array[i]);
	li	$v0, 4		#
	lw	$a0, 0($t2)	#
	syscall			#		print_string(array[i]);
	li	$v0, 11		#
	li	$a0, '\n'	#
	syscall			#		print_char('\n')
	addi 	$t0, $t0, 1	#		i++;
	j 	while		#	
endw:				#	}
	jr	$ra		#}