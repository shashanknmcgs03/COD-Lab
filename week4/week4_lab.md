## Observations

a) 2out5
The program loads the byte 0x12 from memory and checks the upper 3 bits. If any of those bits are 
set, it exits. It then counts the number of 1s in the lower 5 bits by iterating through them, 
incrementing a counter whenever a 1 is found. The program finishes after examining all 5 bits. 

b) bubblesort
The program sorts an array using the bubble sort algorithm, comparing and swapping adjacent 
elements to arrange them in ascending order. The outer loop manages the passes over the array, 
with each pass placing the largest unsorted element in its correct position. It stops early if no swaps 
are made in a pass, indicating the array is already sorted

c) swap2num

The program loads the values 1 and 2 from memory into registers. It then swaps these values by 
storing 2 in the location where 1 was and 1 in the location where 2 was. This results in the values 1 
and 2 being swapped in memory. After execution, the memory locations originally holding 1 and 2 
will have 2 and 1, respectively.
