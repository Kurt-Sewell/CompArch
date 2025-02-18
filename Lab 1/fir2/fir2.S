# fir.S 
# assembly language of Finite Impulse Response (FIR)

// a0: base address of x
// a1: base address of c
// a2: base address of y, later used as pointer to y[j] in j loop
// a3: n
// a4: m

// t0: &y[n-m] to check termination of j loop
// t1: &c[m] to check termination of i loop
// t2: &x[j+m-1]
// t3: sum 
// t4: pointer to c[i] in i loop
// t5: pointer to x[j-i+(m-1)] 
// t6: value of c[i]
// a5: value of x[j-1+(m-1)]

.global fir

fir:

sub t0, a3, a4      //initialize t0 to &y[n-m]
slli t0, t0, 2
add t0, t0, a0

slli t1, a4, 2      //initialize t1 to c
add t1, t1, a1

addi t2, a4, -1     //initialize t2 to &x[j+m-1]
slli t2, t2, 2
add t2, t2, a0

forj:
    bge a2, t0, donej
    mv t3, zero           //sets t3 = to zero

    mv t4, zero         //this is much more reliable than sketchy integer addition
    add t4, t4, a1      //addi t4, t4, -16 started throwing weird errors

    mv t5, zero
    add t5, t5, t2      //points to x[j-i+(m-1)]

    fori:
        bge t4, t1, donei

        lw a5, 0(t5)           //load value of x
        lw t6, 0(t4)           //load value of c
        mul a6, a5, t6      //follow PEMDAS multiply c[i] by x[i]
        srli a6, a6, 31    //shift left 31 bits to become a 32 bit number again
        add t3, a6, t3      //adds result to t3
        addi t4, t4, 4      //increment c
        addi t5, t5, -4     //decrement x   
        j fori
    donei:
    sw t3, 0(a2)            //store result in y @ a2
    addi a2, a2, 4          //increment j
    addi t2, t2, 4          //increment place in x
    j forj
donej:
    ret                 # all done; return	

/* Notes: 
a2 is an adress that we will be incrementing at the end of the j loop
t3 is the sum of y (the output/value of y), so we will set t3 = 0 at the start of the j loop
the multiplication results in a 64 bit value, this needs to be shifted back to 32 bits just before we store the value of ts into the y array
we stop the for loop when a2 = t0
the i loop is the  filter multiplying and adding, the j loop is moving the block of 4 down by 1
befor we increment we neeed to store word in y at adress a2
we do need to load word at the start of our loop to do the funny math on
the i loop is: for i when a1 = t1
might need to decrement t5, but incremet t2 in the i loop (jacob said this is how we dont use i and j honestly idk)
I do have a paper that Thomas wrote a little bit on that might help conseptualy
*/
//80000608