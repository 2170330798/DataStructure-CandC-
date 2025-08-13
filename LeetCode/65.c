// #include <stdio.h>
// #include <stdlib.h>
// #include <stdbool.h>

// #define MAX_SIZE 21
// struct Stack
// {
//     char array[MAX_SIZE];
//     int top; 
// };

// struct Stack* stack = NULL;

// void init_stack()
// {
//    struct Stack* stack = (struct Stack*)malloc(sizeof(struct Stack));
//    stack->top = -1;
// }

// int pop()
// {
//     if (stack && stack->top == -1 || !stack)
//         return -1;
//     return stack->array[stack->top--];
// }

// void push(char val)
// {
//     if(stack && stack->top != MAX_SIZE)
//     {
//         stack->array[stack->top++] = val;
//     }
// }

// char get_top()
// {
//     return stack != NULL && stack->top != -1 ? stack->array[stack->top] : "\0";
// }

// void destory()
// {
//     free(stack);
// }

// bool isNumber(char* s) 
// {
    
// }