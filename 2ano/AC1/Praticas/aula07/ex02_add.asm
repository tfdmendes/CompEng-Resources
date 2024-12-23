	.data
array: 	.space 	200 			# static int array[50] 50*4
s0: 	.asciiz "Size of array : "
s1: 	.asciiz "array["
s2: 	.asciiz "] = "
s3: 	.asciiz "Enter the value to be inserted: "
s4: 	.asciiz "Enter the position: "
s5: 	.asciiz "\nOriginal Array: "
s6: 	.asciiz "\nModified array: "

s10: 	.asciiz ", "

	.text
	.globl main
# MAPA DE REGISTOS
# $t0 		i
# $t1		array_size 	-> $s0
# $t2 		i*4
# $t3 		&(array[0])
# $t4 		&(array[i])
# $t5 		insert_value 	-> $s1
# $t6 		insert_pos 	-> $s2 

main: 					# int main(void){
	addiu 	$sp, $sp, -16 		# 	prologo
	sw 	$ra, 0($sp)
	sw 	$s0, 4($sp) 
	sw 	$s1, 8($sp)
	sw 	$s2, 12($sp)

	li 	$v0, 4 
	la 	$a0, s0
	syscall 			# 	print_string("Size of array: ");

	li 	$v0, 5
	syscall	
	move 	$t1, $v0 		# 	array_size = read_int();

	li 	$t0, 0
mainfor:				# 	for (i = 0; i < array_size;){
	bge 	$t0, $t1, mainendfor 	#
	li 	$v0, 4 			#
	la 	$a0, s1 		#
	syscall 			# 		print_string("array[");

	li 	$v0, 1
	move 	$a0, $t0 		
	syscall 			# 		print_int10(i);

	li 	$v0, 4
	la 	$a0, s2 
	syscall 			# 		print_string("] = ")

	la 	$t3, array  		# 		&array[0];
	sll 	$t2, $t0, 2 		# 		i*4
	addu 	$t4, $t3, $t2 		# 		&array[i];

	li 	$v0, 5
	syscall 	
	sw 	$v0, 0($t4) 		# 		array[i] = read_int();
	addiu 	$t0, $t0, 1 		# 		i++
	j 	mainfor
mainendfor:				#	}
	
	li 	$v0, 4
	la 	$a0, s3 
	syscall 			# 	print_string("Enter the value to be inserted: ");

	li 	$v0, 5
	syscall
	move 	$t5, $v0 		# 	insert_value = read_int()

	li 	$v0, 4
	la 	$a0, s4
	syscall 			# 	print_string("Enter position: ");

	li 	$v0, 5
	syscall
	move 	$t6, $v0 		# 	insert_pos = read_int()


	li 	$v0, 4 			#
	la 	$a0, s5 		#
	syscall 			# 	print_string("\nOriginal Array");

	move 	$s0, $t1 		#	array_size - $t0 -> $s0
	move 	$s1, $t5 		# 	insert_value - $t5 -> $s1
	move 	$s2, $t6		# 	insert_pos - $t6 -> $s2

	la 	$a0, array 		#
	move 	$a1, $s0 		#
	jal 	printarray

	la 	$a0, array
	move 	$a1, $s1
	move 	$a2, $s2
	move 	$a3, $s0
	jal 	insert

	li 	$v0, 4
	la 	$a0, s6
	syscall 			# 	print_string("\nModified Array: ");

	la 	$a0, array
	addiu 	$a1, $s0, 1
	jal 	printarray


	li 	$v0, 0 			# 	return 0; 

	lw 	$ra, 0($sp)
	lw 	$s0, 4($sp) 
	lw 	$s1, 8($sp)
	lw 	$s2, 12($sp)
	addiu 	$sp, $sp, 16 		# 	epilogo
	jr 	$ra 			# }



############# INSERT #############
# MAPA DE REGISTOS
# *array 	$a0 	ARRAY DE INTS
# value 	$a1
# pos 		$a2
# size 		$a3

# i 		$t0 
# i*4 		$t1
# i*8 		$t2
# &array	$t3
# &array[i] 	$t4
# &array[i+1] 	$t5
# *(array[i]) 	$t6

insert:					# int insert(int *array, int value, int pos, int size){

insertif:				# 	if(pos > size)
	ble 	$a2, $a3, insertelse	
	li 	$v0, 1 			# 		return 1;
	j 	insertendif
insertelse:
	move 	$t0, $a3 		#
	addiu 	$t0, $t0, -1		# 	i = size - 1
insertfor:				# 	for(i; i >= pos;){	
	blt 	$t0, $a2, insertendfor 	# 	
	move 	$t3, $a0 		# 		&array

	sll 	$t1, $t0, 2 		# 		i*4
	addu 	$t4, $t3, $t1 		# 		&array[i]
	addiu 	$t5, $t4, 4 		# 		&array[i+1]

	lw 	$t6, 0($t4)		# 		*(array[i])
	sw 	$t6, 0($t5) 		# 		array[i+1] = array[i];

	addiu 	$t0, $t0, -1 		# 		i--;
	j 	insertfor
insertendfor:				# 	}
	sll 	$a2, $a2, 2
	addu 	$a0, $a0, $a2 		# 		array[pos]
	sw 	$a1, 0($a0) 		# 		array[pos] = value 
	li 	$v0, 0 			# 		return 0
insertendif:
	jr 	$ra			# }	


############# PRINT_ARRAY #############
# MAPA DE REGISTOS
# *p 		$t0
# *(a) 		$t1

printarray: 				# void print_array(int *a, int n){
	sll 	$t4, $a1, 2 
	addu 	$t0, $a0, $t4 		# 	int *p = a + n
	move 	$t3, $a0
printarrfor:				# 	for(; a < p; a++){
	bge 	$t3, $t0, printarrendfor 

	lw 	$t1, 0($t3)  		# 		*(a)
	li 	$v0, 1
	move 	$a0, $t1 		#
	syscall 			# 		print_int10(*a);

	la 	$t2, s10 		#
	li 	$v0, 4 
	move 	$a0, $t2 		# 	
	syscall  			# 		print_string(", ");

	addiu 	$t3, $t3, 4 		# 		a++;
	j 	printarrfor
printarrendfor:				# 	}
	jr 	$ra

