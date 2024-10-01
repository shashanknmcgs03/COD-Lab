.data 
a: .byte 0x12 
.text  
la x10,a 
lbu x11,0(x10) 
andi x12,x11,0xE0 
bnez x12,exit 
addi x22,x0,5 
back:  
andi x12,x11,0x01 # anding the lsb to see if 1 is present 
beqz x12,next # branch if 1 is not present 
addi x23,x23,1 # add 1 to counter 
next:  
srli x11,x11,1 # right shift original number to compare next lsb 
addi x22,x22,-1 
bnez x22,back 
exit: addi x15,x0,0x00 