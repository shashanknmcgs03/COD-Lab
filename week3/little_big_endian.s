    .data 
    a: .word 0x12345678

    .text
    la x10,a
    lw x11,0(x10)
    andi x12,x11,0xFF
    slli x13,x12,24

    srli x11,x11,8
    andi x12,x11,0xFF
    slli x14,x12,16
    add x13,x14,x13

    srli x11,x11,8
    andi x12,x11,0xFF
    slli x14,x12,8
    add x13,x14,x13

    srli x11,x11,8
    andi x12,x11,0xFF
    slli x14,x12,0
    add x13,x14,x13

    sw x13, 4(x10)