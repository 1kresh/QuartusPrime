.data
fin: .asciiz "Enter number : "
fout: .asciiz "Answer : "

.text 
main:
li $v0,4
la $a0, fin
syscall
li $v0,5
syscall
move $t0,$v0
sgn:
bltz $t0,lower
beq $t0,$zero,equal
bgtz $t0,greater
lower:
li $t0, -1
j end
equal:
li $t0, 0
j end
greater:
li $t0, 1
j end
end:
li $v0,4
la $a0, fout
syscall
li $v0,1
move $a0,$t0
syscall
