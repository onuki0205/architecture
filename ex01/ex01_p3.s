      .data 
N:    .word 10    # The length of Array 
A:    .word 8     # A[0] = 8 
      .word 4     # A[1] = 4 
      .word 7 
      .word 12 
      .word 13 
      .word 19 
      .word 23 
      .word 43 
      .word 56    # A[8] = 56 
      .word 32    # A[9] = 32 
B:    .space 40   # 配列B の格納先を確保する。大きさは40バイト(10ワード分)
      .text 
main: 
      lw  $8, N                     #Nの値
      la  $9, A                     #配列Aのアドレス
      la  $10, B                    #配列Bのアドレス
      or  $11, $0, $0               #i=0
      la  $13, 0($9)                #配列Aのアドレス
      la  $14, B                    #配列Bのアドレス

      loop:
            beq  $8, $11, loopend    #i == N ならば loopend
            lw   $12,0($13)         #A[0]の値
            sw   $12,0($10)         #A[0]の値をB[0]に格納
            addi $11,$11,1            #i++
            addi $13,$13,4          #配列Aのアドレスずらし
            addi $10,$10,4          #配列Bのアドレスずらし
            j loop 
      loopend:


exit:j exit

