# min.asm program
#

.data

    # declerations

    prompt: .asciiz "Enter the next number:\n"
    minimum: .asciiz "Minimum: "
    newLine: .asciiz "\n"

#Text Area (i.e. instructions)
.text
main:
    #print "enter" for first value
    li $v0 4
    la $a0 prompt
    syscall

    #get input from command line and store in $t0
    li $v0 5
    syscall
    move $t0 $v0

    #print "enter" for second value
    li $v0 4
    la $a0 prompt
    syscall

    #get input from command line and store in $t1
    li $v0 5
    syscall
    move $t1 $v0
    
    #print "enter" for third value
    li $v0 4
    la $a0 prompt
    syscall

    #get input from command line and store in $t2
    li $v0 5
    syscall
    move $t2 $v0










    #checks if the first value is less than the second
    blt $t0 $t1 firstLessThanSecond

    #checks if the third value is less than the second
    blt $t2 $t1 thirdLessThanSecond

    #else print second value
    #print "minimum"
    li $v0 4
    la $a0 minimum
    syscall

    #print the min value (second input)
    li $v0 1
    move $a0 $t1
    syscall

    #print newline
    li $v0 4
    la $a0 newLine
    syscall

    j exit

#if the first value is less than the second
firstLessThanSecond:
    #branch if the second value is less than third
    blt $t2 $t0 thirdLessThanFirst

    #else print first value
    #print "minimum"
    li $v0 4
    la $a0 minimum
    syscall

    #print the min value (first input)
    li $v0 1
    move $a0 $t0
    syscall

    #print newline
    li $v0 4
    la $a0 newLine
    syscall

    j exit

thirdLessThanSecond: 
    #print "minimum"
    li $v0 4
    la $a0 minimum
    syscall

    #print the min value (third input)
    li $v0 1
    move $a0 $t2
    syscall

    #print newline
    li $v0 4
    la $a0 newLine
    syscall

    j exit


thirdLessThanFirst:
    #print "minimum"
    li $v0 4
    la $a0 minimum
    syscall

    #print the min value (third input)
    li $v0 1
    move $a0 $t2
    syscall

    #print newline
    li $v0 4
    la $a0 newLine
    syscall

    j exit

exit:
    #exit spim
    li $v0 10
    syscall
