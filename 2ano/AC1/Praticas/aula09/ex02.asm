        .data
k1:        .double 5.0
k2:        .double 9.0
k3:        .double 32.0
k4:        .double 0.0
k5:        .double 100.0
        .text
        .globl main

f2c:                # double f2c(double ft){
    la     $t0, k3        #
    l.d     $f0, 0($t0)     #     $f0 = 32.0
    
    la    $t0, k2
    l.d    $f2,0($t0)    # $f2 = 9.0
    la    $t0, k1
    l.d    $f4,0($t0)    # $f4 = 5.0
    
    sub.d     $f0, $f12, $f0 
    mul.d    $f0, $f0, $f4    # $f0 = 5.0 * (ft - 32.0)
    div.d    $f0, $f0, $f2    # $f0 = (5.0 * (ft - 32.0)) / 9.0

    jr     $ra         # return f0 
    
#####################################################################    
# MAPA DE REGISTOS
# $t0: ft
# $t1: ct 

main:
    addiu  	$sp, $sp, -4
    sw    	 $ra, 0($sp)
    
    la     	$t0, k4
    l.d    	$f0, 0($t0)     	#     $f0 = ft = 0.0;
    l.d    	$f2, 0($t0)     	#     $f2 = ct = 0.0;
while:                			#     while(1) {
    la     	$t0, k5    		#
    l.d    	$f4, 0($t0)     	#         $f4 = 100.0
    
    c.le.d 	$f2, $f4
    bc1f 	endwhile    		#         if( ct > 100.0) break;
     
    li     	$v0, 7        		#
    syscall         			#         read_double();     
    mov.d     	$f12, $f0     		#
    jal     	f2c
    mov.d     	$f2, $f12     		#         ct = f2c(ft);
    
    li     	$v0, 3
    mov.d     	$f12, $f0     		# 
    syscall    
    
    j     while         	#
endwhile:            #     }
     
    lw     $ra, 0($sp)
    addiu     $sp, $sp, 4    
    jr     $ra 