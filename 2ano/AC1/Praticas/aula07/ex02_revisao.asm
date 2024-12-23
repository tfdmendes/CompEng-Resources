	.data
	.eqv 	print_string, 4
str1:	.asciiz "Arquitetutra de Computadores I"
	.text
	.globl main



main:
	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	
	la	$a0,str1
	jal	strrev
	move	$a0,$v0
	li	$v0,print_string
	syscall
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	jr	$ra
	

exchange:				# void exchange(char *c1, char *c2){ 
	lb  	$t0, 0($a0) 		# 	char aux = *c1;
	lb 	$t1, 0($a1) 		# 
	sb 	$t1, 0($a0)		#	*c1 = *c2;
	sb	$t0, 0($a1)		#	*c2 = aux;
	jr 	$ra 			# }
	
###########	
	
	
# MAPA DE REGISTOS
# str: $s0 	-> salvaguardar (passado em $a0)
# p1: $s1	-> salvaguardar	
# p2: $s2 	-> salvaguardar
		
strrev:					# char *strrev(char *str){
	addiu 	$sp, $sp, -16		# 	prologo
	sw 	$ra, 0($sp) 		#
	sw	$s0, 4($sp)
	sw 	$s1, 8($sp)
	sw 	$s2, 12($sp)
	
	move 	$s0, $a0		#	str
	move 	$s1, $a0		#	p1
	move 	$s2, $a0		#	p2
	
while1:					#	while(1){
	lb  	$t0, 0($s2) 		#
	beq 	$t0, '\0', endwhile1 	#		if(*p2 == '\0') break;
	addiu 	$s2, $s2, 1		#		p2++;	
	j 	while1
endwhile1:				#	}
	addiu 	$s2, $s2, -1		#	p2--;
while2:					#	while( p1 < p2){
	bge 	$s1, $s2, endwhile2	#	
	move 	$a0, $s1  
	move 	$a1, $s2
	jal 	exchange 		# 		exchange(p1,p2);
	addiu 	$s1, $s1, 1		#		p1++;
	addiu 	$s2, $s2, -1		#		p2--;
	j 	while2
endwhile2:				#	}
	move 	$v0, $s0 		# 	return str;

	lw 	$ra, 0($sp) 		#
	lw	$s0, 4($sp)
	lw 	$s1, 8($sp)
	lw 	$s2, 12($sp)
	addiu 	$sp, $sp, 16		# 	epilogo
	jr 	$ra			# }
	