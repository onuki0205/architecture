        .data 
N:      .word 10                        #The length of Array
A:      .word 9                         #A[0] = 9
        .word 3                         #A[1] = 3
        .word 12
        .word 7
        .word 23
        .word 1
        .word 23
        .word 43
        .word 54                        #A[8] = 54
        .word 31                        #A[9] = 31
S:      .word 0
        .text
main:
        or  $8,$0,$0                    #i=0
        lw  $9,N                        #Nの値
        lw  $10,S                       #Sの値
        la  $11,A                       #配列Aのアドレス

        loop:
            beq  $8, $9, loopend        #$8==$9 ならば loopend
            lw   $12,0($11)             #A[$11]の値
            addi $8,$8,1                #i++
            add  $10,$10,$12            #$10 += $12
            addi $11,$11,4      　      #アドレスを次へ
            j loop 
        loopend:

exit:j exit
