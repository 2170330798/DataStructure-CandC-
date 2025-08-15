#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdbool.h>

struct HashNode
{
    int value;
    struct HashNode* next;
};

int hash_code(int value, int table_length)
{
    return abs(value) % table_length;
}

struct HashNode* create_hash_node(int value)
{
     struct HashNode* node = (struct HashNode*)malloc(sizeof(struct HashNode));
     node->value = value;
     node->next = NULL;
     return node;
}

bool contains(struct HashNode** hash_table, int table_length, int key)
{
    if(!hash_table)
        return false;
    int index = hash_code(key, table_length);
    struct HashNode* ptr = hash_table[index];
    while (ptr) {
        if (ptr->value == key) 
            return true;
        ptr = ptr->next;
    }
    return false;
}

void insert_hash_node(struct HashNode** hash_table, int table_length, int value)
{
     if(!hash_table)
        return ;
     int index = hash_code(value, table_length);
     if (contains(hash_table, table_length, value))
        return ;
     struct HashNode* node = create_hash_node(value);
     if(!hash_table[index])
        hash_table[index] = node;
     else
     {
        node->next = hash_table[index];
        hash_table[index] = node;
     }
}

void destory_hash_table(struct HashNode** hash_table, int table_length)
{
     if (!hash_table)
        return ;
     for (int index = 0; index < table_length ; index++)
     {
        if (hash_table[index] == NULL)
            continue;
        struct HashNode* ptr = hash_table[index], *tmp = NULL; 
        while(ptr)
        {
            tmp = ptr->next;
            free(ptr);
            ptr = tmp;
        }
     }
     free(hash_table);
}

struct HashNode** init_hash_table(int table_length)
{
       struct HashNode** table = (struct HashNode**)malloc(sizeof(struct HashNode*) * table_length);
       for (int index = 0; index < table_length ; index++)
            table[index] = NULL;
       return table;
}

void visit_hash_table(struct HashNode** hash_table, int table_length)
{
    struct HashNode* ptr = NULL;
    for (int index = 0 ;  index < table_length ; index++)
    {
        ptr = hash_table[index];
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

int longestConsecutive(int* nums, int numsSize) 
{
    if (!nums || numsSize == 0)
      return 0;
    int table_length = numsSize / 0.75;
    struct HashNode** hash_table = init_hash_table(table_length);
    for (int index = 0; index < numsSize ; index++)
        insert_hash_node(hash_table, table_length ,nums[index]);
    visit_hash_table(hash_table, table_length);
    struct HashNode* ptr = NULL;
    int max_length = 0, tmp_max_length = 0, index = 0, cur_value = 0;
    while(index < table_length)
    {
         ptr = hash_table[index];
         while (ptr) 
         {
            int current_value = ptr->value;
            if (!contains(hash_table, table_length, current_value - 1)) {
                tmp_max_length = 1;
                while (contains(hash_table, table_length, current_value + tmp_max_length))
                    tmp_max_length++;
                max_length = fmax(max_length, tmp_max_length);
            }
            ptr = ptr->next;
        }
        index++;
    }
    destory_hash_table(hash_table, table_length);
    return max_length;   
}

int main()
{
    int nums[] = {1, 0, -1};
    int numsSize = sizeof(nums)/sizeof(int);
    //longestConsecutive(nums, numsSize);
    printf("max length: [%d]\n", longestConsecutive(nums, numsSize));
    return 0;
}