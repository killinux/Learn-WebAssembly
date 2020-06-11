#include <stdio.h>
#include <stdlib.h>
int add(int a,int b);
int thistest(){
    return 2*4;
}
struct Node {
  int id;
  int categoryId;
  float rawAmount;
  float cookedAmount;
  struct Node *next;
  struct Node *prev;
};
int testadd(){
    return add(2,5);
}
int testnode(){
    struct Node *newNode = (struct Node *) malloc(sizeof(struct Node));
    newNode->id = 124;
    printf("newnode before:%d \n",newNode->id);
    //free(newNode);//不能用free
//    printf("newnode after:%d \n",newNode->id);
    return  newNode->id;
}
//int main(){
//    testnode();
//}
