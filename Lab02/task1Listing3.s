# .text
# .globl main

# main:
#     # Listing 3
#     # Assuming variables f to j are in registers x19–x23
    
#     # Initialize values for testing
#     li x19, 5          # i = 5
#     li x20, 6          # j = 6
    
#     bne x19, x20, Else # if (i != j) go to Else
#     add x21, x19, x20  # f = g + h (skipped if i != j)
#     j Exit             # jump to Exit
    
# Else:
#     sub x21, x19, x20  # f = g - h
    
# Exit:
#     # Proper way to end the program in most simulators
#     li a7, 10          # Environment call for 'exit'
#     ecall



# assuming that variables f to j are in registers x19–x23
.text
.globl main

main:

    li x19, 5          # i = 5
    li x20, 6          # j = 6
    li x21, 7
    li x22, 8
    li x23, 9

        
    bne x22, x23, Else
    add x19, x20, x21
    beq x0,x0 , Exit

    Else: sub x19, x20, x21
    Exit:

end:
j end