	.data
	.text
	.globl strrev

# MAPA REGISTOS
# str: $a0 -> $s0 (arg é passado em $a0)
# p1: $s1
# p2: $s2
strrev: 					# char *strrev(char *str){
	addiu	$sp, $sp, -16
	sw	$ra, 0($sp)
	sw	$s0, 4($sp)
	sw	$s1, 8($sp)
	sw	$s2, 12($sp)
	
	move	$s0, $a0
	move	$s1, $a0
strrWl1:					# while(1){
	lb	$t2, 0($s1)			# 	*p2
	beq 	$t2, '\0', strrEw1		#	if(*p2 == '\0') break;
	addiu	$s1, $s1, 1
	j 	strrWl1				# 
strrEw1:					# }
	addiu	$s1, $s1, -1			#	p2--;
strrWl2:					#	while(1) {
	lb	$t1, 0($s0)
	lb	$t2, 0($s1)

	bge	$t1, $t2, strrEw2		#	if(p1 >= p2) break;
	move	$a0, $t1
	move	$a1, $t2
	jal	exchange			#		exchange(p1,p2);
	addiu 	$s0, $s0, 1			#		p1++;
	addiu	$s1, $s1, -1			#		p2--

	j	strrWl2
strrEw2:					#	}
	lw	$ra, 0($sp)			#	
	lw	$s0, 4($sp)
	lw	$s1, 8($sp)
	lw	$s2, 12($sp)
	addiu	$sp, $sp, 16
	jr	$ra 				# 	return str
