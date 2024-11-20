	.data
s0:	.asciiz "Nr. de Parametros: "
s1:	.asciiz	"\nP"
s2:	.asciiz ": "
	.text
	.globl main
	
# MAPA DE REGISTOS
# $t0: i 
# $a0: argc
# $a1: argv

main:				# int main(int argc, char *argv[]){
	li	$v0, 4		#	
	la	$a0, s0		#
	syscall			#	print_string(s0);
	li 	$v0, 1		#
	move	$a0, $a0
	syscall			#	print_int10(argc);
	li	$t0, 0		#	i = 0;
for:				#	for( i = 0; i < argc; i++){
	bge 	$t0, $a0, endf	#
	li	$v0, 4		#
	la	$a0, s1		#
	syscall			#		print_string("\nP");
	li	$v0, 1		#
	move	$a0, $t0	#
	syscall			#		print_int(i);
	li	$v0, 4		#
	la	$a0, s2		#
	syscall			#		print_string(": ");
	li	$v0, 4		#
	lw	$a0, 0($a1)
	syscall			#		print_string(argv[i]);
	addiu	$a1, $a1, 4
	addiu	$t0, $t0, 1	#		i++
	j for
endf:				#	}
	jr	$ra