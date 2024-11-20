	.data
	.text
	.globl main

# $v0 = len
strlen:					# int strlen(char *s)
	li	$v0, 0			# 	len = 0;
strlWl:					# 	while(1){
						#		no *s++ o '*'  tem precedência, 
						#		ou seja desreferenciamos primeiro						
	lb	$t0, 0($a0)			#		char temp = *s;
	addiu	$a0, $a0, 1			#		s++
	beq	$t0, '\0', strlEw		#		if (tmp == '\0') break;
	addi	$v0, $v0, 1			#		len++
	j strWl				#
strlEw:					# 	}
	jr $ra				# 	return len