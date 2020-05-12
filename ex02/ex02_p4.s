        .data 
A:      .word 13    #乗数
B:      .word 37    #被乗数
C:      .word 0     #積

D:      .word 16    #計算する分のビット数    
        .text

main:
        lw $t1, A           #乗数の値
        lw $t2, B           #被乗数の値
        lw $t3, C           #積の値
        lw $t4, D           #計算する分のビット数
        or $t5, $0, $0        #i=0
        addi $t6, $0, 1     #各ビットで1/0をチェックする(チェックビット)

loop:
        slt $t7, $t5, $t4   #1<N ならば $t7=1
        beq $t7, $0 store #$t7=0 ならば loopend

        ###各ビットが1/0を判断
        and $t8, $t2, $t6   #$t8=$t2+$t6
        beq $t8, $0 loopend #$t8=0 ならば loopend

        add $t3, $t3, $t1   #積をたす
        j loopend

loopend:
        addu $t6, $t6, $t6  #チェックビットを左シフト
        addu $t1, $t1, $t1  #乗数を左シフト
        addi $t5, $t5, 1    #i++
        j loop

store:
        la $t9, C           #積のアドレス
        sw $t3, 0($t9)      #結果をCに保存

exit:
        j exit