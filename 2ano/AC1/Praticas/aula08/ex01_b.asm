	.data
str:	.asciiz	"2020 e 2024 sao anos bissextos"
	.text
	.globl	main

# Mapa de registos
# res: $v0
# s: $a0
# *s: $t0
# digit: $t1

atoi:					# unsigned int atoi(char *s){	
	li	$v0, 0			# 	res = 0;
atoiWl:					#	while(1){
	lb	$t0, 0($a0)		#
	blt	$t0, '0', atoiEndWl	#		if(*s < 0) break;
	bge	$t0, '9', atoiEndWl	# 		if(*s > 9) break;
	addiu	$a0, $a0, 1 		# 		*s++;
	addiu	$t1, $t0, -0x30		#		digit = *s - '0'

	mul	$v0, $v0, 10		#		10*res
	addu	$v0, $v0, $t1		#		
	j	atoiWl
atoiEndWl:				#	}
	jr	$ra			#

main:	
	la	$a0, str
	addiu	$sp, $sp, -4
	sw	$ra, 0($sp)
	jal	atoi
	move	$a0, $v0
	li	$v0, 1
	syscall

	lw	$ra, 0($sp)
	addiu	$sp, $sp, 4

	jr	$ra
