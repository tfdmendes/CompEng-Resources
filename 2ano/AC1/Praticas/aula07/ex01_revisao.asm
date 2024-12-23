	.data
s0:	.asciiz "Arquitetura de Computadores I" 
	.text
	.globl main


main: 					# int main(void){
	addiu 	$sp, $sp, -4
	sw 	$ra, 0($sp)		
	
	la 	$a0, s0
	jal 	strlen
	move 	$a0, $v0
	li 	$v0, 1
	syscall 			# print_int10(strlen(str));
	
	lw 	$ra, 0($sp)
	addiu 	$sp, $sp, 4
	
	li 	$v0, 0
	jr 	$ra



# MAPA DE REGISTOS
# *s:	$a0
# len: 	$v0
strlen:					# int strlen(char *s){
	li 	$v0, 0 			# 	int len = 0;
strWl:				# 	while(1){
	lb 	$t0, 0($a0) 		# 	*s 
	addiu 	$a0, $a0, 1		# 	s++;
	beq 	$t0, '\0', strEw	#	if(*s == '\0')
	addi 	$v0, $v0, 1		# 		len++
	j 	strWl
strEw:				# 	}
	jr 	$ra 			# }



########### MAIN ########### 