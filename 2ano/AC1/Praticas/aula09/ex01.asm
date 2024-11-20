	.data
k1:	.float 2.59375
k2:	.float 0
	.text
	.globl main

# Mapa de registos
# res: $f0
# val: $t0

main:

do:				# do
	li	$v0, 5
	syscall

	move	$t0, $v0	# val = read_int()

	mtc1	$t0, $f0
	cvt.s.w	$f0, $f0 	# converte int para float

	la	$t0, k1
	l.s	$f2, 0($t0)	# $f2 = 2.59375

	mul.s	$f0, $f0, $f2	# res=...

	mov.s	$f12, $f0
	li	$v0, 2

	syscall			# print_float(res)

	la	$t0, k2
	l.s	$f2, 0($t0)

	c.eq.s	$f0, $f2
	bc1f	do

while:

	jr	$ra
