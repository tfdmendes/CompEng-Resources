	.data 
	.eqv SIZE, 4
	.eqv print_int10, 1
array: 	.word 7692, 23, 5, 234	# array = {7692, 23, 4, 234}
	.text
	.globl main
	
# Mapa Registos
# $t0:	p
# $t1:	pultimo
# $t2: 	*p
# $t3:	soma

main:					# void main (void){
	li 	$t3, 0			#	int soma = 0;
	la 	$t0, array		#	p = &array[0]
	addiu 	$t1, $t0, 12		#	pulttimo = &array[3]
for:					#	while (){
	bgt 	$t0, $t1, endfor	#		if ( p > ultimo) break;
	lw	$t2, 0($t0)		#		$t2 = *p
	addu	$t3, $t3, $t2		#		soma = soma + *p
	addiu	$t0, $t0, 4		#		p++
	j 	for			#	
endfor:					#	}
	li 	$v0, 1
	move	$a0, $t3		#
	syscall				# print_int10(soma)
	jr 	$ra

	
