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
      or  $8,$0,$0
      lw  $9,N
      la  $10,A
      la  $11,B
      la  $12,0($10)

      loop:
            beq  $8, $9, loopend
            lw   $13,0($12)
            sw   $13,0($11)   
            addi $8,$8,1
            addi $11,$11,4
            addi $10,$10,4      　 
            j loop 
      loopend:


exit:j exit