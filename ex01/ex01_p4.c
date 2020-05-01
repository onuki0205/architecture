/*バブルソート*/
#include<stdio.h>

int main(){
    int n = 10;
    int a[]={8,4,7,12,13,19,23,43,56,32};
    int b[10];

    for(int i = 0; i < n-1; i++){
	    for(int j = n-2; j >= i; j--){
	        if(A[j] > A[j+1]) {
	            tmp = A[j];
	            A[j] = A[j+1];
	            A[j+1] = tmp;
	        }
	    }
    }

    for(int i = 0; i < n; i++){
	    printf("%d",a[i]);
        if(i!=n)printf(" ");
    }
    printf("\n");
    
    
    
    return 0;
}