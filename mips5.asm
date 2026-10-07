li $t0, 0
li $t1, 101
li $v0, 1

li $t2, 0
li $t3, 0

j loop

#FOLLOWING CODE IS ONLY CALLED FROM JUMP STATEMENTS IN THE LOOP.

printNum:
li $v0, 1
add $a0, $t0, $zero
syscall


j printNumEnd


printNewLine:
li $v0, 11
li $a0, 10
syscall
j printNewLineEnd

fizz:

li $t2, 0

li $a0, 102
syscall
li $a0, 105
syscall
li $a0, 122
syscall
li $a0, 122
syscall



beq $t3, 5, buzz
j fizzEnd


buzz:

li $t3, 0

li $a0, 98
syscall
li $a0, 117
syscall
li $a0, 122
syscall
li $a0, 122
syscall


j buzzEnd


#ALL PRIOR CODE IS CALLED TO IN JUMP STATEMENTS. AFTER INITIALIZATION OF REGISTERS, CODE IMMEDIATELY JUMPS HERE


loop:


beq $t2, 3, fizz
beq $t3, 5, buzz


j printNum

fizzEnd:
buzzEnd:
printNumEnd:





add $t0, $t0, 1
add $t2, $t2, 1
add $t3, $t3, 1

j printNewLine
printNewLineEnd:


bne $t0, $t1, loop



