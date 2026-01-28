.text
.globl main

main:
    li x5, 3          # a (outer loop limit)
    li x6, 4          # b (inner loop limit)
    li x7, 0          # i counter
    li x10, 0x200     # base address of array D

outer_loop:
    bge x7, x5, end_loop
    li x29, 0         # reset j for each i

inner_loop:
    bge x29, x6, inc_i

    li x11, 4
    mul x11, x11, x29     # offset = 4 * j
    add x11, x11, x10     # base + offset

    add x12, x7, x29      # value = i + j
    sw  x12, 0(x11)

    addi x29, x29, 1
    j inner_loop

inc_i:
    addi x7, x7, 1
    j outer_loop

end_loop:
    j end

end:
    j end











    