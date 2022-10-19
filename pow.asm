# pow.asm program
#

# C++ (NON-RECURSIVE) code snippet of pow(x,n):
#   int x, n, pow=1; 
#   cout << "Enter a number x:\n"; 
#   cin >> x;
#   cout << "Enter the exponent n:\n"; 
#   cin >> n; 
#   for (int i = 1; i <= n; i++) { 
#   	pow = pow * x; 
#   } 
#   cout << "Power(x,n) is:\n" << pow << "\n";
#
# Assembly (NON-RECURSIVE) code version of pow(x,n):
#
.data

	# declerations
	promptX: .asciiz "Enter a number x:\n"
	promptN: .asciiz "Enter the exponent n:\n"
	output: .asciiz "Power(x,n) is:\n"

#Text Area (i.e. instructions)
.text
main:
	
	#print "enter" for x value
    li $v0 4
    la $a0 promptX
    syscall

    #get input from command line and store in $t0
    li $v0 5
    syscall
    move $t0 $v0

	#print "enter" for n value
    li $v0 4
    la $a0 promptN
    syscall

    #get input from command line and store in $t1
    li $v0 5
    syscall
    move $t1 $v0

	li $t2 1
	

loop:
	beq $t1 $0 printValue
	mult $t2 $t0
	mflo $t2
	addi $t1 $t1 -1
	j loop


printValue:
	#print output
    li $v0 4
    la $a0 output
    syscall

    #print calculated value
    li $v0 1
    move $a0 $t2
	syscall

	j exit


exit:
	#exit spim
    li $v0 10
    syscall

