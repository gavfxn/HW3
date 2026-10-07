li $t0, 1
li $t1, 101
li $v0, 1



loop:
li $v0, 1
move $a0, $t0
syscall

li $v0, 11
li $a0, 32
syscall
add, $t0, $t0, 1

bne $t0, $t1, loop 
