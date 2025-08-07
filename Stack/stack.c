#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

//定义栈节点
struct StackNode {
    void *data;
    struct StackNode *next;
};

//定义链栈
struct Stack {
    struct StackNode *top;
    int count;
};

//判断栈空
bool isEmpty(struct Stack *stack)
{
     return stack->top == NULL || stack == NULL;
}

//初始化栈
struct Stack * initialization_stack()
{
     struct Stack *stack = (struct Stack*)malloc(sizeof(struct Stack));
     if (stack == NULL){
        return NULL;
     }
     stack->count = 0;
     stack->top = NULL;
     printf("Stack is initialized!\n");
     return stack;
}

//创建新节点
struct StackNode * create_node(int value)
{
     struct StackNode *new_node = (struct StackNode*)malloc(sizeof(struct StackNode));
     if (new_node == NULL)
        return NULL;
     new_node->data = value;
     new_node->next = NULL;
     printf("Node creadted!\n");
     return new_node;
}

//入栈
void push(struct Stack *stack, int value)
{
     struct StackNode *new_node = create_node(value);
     new_node->next = stack->top;
     stack->top = new_node;
     stack->count++;
     printf("Push successfully!\n");
}

//出栈并删除top指向的节点
int pop(struct Stack *stack)
{
    if (isEmpty(stack)){
        printf("Stack is empty! [return -1]\n");
        return -1;
    }
    int tmp = stack->top->data;
    struct StackNode *tmprt = stack->top->next;
    free(stack->top);
    stack->top = tmprt;
    stack->count--;
    printf("Pop successfuuly!\n");
    return tmp;
}

//读取栈顶元素
int get_top(struct Stack *stack)
{
    return (isEmpty(stack)) ? -1 : stack->top->data;
}

//销毁栈
void destory_stack(struct Stack *stack)
{
    if (stack == NULL){
        printf("Stack is destoried!\n");
        return ;
    }
    struct StackNode *tmp = NULL, *ptr = stack->top;
    while(ptr != NULL)
    {
        tmp = ptr->next;
        free(ptr);
        ptr = tmp;
    }
    free(stack);
    printf("Stack is destoried!\n");
}

int main()
{
    struct Stack *stack = initialization_stack();
    push(stack, 1);
    push(stack, 2);
    push(stack, 3);
    printf("--------Stack-------\n");
    printf("\t[count: %d]\n", stack->count);
    printf("---------1----------\n");
    printf("\ttop->: %d |['pop()']\n" ,pop(stack));
    printf("\ttop->: %d |['get_top()']\n" , get_top(stack));
    printf("--------Stack-------\n");
    printf("\t[count: %d]", stack->count);
    destory_stack(stack);
    return 0;
}