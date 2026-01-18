.text
.globl main

main:
    # --------Initialize Base Addresses------------
    li x10, 0x100      # Base address for Array A (Byte/Char)
    li x11, 0x200      # Base address for Array B (Half-word/Short) 
    li x12, 0x300      # Base address for Array C (Word/Int) 

    # --------Initialize Array A------------
    li x5, 2
    sb x5, 0(x10)      # A[0]
    li x5, 4
    sb x5, 1(x10)      # A[1]
    li x5, 6
    sb x5, 2(x10)      # A[2]
    li x5, 8
    sb x5, 3(x10)      # A[3]

    # --------Initialize Array B-----------
    li x6, 3
    sh x6, 0(x11)      # B[0]
    li x6, 5
    sh x6, 2(x11)      # B[1] (offset 2 because short is 2 bytes)
    li x6, 7
    sh x6, 4(x11)      # B[2] (offset 4)
    li x6, 9
    sh x6, 6(x11)      # B[3] (offset 6)

    # --------Addition Logic-----------
    lb x13, 0(x10)     # load 1-byte char 
    lh x14, 0(x11)     # load 2-byte short 
    add x15, x13, x14
    sw x15, 0(x12)     # Store 4-byte word 

    lb x13, 1(x10)
    lh x14, 2(x11)     # offset must be 2
    add x15, x13, x14
    sw x15, 4(x12)     # offset must be 4

    lb x13, 2(x10)
    lh x14, 4(x11)     # offset must be 4
    add x15, x13, x14
    sw x15, 8(x12)     # offset must be 8

    lb x13, 3(x10)
    lh x14, 6(x11)     # offset must be 6
    add x15, x13, x14
    sw x15, 12(x12)    # offset must be 12

end:
    j end             



















    