	.data
lista:	.space	40	#	static int lista[10]
str:	.asciiz "\n Introduza um numero: "
str2: 	.asciiz "\nConteudo do array: \n"
semi:	.asciiz "; "

	.text
	.globl	main
# MAPA REGISTOS
# $t0:	i
# $t1:	&lista[0]
# $t2:	&lista[i]
# $t3:  houveTroca
# $t4:	aux
# $t5:	lista[i]
# $t6:  lista[i + 1]
# $t7:	i*4
main:						# void main(void){
	li	$t0, 0				# int i = 0;
	li	$t3, 0				# int houveTroca;
	li	$t4, 0				# int aux;
	la	$t1, lista			# &lista[0]
	
### CODIGO DE LEITURA DE INT ###	
	
for:						# for( i = 0; i < SIZE; i++){
	bge 	$t0, 10, endf			#
	li	$v0, 4				#
	la	$a0, str			#
	syscall					#	print_string(str);
	li 	$v0, 5				#
	syscall					#	$v0 = read_int()
	sll 	$t2, $t0, 2			#	$t2 = i*4
	addu 	$t2, $t2, $t1
	sw	$v0, 0($t2)
	addi 	$t0, $t0, 1			# 	i++
	j 	for				#	
endf:						# }

### CODIGO DE TROCA ###

	la	$t1, lista			# &lista[0]
do:
	li 	$t0, 0				# int i = 0;						#	do{
	li 	$t3, 0				#		houveTroca = FALSE;
for2:						#		for ( i = 0; i < SIZE-1; i++){
	bge 	$t0, 9, endfor2			#
	sll	$t7, $t0, 2			#			i *= 4
	addu	$t2, $t1, $t7			#			&lista[i]
	lw	$t5, 0($t2)			#			lista[i]
	lw	$t6, 4($t2)			#			lista [i + 1]
	
if1:						#			if ( lista[i] > lista [i + 1] ){
	ble	$t5, $t6, endif1		#
	sw 	$t5, 4($t2)			#				lista[i] = lista[i+1];
	sw	$t6, 0($t2)			#				lista[i + 1] = lista[i];
	li	$t3, 1				#				houveTroca = TRUE;						
endif1:						#			}
	addi	$t0, $t0, 1			#			i++
	j 	for2
endfor2:					# 		}
	beq	$t3, 1, do			#	while( houveTroca == TRUE);

### CODIGO DE IMPRESSÃO CONTEÚDO ###
	
	li 	$v0, 4		
	la	$a0, str2	
	syscall			#	print_string(str2);
	la	$t0, lista	#	p = lista
	addiu	$t1, $t0, 40	#	lista + size
for3:				#	while(){
	bge	$t0, $t1, endf3	#		if (p >= lista + size) break;
	lw	$t2, 0($t0)	#			*p
	li	$v0, 1		#
	move 	$a0, $t2 	
	syscall			#			print_int10( *p );
	li 	$v0, 4		
	la	$a0, semi	
	syscall			#			print_string("; ");
	addiu	$t0, $t0, 4	#	p++
	j for3
endf3:				#	}


	jr 	$ra				# }
