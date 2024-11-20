	.data
	.text 
	.globl itoa 
# MAPA DE REGISTOS
# $s0: p
# $a0 -> $s1: n
# $a1 -> $s2: b
# $a2 -> $s3: s
# $t0: digit 
	
itoa: 					# char *itoa(unsigned int n, unsigned int b, char *s){
	addiu 	$sp, $sp, -20		
	sw 	$ra, 0($sp)		
	sw 	$s0, 4($sp)
	sw 	$s1, 8($sp)	
	sw 	$s2, 12($sp)
	sw 	$s3, 16($sp) 
	
	move 	$s3, $a2
	move 	$s2, $a1
	move 	$s1, $a0 
	move 	$s0, $a2 		# 	char *p = s;
itoa_do:				#	do{
	remu 	$t0, $s1, $s2 		# 		digit = n % b;
	divu 	$s1, $s1, $s2 		# 		n = n / b;
	move 	$a0, $t0
	jal 	toascii 		# 		toascii (digit);
	sb 	$v0, 0($s0) 		# 		*p = toascii(digit);
	addiu 	$s0, $s0, 1 		# 		p++
	bgt 	$s1, $0, itoa_do
itoa_while:				#	}while(n > 0);
	sb 	$0, 0($s0) 		# 	*p = '\0';
	move 	$a0, $s3 		#
	jal 	strrev 			# 	strrev ( s );
	move 	$v0, $s3
	lw 	$ra, 0($sp)		
	lw 	$s0, 4($sp)
	lw 	$s1, 8($sp)	
	lw 	$s2, 12($sp)
	lw 	$s3, 16($sp) 
	addiu 	$sp, $sp, 20		
	jr 	$ra 		# }
