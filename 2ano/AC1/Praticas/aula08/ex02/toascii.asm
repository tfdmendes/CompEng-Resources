	.data
	.text
	.globl toascii

toascii:					# char toascii(char v) {
	addiu 	$a0, $a0, '0'			# 	v+= '0';
toascii_if:					# 	if ( v > '9'){
	ble 	$a0, '9', toascii_endif 	#	
	addiu 	$a0, $a0, 7 
toascii_endif:					# 	}	
	move 	$v0, $a0
	jr	$ra 				# }
