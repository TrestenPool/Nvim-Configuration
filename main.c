#include <stdio.h>
#include <string.h>

int main(void){
    printf("Hello world\n");

    for(int i = 0; i < 10; i++){
        int j = i + 1;
        while(j > i){
            j++;
            printf("j\n");
        }
    }
}

void fun1(){
    // do stuff
}

void fun2(){
    // do stuff
}

