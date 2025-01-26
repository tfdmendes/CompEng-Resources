	.data
	.text
	.globl main
	
main:
	lui 	$t0, 0x3A60
	mtc1 	$t0, $f2
	
	lui 	$t0, 0xBA60
	mtc1 	$t0, $f4
	
	sub.s 	$f0, $f2, $f4
	
	jr 	$ra