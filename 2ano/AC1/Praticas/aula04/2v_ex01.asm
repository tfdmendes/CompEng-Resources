	.data 
array:	.space 21	# Reservar espaço para um array de 21 SIZE+1 Bytes
	.eqv SIZE, 20
	.text
	.globl main
	
# Mapa Registos
# num:	$t0
# i:	$t1
# &str[0]: $t2
# &str[i]: $t3
# str[i]: $t4
	
main:						# void main(void){
	la 	$a0, array			#
	li 	$a1, SIZE			#
	li 	$v0, 8				#
	syscall					# 	read_string(str,SIZE);
	li 	$t0, 0				# 	num = 0;
	li 	$t1, 0				#	i = 0;
while:						#	while(){
	la	$t2, array			#		t2 = &array[0]
	addu 	$t3, $t2, $t1			#		t3 = &array[i]
	lb	$t4, 0($t3)			#		t4 = array[i]
	beq	$t4, '\0', endw 		# 		if( str[i] == '\0' ) break;
if:						#		if( (str[i] >= '0') && (str[i] <= '9') ){
	blt 	$t4, '0', endif	#
	bgt	$t4, '9', endif 		#
	addi 	$t0, $t0, 1			#			num++
endif:						#		}
	addi 	$t1, $t1, 1			#		i++
	j while					#	
endw:						#	}
	li $v0, 1				#
	move $a0, $t0				#
	syscall					#
	jr $ra					# }