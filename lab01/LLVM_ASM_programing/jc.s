    .text
    .globl calculateFactorial

calculateFactorial:
    addi sp,sp,-16
    sw ra,12(sp)
    sw s0,8(sp)
    mv s0,a0

    #if (n == 0 || n == 1) return 1;
    li t0,0
    beq s0,t0,.Lreturn1
    li t0,1
    beq s0,t0,.Lreturn1

    #int factorial = 1;
    li t1,1

    #int i = 2
    li t2,2

.Lwhile:
    #while(i <= n)
    bgt t2,s0,.Lwhile_end

    #factorial = factorial * i;
    mul t1,t1,t2

    #i++;
    addi t2,t2,1

    j .Lwhile

.Lwhile_end:
    mv a0,t1
    j .Lepilogue

.Lreturn1:
    li a0,1

.Lepilogue:
    lw ra,12(sp)
    lw s0,8(sp)
    addi sp,sp,16
    ret

    .globl main
main:
    addi sp,sp,-16
    sw ra,12(sp)
    sw s0,8(sp)

    #number = getint()
    call getint
    mv s0,a0

    #if(number < 0)
    bltz s0,.Lif_negative

    #else result = calculateFactorial(number)
    mv a0,s0
    call calculateFactorial
    call putint
    j .Lend
.Lif_negative:
    li a0, -1
    call putint

.Lend:
    lw ra,12(sp)
    lw s0,8(sp)
    addi sp,sp,16
    li a0,0
    ret
    




