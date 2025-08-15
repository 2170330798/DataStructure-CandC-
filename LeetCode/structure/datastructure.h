#ifndef DATASTRUCTURE_H_INCLUDED
#define DATASTRUCTURE_H_INCLUDED

//List
struct ListNode {
    int value;
    struct ListNode *next;
};

struct ListNode * init_list();
struct ListNode * create_list_node(int value);
void destory_list(struct ListNode *List);
void visit_list(struct ListNode *List);
//O(n)
void order_insert_node(struct ListNode *List, int value);
//O(1)
void reverse_insert_node(struct ListNode *List, int value);
//O(n)
void delete_node(struct ListNode *List, int value);


//Stack
struct StackNode {
    void *data;
    struct StackNode *next;
};

struct Stack {
    struct StackNode *top;
    int count;
};

//判断栈空
bool isEmpty(struct Stack *stack);
//初始化栈
struct Stack* initialization_stack();
//创建新节点
struct StackNode* create_stack_node(int value);
//入栈
void push(struct Stack *stack, int value);
//出栈并删除top指向的节点
int pop(struct Stack *stack);
//读取栈顶元素
int get_top(struct Stack *stack);
//销毁栈
void destory_stack(struct Stack *stack);


#define MAX_SZIE 10
struct HashNode
{
    int value;
    int index;
    int count;
    struct HashNode* next;
    
}*HashTable[MAX_SZIE];

int hash_code(int value);
struct HashNode* create_hash_node(int key, int value);
void insert_hash_node(int value);
void destory_hash_table();
bool contains(int key);
void visit_hash_table();

#endif // DATASTRUCTURE_H_INCLUDED