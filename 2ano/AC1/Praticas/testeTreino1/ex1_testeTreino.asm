	.data
s0: .asciiz "Digite ate 20 inteiros (zero para terminar):"
s1: .asciiz "Maximo/minimo sao: "
	.text
	.globl main

# MAPA DE REGISTOS
# $t0: val
# $t1: n
# $t2: min = 0x7FFFFFFF
# $t3: max = 0x80000000

main:					# void main(void){
	li 	$t1, 0 		# 	n = 0;
	li 	$t2, 0x7FFFFFFF 	# 	min = 0x7FFFFFFF;
	li 	$t3, 0x80000000 	# 	max = 0x80000000;
	li 	$v0, 4
	la 	$a0, s0
	syscall 			# 	print_string(s0);
while:				# 	do{
	li 	$v0, 5
	syscall			
	move 	$t0, $v0 		#		val = read_int();
if1:					#		if( val != 0){
	beq 	$t0, 0, endif1	#
if2:					#			if (val > max)
	ble 	$t0, $t3, endif2	#
	move 	$t3, $t0 		# 				max = val
endif2:				#			
			
if3:					#			if (val < min)
	bge  	$t0, $t2, endif3 	#
	move 	$t2, $t0 		# 				min = val 
endif3:

endif1:				#		}
	addi 	$t1, $t1, 1 	#  		n++
	bge 	$t1, 20, endw
	beq 	$t0, 0, endw 
	j 	while
endw:					# 	}while( (n < 20) && (val != 0) ); 
	li 	$v0, 4
	la 	$a0, s1
	syscall 			# 	print_string(s1);
	li 	$v0, 1
	move 	$a0, $t3
	syscall			# 	print_int10(max);
	li 	$v0, 11
	li 	$a0, ':'
	syscall 			# 	print_char(':');
	li 	$v0, 1
	move 	$a0, $t2 		
	syscall 			# 	print_int10(min)
	jr 	$ra 			# }