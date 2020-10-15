.data
fin: .asciiz "Enter string : "
.text 
main:
li $t0,0
li $t3,32
li $t8,1
li $a1,999

li $v0,4
la $a0,fin
syscall

li $v0,8
syscall

loop:
add $t1,$a0,$t0

lb $t2,0($t1)                   
beq $t2,$zero,end
beq $t2,$t3,counter

addi $t0,$t0,1
j loop

counter:
addi $t8,$t8,1
addi $t0,$t0,1
j loop

end:
li $v0,1
move $a0,$t8
syscall