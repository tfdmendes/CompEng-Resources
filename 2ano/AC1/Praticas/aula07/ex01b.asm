	.data
str1:	.asciiz "Arquitetura de computadores I"
	.text
	.globl main
main:						# int main(void) {
	addiu	$sp, $sp, -4		#	
	sw 	$ra, 0($sp)			#  	prologo
	la	$a0, str1			#	
	jal	strlen			#	strlen(str);
	move	$a0, $v0			#	
	li	$v0, 1
	syscall
	lw	$ra, 0($sp)			#	epilogo
	addiu	$sp, $sp, 4
	li	$v0, 0			#	return 0;
	jr 	$ra				# } 	

# $v0 = len
strlen:					# int strlen(char *s)
	li	$v0, 0			# 	len = 0;
strlWl:					# 	while(1){
	lb	$t0, 0($a0)			#		char temp = *s;
	addiu	$a0, $a0, 1			#
	beq	$t0, '\0', strlEw		#		if (tmp == '\0') break;
	addi	$v0, $v0, 1			#		len++
	j strWl				#
strlEw:					# 	}
	jr $ra				# 	return len