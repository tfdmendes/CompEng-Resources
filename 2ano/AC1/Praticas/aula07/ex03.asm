	.data
str1: 	.asciiz "I serodatupmoC ed arutetiuqrA" 	# static char str1[] = I serodatupmoC ed arutetiuqrA
str2: 	.space 	31 					# static char str2[STR_MAX_SIZE+1]
str3: 	.asciiz "\n"
str4: 	.asciiz "String too long: "
	.text
	.globl main

################# MAIN #################
# MAPA DE REGISTOS
# &str1 	$s0
# &str2 	$s1


main:	 				# int main(void){
	addiu 	$sp, $sp, -12		# 	prologo
	sw 	$ra, 0($sp) 		# 	
	sw 	$s0, 4($sp)
	sw 	$s1, 8($sp)

	la 	$s0, str1 		# 	&str1
	la 	$s1, str2 		# 	&str2 
if1main: 				# 	if(strlen (str1) <= 30){
	move 	$a0, $s0		#
	jal 	strlen 			#
	bgt 	$v0, 30, else1main 	# 	

	move 	$a0, $s1 		 	
	move 	$a1, $s0
	jal 	strcpy 			# 		strcpy(str2, str1);

	li 	$v0, 4
	move 	$a0, $s1 		# 	
	syscall 			# 		print_string(str2);

	li 	$v0, 4
	la 	$a0, str3		#
	syscall 			# 		print_string("\n");

	
	move 	$a0, $s1
	jal 	strrev 			#
	move 	$a0, $v0
	li 	$v0, 4
	syscall 			# 		print_string(strrev(str2));

	li 	$v0, 0 			# 		exit_value = 0;

	j 	endif1main
else1main:
	li 	$v0, 4 
	la 	$a0, str4 
	syscall 			# 		print_string("String too long: ");

	move 	$a0, $s0 
	jal 	strlen
	move 	$a0, $v0
	li 	$v0, 1
	syscall 			# 		print_int10(strlen(str1));

	li 	$v0, -1 		# 		exit_value = -1;
	
endif1main:
	lw 	$ra, 0($sp) 		# 	
	lw 	$s0, 4($sp)
	lw 	$s1, 8($sp)
	addiu 	$sp, $sp, 12
	jr 	$ra 			# }






################# STR LENGTH ###################
# MAPA DE REGISTOS
# s 		$a0
# len 		$v0
# *s 		$t0

strlen: 				# int strlen(char *s){
	li 	$v0, 0 			# 	int len = 0;

strlwhile:				# 	while(1){
	lb 	$t0, 0($a0) 		# 		*s;
	beq 	$t0, '\0', strlew 	#		if(*s == '\0') break;
	addiu 	$a0, $a0, 1 		# 		s++;
	addiu 	$v0, $v0, 1 		# 		len++; 
	j 	strlwhile
strlew: 
	jr 	$ra 			# }

################### STR COPY ###################
# MAPA DE REGISTOS
# &dst: 	$a0
# &src: 	$a1
# i:   		$t0
# &src[i] 	$t1
# *src[i]	$t2
# &dst[i] 	$t3

strcpy:					# char *strcpy(char* dst, char* src){
	li 	$t0, 0 			# 	int i = 0
strcpydo:				# 	do{
	move 	$t1, $a1		# 		&src[0]
	move 	$t3, $a0
	addu 	$t1, $t1, $t0 		# 		&src[i]
	addu 	$t3, $t3, $t0 		#		&dst[i]
	lb 	$t2, 0($t1)		# 		*src[i]

	sb 	$t2, 0($t3)		#		dst[i] = src[i];
	
	beq 	$t2, '\0', strcpywhile 	#		if(src[i] == '\0') break;
	addiu 	$t0, $t0, 1 		# 		i++
	j 	strcpydo 
strcpywhile:				# 	} while(1)
	move 	$v0, $a0
	jr 	$ra 			# }	


################# STR REVERSE ###################
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
	
######### EXCHANGE #########
exchange:				# void exchange(char *c1, char *c2){ 
	lb  	$t0, 0($a0) 		# 	char aux = *c1;
	lb 	$t1, 0($a1) 		# 
	sb 	$t1, 0($a0)		#	*c1 = *c2;
	sb	$t0, 0($a1)		#	*c2 = aux;
	jr 	$ra 			# }

