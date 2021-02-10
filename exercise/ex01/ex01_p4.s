      .data 
N:    .word 10                            # The length of Array 
A:    .word 8                             # A[0] = 8 
      .word 4                             # A[1] = 4 
      .word 7 
      .word 12 
      .word 13 
      .word 19 
      .word 23 
      .word 43
      .word 56                            # A[8] = 56 
      .word 32                            # A[9] = 32 
B:    .space 40                           # 配列B の格納先を確保する。大きさは40バイト(10ワード分)
      .text 
main:
      lw $t0, N                           #配列Aの要素数
      la $t1, A                           #配列Aのアドレス
      addi $t2, $t0, -1                   #N-1
      addi $t3, $t0, -2                   #N-2
      or $t4, $0, $0                      #i=0
      or $t5, $0, $t3                     #j=N-2

      loop1:
            slt $t6, $t4, $t2             #i<N-1 ならば $t6=0
            beq $t6, $0, exit             #$t6==0 ならば exit
            la $t1, A                     #配列Aのアドレスをロード
            addi $t1, $t1, 32             #配列Aの最後から２番目のアドレス
            or $t5, $0, $t2               #j=N-2

      loop2:
            slt $t6, $t4, $t5             #i<N-2 ならば $t6=0
            beq $t6, $0 loopend1          #$t6==0 ならば loopend1

            lw $t7, 0($t1)                #A[j]の要素
            lw $t8, 4($t1)                #A[j+1]の要素
            slt $t9, $t7, $t8             #A[j]<A[j+1] ならば 1 でなければ 0
            beq $t9, $0, loopend2         #$t9==0 ならば loopend2
            sw $t7, 4($t1)                #A[j+1]の要素
            sw $t8, 0($t1)                #A[j]の要素
            
      loopend2:
            addi $t1, $t1, -4             #A[j]の直前の要素のアドレス
            addi $t5, $t5, -1             #j--
            j loop2

      loopend1:
            addi $t4, $t4, 1              #i++
            j loop1

exit:
      j exit
