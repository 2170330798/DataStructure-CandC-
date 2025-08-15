#include <stdio.h>
#include <stdlib.h>

struct node
{
    int a;
    char b;
    struct node* next;
}node;


int main()
{
    
    printf("%x\n", node); 
    printf("%x\n", &node.a);
    printf("%x\n", &node.b);
    printf("%x\n", &node.next);
    return 0;
}