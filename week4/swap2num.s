.data 
num1: .word 1,2     
.text 
la x5, num1       
lw x10, 0(x5)        
lw x11, 4(x5)        
sw x11, 0(x5)        
sw x10, 4(x5)     