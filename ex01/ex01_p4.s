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