#include <stdio.h>
main()
{
    static int mat1[4][4] = {
	{ 0, 0, 0, 1 },
	{ 0, 2, 0, 0 },
	{ 0, 0, 3, 0 },
	{ 4, 0, 0, 0 },
    };
    static int mat2[4][4] = {
	{ 0, 1, 2, 3 },
	{ 4, 5, 6, 7 },
	{ 8, 9, 10, 11 },
	{ 12, 13, 14, 15 },
    };
    static int result[4][4];
    int  i, j, k, s;
    /* 行列の乗算 */
    for( i = 0; i < 4; i++ ) {
	for( j = 0; j < 4; j++ ) {
	    s = 0;
	    for( k = 0; k < 4; k++ ) {
		s += mat1[i][k] * mat2[k][j];
	    }
	    result[i][j] = s;
	}
    }
    /* 結果の表示 */
    for( i = 0; i < 4; i++ ) {
	for( j = 0; j < 4; j++ ) {
	    printf("%3d", result[i][j]); 
	}
	printf("\n");
    }
}
