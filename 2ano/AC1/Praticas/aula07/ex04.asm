	.data
str1: 	.asciiz "Arquitetura de " 	# static char str1[]="Arquitetura de "
str2: 	.space 50 			# static char str2[50];
str3: 	.asciiz "\n"
str4: 	.asciiz "Computadores I"
	.text
	.globl main

########### MAIN ###########
# MAPA DE REGISTOS
# &str1[0] 	$s0
# &str2[0] 	$s1 

main: 					# int main(void){
	addiu 	$sp, $sp, -12 		# 	prologo
	sw 	$ra, 0($sp)
	sw 	$s0, 4($sp)
	sw 	$s1, 8($sp)

	la 	$s0, str1
	la 	$s1, str2 

	move 	$a0, $s1
	move 	$a1, $s0
	jal  	strcpyP 		# strcpy(str2, str1);

	li 	$v0, 4
	move 	$a0, $s1 		
	syscall 			# print_string(str2);

	li 	$v0, 4
	la 	$a0, str3 		#
	syscall 			# print_strin("\n");

	move 	$a0, $s1
	la 	$a1, str4 		#
	jal 	strcat 			# 
	move 	$a0, $v0
	li 	$v0, 4 	
	syscall 			# print_string(strcat(str2, "Computadores I"));

	li 	$v0, 0

	lw 	$ra, 0($sp)		# 	
	lw 	$s0, 4($sp) 		#
	lw 	$s1, 8($sp) 		#
	addiu 	$sp, $sp, 12 		# 	epilogo
	jr 	$ra 			# }



######## String Concatenate ########
# MAPA DE REGISTOS
# dst 		$a0 -> s0
# src 		$a1 -> s1
# *p 		$s2 

strcat: 				# char *strcat (char *dst, char *src){
	addiu 	$sp, $sp, -16
	sw 	$ra, 0($sp) 		# prologo
	sw 	$s0, 4($sp)
	sw 	$s1, 8($sp)
	sw 	$s2, 12($sp)

	move 	$s0, $a0
	move 	$s1, $a1 
	move 	$s2, $a0  		# char* p = dst;
strcatwhile:				# while(1){
	lb 	$t0, 0($s2) 		# 	*(p)
	beq 	$t0, '\0', strcatendw 	#	if(*p == '\0') break;
	addiu 	$s2, $s2, 1 		# 	p++;
	j 	strcatwhile
strcatendw: 				# }
	move 	$a0, $s2
	move 	$a1, $s1 
	jal 	strcpyP 		# strcpy(p,src);
	move 	$v0, $s0 		# return dst;

	lw 	$ra, 0($sp) 		# epilogo
	lw 	$s0, 4($sp) 		#
	lw 	$s1, 8($sp) 		#
	lw 	$s2, 12($sp) 		#
	addiu 	$sp, $sp, 16 		#

	jr 	$ra 			# }



######### String Copy With Pointers #########
# MAPA DE REGISTOS
# &p 		$t0	
# *(src) 	$t1

strcpyP:				# char *strcpy(char* dst, char*src){
	move 	$t0, $a0 		# 	char *p = dst;	
strcpydo:
	lb 	$t1, 0($a1) 		# 		*(src)
	sb 	$t1, 0($t0) 		# 		p = *(src)
	addiu 	$t0, $t0, 1 		# 		p++

	beq 	$t1, '\0', strcpywhile
	addiu 	$a1, $a1, 1 		#  		src++;
	j 	strcpydo
strcpywhile:
	move 	$v0, $a0
	jr 	$ra 			# }