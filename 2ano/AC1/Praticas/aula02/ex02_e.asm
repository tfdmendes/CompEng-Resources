	.data
	.text
	.globl main
main: 	
	#num = gray;
	#num = num ^ (num >> 4);
	#num = num ^ (num >> 2);
	#num = num ^ (num >> 1);
	#bin = num;

	ori $t0, $0, 40		# Carrega o valor gray 7 em $t0 (gray)
	or $t1, $t0, $0	    	# num = gray
	
	# num = num ^ (num >> 4)
	srl $t3, $t1, 4	    	# $t1 >> 4 
	xor $t1, $t1, $t3	# $t1 ^ $t3
	
	# num = num ^ (num >> 2)
	srl $t3, $t1, 2	    	# $t1 >> 2
	xor $t1, $t1, $t3	# $t1 ^ $t3
	
	# num = num ^ (num >> 1)
	srl $t3, $t1, 1	    	# $t1 >> 1
	xor $t1, $t1, $t3	# $t1 ^ $t2
	
	or $t2, $t1, $0		# Passa o resultado de $t1 para $t2
	
	jr $ra			  
