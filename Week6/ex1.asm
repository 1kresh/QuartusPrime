.data
y: .asciiz "Enter y : "
z: .asciiz "Enter z : "
f: .asciiz "Enter f : "
q: .asciiz "Enter q : "
x : .asciiz "x is: "
.text
li $v0,4
la $a0, y
syscall
li $v0,5
syscall
move $t1,$v0

li $v0,4
la $a0, z
syscall
li $v0,5
syscall
move $t2,$v0

li $v0,4
la $a0, f
syscall
li $v0,5
syscall
move $t3,$v0

li $v0,4
la $a0, q
syscall
li $v0,5
syscall
move $t4,$v0

mul $t5,$t2,$t2
mul $t6,$t5,$t1
div $t7,$t6,$t3
sub $t8,$t7,$t4

li $v0,4
la $a0, x
syscall
li $v0,1
move $a0,$t8
syscall
li $v0,10
syscall