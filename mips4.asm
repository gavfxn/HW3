li $t0, 10
li $t1, 20

li $t2, 268500992
li $t3, 268500996

sw $t0, 0($t2)
sw $t1, 0($t3)

li $t0, 0
li $t1, 0

lw $t4, 0($t2)
lw $t5, 0($t3)

add $t6, $t4, $t5

li $t7, 268501000

sw $t6, 0($t7)
