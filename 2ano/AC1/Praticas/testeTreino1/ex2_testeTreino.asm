	.data
arr1: .space 140 		# 35*4 array de ints lg cada int ocupa 4 bytes (35 ints = 140 bytes necessários)
arr2: .space 140		# 35*4
	.text
	.globl main

# MAPA DE ENDEREÇOS
# $t0: n_even 
# $t1: n_odd
# $t2: *p1 = &a[0]
# $t3: *p2 = &b[0]
# $t4: a+N = &a[0] + 35*4
# $t5: (*p1)
# $t6: temp
# $t7: b + n_odd

main:					# void main(void){q
	li 	$t0, 0 		#	int n_even = 0;
	li 	$t1, 0 		# 	int n_odd = 0;
	la 	$t2, arr1 		# 	p1 = a;
	addiu $t4, $t2, 140	#	a+n

for1:					# 	for(p1 = a; p1 < (a+n); p1++){
	bge 	$t2, $t4, endf1 	#
	li 	$v0, 5
	syscall 			# 		read_int();
	sw 	$v0, 0($t2)		# 		*p1 = read_int();
	addiu 	$t2, $t2, 4 	# 		p1++;
	j 	for1 			#
endf1:				# 	}
	la 	$t2, arr1 		# 	p1 = a;
	la 	$t3, arr2 		# 	p2 = b; 
	addiu $t4, $t2, 140	#	a+N;
for2:					# 	for(p1=a, p2=b; p1 < (a+N); p1++){
	bge 	$t2, $t4, endf2	#


if:					#		if((*p1 % 2) != 0 ){
	lw 	$t5, 0($t2)		# 		
	rem 	$t6, $t5, 2 	#
	beq 	$t6, 0, else 	#
	sw 	$t5, 0($t3)		# 			*p2 = *p1
	addiu $t3, $t3, 4 	#			p2++;
	addi 	$t1, $t1, 1 	# 			n_odd++;
	j 	endif
else:					# 		} else {
	addi 	$t0, $t0, 1 	# 			n_even++
endif:				# 		}
	addiu $t2, $t2, 4 	#		p++
	j 	for2			#
endf2:				#	}	



	la 	$t3, arr2 		#	p2 = b
	sll 	$t6, $t1, 2 	# 	temp = n_odd * 4
	addu 	$t7, $t3, $t6 	# 	b + n_odd
for3:					# 	for(p2 = b; p2 < (b+n_odd); p++){
	bge 	$t3, $t7, endf3
	li 	$v0, 1
	lw 	$a0, 0($t3)
	syscall 			# 		print_int10(*p2)
	addiu 	$t3, $t3, 4 	# 		p2++
	j 	for3 			#
endf3:
	jr 	$ra 			# }
