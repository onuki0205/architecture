＃配列の総和計算
        .data 
N:      .word 10
A:      .word 8
        .word 4
        .word 7
        .word 12
        .word 13
        .word 19
        .word 23
        .word 43
        .word 56
        .word 32
S:      .word 0
        .text
main:
        or  $8,$0,$0
        lw  $9,N
        lw  $10,S
        la  $11,A

        loop:
            beq  $8, $9, loopend
            lw   $12,0($11) 
            addi $8,$8,1
            add  $10,$10,$12
            addi $11,$11,4      　 
            j loop 
        loopend:

exit:j exit