.text
.globl main

main:


    li x22, 10
    li x23, 4
    li x20, 1

    li t0, 1
    beq x20, t0, case1
    li t0, 2
    beq x20, t0, case2
    li t0, 3
    beq x20, t0, case3
    li t0, 4
    beq x20, t0, case4
    j default

    case1:
        add x21, x22, x23
        j end

    case2:
        sub x21, x22, x23
        j end

    case3:
        slli x21, x22, 1
        j end

    case4:
        srai x21, x22, 1
        j end

    default:
        li x21, 0

end:
j end 