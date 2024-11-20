	.data
str:	.space 33
	.text
	.globl main
# MAPA DE REGISTOS
# $s0: &str[0]
# $s1: val
# $s2: str

main:					# int main (void) {
	addiu 	$sp, $sp, -12
	sw 	$ra, 0($sp)
	sw 	$s0, 4($sp)
	sw 	$s1, 8($sp)
do:					# 	do {
	li 	$v0, 5
	syscall 
	move 	$s0, $v0 		# 		val = read_int();
	
	la 	$s2, str
	move	$a0, $s0 		# 		$a0 = val
	li 	$a1, 2 			# 		$a1 = 2
	move 	$a2, $s2 		# 		$a2 = str
	jal 	itoa 			# 		itoa(val, 2, str);
	move 	$t0, $v0
	
	li 	$v0, 4
	move 	$a0, $t0 		# 		print_string( itoa(val,2,str) );
	
	beq 	$s1, $0, while 		# 		if( val == 0 ) break;
	j 	do 
while: 					# 	}while(1);
	
	lw 	$ra, 0($sp)
	lw 	$s0, 4($sp)
	lw 	$s1, 8($sp)
	addiu 	$sp, $sp, 12

	jr 	$ra
