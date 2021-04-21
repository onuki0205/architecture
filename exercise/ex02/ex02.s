        .data 
A:      .word 26    #被乗数
B:      .word 27    #乗数
C:      .word 0     #積

D:      .word 16    #計算する分のビット数    
        .text

main:
        lw $a0, A           #被乗数の値
        lw $a1, B           #乗数の値
        lw $v0, C           #積の値

        lw $t0, D           #計算する分のビット数
        or $t1, $0, $0      #i=0
        or $t2, $0, 1     #各ビットで1/0をチェックする(チェックビット)

loop:
        slt $t3, $t1, $t0   #1<N ならば $t3=1
        beq $t3, $0 store #$t3=0 ならば store

        ###各ビットが1/0を判断
        and $t4, $a1, $t2   #$t4=$a1+$t2
        beq $t4, $0 loopend #$t4=0 ならば loopend

        add $v0, $v0, $ta0   #積をたす
        j loopend

loopend:
        add $a0, $a0, $a0  #チェックビットを左シフト
        add $t2, $t2, $t2  #乗数を左シフト
        addi $t1, $t1, 1    #i++
        j loop

store:
        la $t5, C           #積のアドレス
        sw $v0, 0($t5)      #結果をCに保存

exit:
        j exit