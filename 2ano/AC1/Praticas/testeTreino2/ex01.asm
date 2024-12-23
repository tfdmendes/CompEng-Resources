	.data
.eqv 	SIZE, 15
s0: 	.asciiz "Invalid argc"
	.text
	.globl main


# char *av[] IS AN ARRAY OF POINTERS
# 
# MAPA DE REGISTOS
# &fl[0]	$a0 -> $s0
# k 		$a1 -> $s1 
# &av[0] 	$a2 -> $s2

# i 		$s3
# res 		$s4

# i*4  		$t0
# &fl[i] 	$t1
# &av[i] 	$t2

func1: 					# int func1(int *fl, int k, char *av[])
	addiu 	$sp, $sp, -24
	sw 	$ra, 0($sp) 		# 	prologo
	sw 	$s0, 4($sp)
	sw 	$s1, 8($sp)
	sw 	$s2, 12($sp)
	sw 	$s3, 16($sp)
	sw 	$s4, 20($sp)

	move 	$s0, $a0 
	move 	$s1, $a1 
	move 	$s2, $a2
f1If: 			 		# if( (k>=2) && (k <= SIZE)) {
	blt 	$s1, 2, f1Else
	bgt 	$s1, SIZE, f1Else

	li 	$s3, 2 			# 	i=2;
f1Do:					#	do{
	sll 	$t0, $s3, 2 		# 		i*4
	addiu 	$t2, $s2, $t0 		# 		&av[i]

	move 	$a0, $t2 		#
	jal 	toi 			# 		toi(av[i])

	sll 	$t0, $s3, 2 		# 		i*4
	addiu 	$t1, $s0, $t0 		# 		&fl[i]
	sw 	$v0, 0($t1) 		# 		fl[i] = toi(av[i])

	addiu 	$s3, $s3, 1 		# 		i++;

	bge 	$s3, $s1, f1While 	# 	
	j 	f1Do 			#
f1While: 				# 	}while(i < k);

	move 	$a0, $s0
	move 	$a1, $s1
	jal 	avz 
	move 	$s4, $v0 		# 	res = avz(fl,k);

	li 	$v0, 1
	move 	$a0, $s4
	syscall 			# 	print_int10(res);
	j 	f1EndIf
f1Else:					# } else {
	li 	$v0, 4
	la 	$a0, s0
	syscall 			# 	print_string("Invalid argc");
	li 	$s4, -1 		# 	res = -1;
f1EndIf:
	
	move 	$v0, $s4 		# 	return res;

	
	lw 	$ra, 0($sp) 		# 	epilogo
	lw 	$s0, 4($sp)
	lw 	$s1, 8($sp)
	lw 	$s2, 12($sp)
	lw 	$s3, 16($sp)
	lw 	$s4, 20($sp)
	addiu 	$sp, $sp, 24
	jr 	$ra

