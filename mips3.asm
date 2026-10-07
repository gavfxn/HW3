li $a0, 0
li $t0, 0
li $t1, 100



loop:

add $t0, $t0, 2

add $a0, $a0, $t0

bne $t0, $t1, loop 


li $v0, 1
syscall
