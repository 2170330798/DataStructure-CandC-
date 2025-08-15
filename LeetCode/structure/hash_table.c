#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#define MAX_SZIE 10

struct HashNode
{
    int value;
    int index;
    int count;
    struct HashNode* next;
    
}*HashTable[MAX_SZIE];


int hash_code(int value)
{
    return value % MAX_SZIE;
}

struct HashNode* create_hash_node(int key, int value)
{
     struct HashNode* node = (struct HashNode*)malloc(sizeof(struct HashNode));
     node->index = key;
     node->value = value;
     node->count = 0;
     node->next = NULL;
     return node;
}

void insert_hash_node(int value)
{
     int index = hash_code(value);
     struct HashNode* node = create_hash_node(index, value);
     if(!HashTable[index])
     {
        HashTable[index] = node;
        HashTable[index]->count++;
     }
    else
    {
        node->next = HashTable[index];
        HashTable[index] = node;
        HashTable[index]->count++;
    }
}

void destory_hash_table()
{
     for (int index = 0; index < MAX_SZIE ; index++)
     {
        if (HashTable[index] == NULL)
            continue;
        struct HashNode* ptr = HashTable[index], *tmp = NULL; 
        while(ptr)
        {
            tmp = ptr->next;
            free(ptr);
            ptr = tmp;
        }
     }
}

bool contains(int key)
{
     int index = hash_code(key);
     if (HashTable[index]->value == key)
        return true;
     struct HashNode* ptr = NULL;
     while(HashTable[index])
     {
          ptr = HashTable[index];
          while(ptr)
          {
              if (ptr->value == key)
                   return true;
              ptr = ptr->next;
          }
     }
     return false;
}


void visit_hash_table()
{
    struct HashNode* ptr = NULL;
    for (int index = 0 ;  index < MAX_SZIE ; index++)
    {
        ptr = HashTable[index];
        printf("[%d]", index);
        while(ptr)
        {
            printf("->%d ", ptr->value);
            ptr = ptr->next;
        }
        if(!ptr)
            printf("->NULL\n");
    }
}


int main()
{
    int nums[] = {100,4,200,1,3,2};
    int numsSize = sizeof(nums)/sizeof(int);
    for (int i = 0; i < numsSize; i++)
    {
        insert_hash_node(nums[i]);
    }
    visit_hash_table();
    destory_hash_table();
    return 0;
}