	.data
	.text
	.globl exchange


exchange:				# void exchange(char *c1, char *c2) {
	lb	$t0, 0($a0)		#
	lb	$t1, 0($a1)
	sb	$t1, 0($a0)
	sb	$t0, 0($a1)
	jr $ra				# }
