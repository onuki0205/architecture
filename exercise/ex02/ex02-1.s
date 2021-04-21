        .data 
A:      .word 5    #被乗数
B:      .word 3    #乗数
C:      .word 0     #積

N:      .word 16    #計算する分のビット数    
        .text

main:
        lw $a0,A           #被乗数の値
        lw $a1,B           #乗数の値
        lw $v0,C           #積の値

        lw $t0,N            #16bit
        or $t1,$0,1         #i=0

loop:
    #loopの条件文
    slt $t3,$1,$t0
    beq $t3,$0,store

    #対象のビットを取り出す
    andi $t4,$a0,1         #$t4=$a1&&$t2 各ビットが１なら１
    beq $t4,$0,loopend

    add $t3,$t3,$a1
    j loopend

loopend:
    add $a1,$a1,$a1
    addi $t1,$t1,1
    j loop

store:
    la $t5,C
    sw $t3,0($t5)

exit: j exit

