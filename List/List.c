#include <stdio.h>
#include <stdlib.h>

struct ListNode {

    int id;
    struct ListNode *next;
};

struct ListNode * init_list()
{
       struct ListNode *head = (struct ListNode*)malloc(sizeof(struct ListNode));
       if (head == NULL)
            return NULL;
       head->next = NULL;
       return head;
}

struct ListNode * create_node(int id)
{
       struct ListNode *new_node = (struct ListNode*)malloc(sizeof(struct ListNode));
       if (new_node == NULL)
            return NULL;
       new_node->id = id;
       new_node->next = NULL;
       return new_node;
}

void free_list(struct ListNode *List)
{
      struct ListNode *ptr = List,
                      *tmp = NULL;
      while (ptr != NULL)
      {
            tmp = ptr->next;
            free(ptr);
            ptr = tmp;
      }
      
}

void visit_list(struct ListNode *List)
{
     if (List == NULL)
        return ;
     struct ListNode *ptr = List->next;
     while (ptr != NULL)
     {
        printf("id: %d \n", ptr->id);
        ptr = ptr->next;
     }
}

int main()
{
    struct ListNode *List = init_list();
    struct ListNode *ptr  = List;
    int i = 0;
    //顺序插入
    // while(i<10) 
    // {
    //       struct ListNode *new_node = create_node(i);
    //       ptr->next = new_node;
    //       ptr = new_node;
    //       i++;
    // }
    
    //逆序插入
    while(i<10) 
    {
          struct ListNode *new_node = create_node(i);
          new_node->next = ptr->next;
          ptr->next = new_node;
          i++;
    }
    visit_list(List);
    free_list(List);
    return 0;
}