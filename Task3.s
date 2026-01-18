.text
    .globl main

main:
    li x20, 5          #a = 5
    li x21, 0          #b = 0

    addi x20, x21, 32  #a = b + 5

    add  x5, x20, x21 #x5 = a + b
    addi x22, x5, -5  #d = (a + b) - 5

    sub  x6, x20, x22 #x6 = a - d
    sub  x7, x21, x20 #x7 = b - a
    add  x6, x6, x7   #x6 = (a - d) + (b - a)
    add  x23, x6, x22 #e = ((a - d) + (b - a)) + d

    add  x23, x23, x20 #e = e + a
    add  x23, x23, x21 #e = e + b
    add  x23, x23, x22 #e = e + d

end:
    j end            


    






