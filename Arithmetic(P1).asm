# A demonstration of some simple MIPS instructions
# used to test QtSPIM

	# Declare main as a global function
	.globl main 

	# All program code is placed after the
	# .text assembler directive
	.text 		

# The label 'main' represents the starting point
main:
	li $t0, 15 	#A = 15
   	li $t1, 10 	#B = 10
   	li $t2, 7 	#C = 7
   	li $t3, 2 	#D = 2
   	li $t4, 18 	#E = 18
   	li $t5, -3 	#F = -3
	add $s0, $t0, $t1 #$s0 = A + B
   	sub $s1, $t2, $t3 #$s1 = C - D
   	add $s2, $t4, $t5 #$s2 = E + F
   	sub $s3, $t0, $t2 #$s3 = A - C
   	add $s4, $s0, $s1 #$s4 = (A+B) + (C-D)
   	sub $s5, $s2, $s3 #$s5 = (E+F) - (A-C)
   	add $s6, $s4, $s5 #$s6 = (A+B) + (C-D) + (E+F) - (A-C)
   	sw $s6, Z 

	# Exit the program by means of a syscall.
	# There are many syscalls - pick the desired one
	# by placing its code in $v0. The code for exit is "10"
	li $v0, 10 # Sets $v0 to "10" to select exit syscall
	syscall # Exit

	# All memory structures are placed after the
	# .data assembler directive
	.data

	# The .word assembler directive reserves space
	# in memory for a single 4-byte word (or multiple 4-byte words)
	# and assigns that memory location an initial value
	# (or a comma separated list of initial values)
Z: .word 0
test: .asciiz "Z="
