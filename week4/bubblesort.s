.data 
arr: .word 0x00000005, 0x00000003, 0x00000004, 0x00000001, 0x00000002 
.text 
    la x2, arr              
    addi x18, x0, 5         
    addi x19, x0, 0         
i_loop: 
    la x2, arr              
    addi x20, x0, 0         
    addi x21, x0, 0         
j_loop: 
    lw x22, 0(x2)           
    lw x23, 4(x2)           
    bge x22, x23, no_swap   
     sw x23, 0(x2)           
    sw x22, 4(x2) 
    addi x21, x0, 1         
no_swap: 
    addi x2, x2, 4          
    addi x20, x20, 1        
    blt x20, x18, j_loop    
    addi x18, x18, -1       
    bne x21, x0, i_loop     
    bgt x18, x0, i_loop     
exit: 
    jal x0, 0    