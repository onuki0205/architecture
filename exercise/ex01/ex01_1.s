    .data
A:  .word 31
B:  .word 53
C:  .word 11
S:  .word 0
    .text
main:
    lw  $8,A            #Aの値
    lw  $9,B            #Bの値
    lw  $10,C           #Cの値
    add $11,$8,$9       #$11 = $8 + $9
    sub $12,$11,$10     #$12 = $11 - $10
    ori $13,$12,3       #$13 = $12 | 3
    sw $13,S            #Sに$13を格納
exit:j exit

