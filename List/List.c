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

//O(n)
void order_insert_node(struct ListNode *List, int value)
{    
     if (List == NULL)
         return ;  
     int index = 0;
     struct ListNode *ptr = List;
     //The next ponit is not NULL.
     while(ptr->next != NULL)
         ptr = ptr->next;
      struct ListNode *new_node = create_node(value);
      ptr->next = new_node;
      ptr = new_node;
}

//O(1)
void reverse_insert_node(struct ListNode *List, int value)
{    
     if (List == NULL)
         return ;  
     struct ListNode *new_node = create_node(value);
     new_node->next = List->next;
     List->next = new_node;
}
//O(n)
void delete_node(struct ListNode *List, int value)
{
     struct ListNode *cur = List->next, *pre = List;
     while(cur != NULL && pre != NULL)
     {
         if (cur->id == value){
              pre->next = cur->next;
              free(cur);
              cur = pre->next;
              break;
         }
         cur = cur->next;
         pre = pre->next;
     }
}

int main()
{
     struct ListNode *List = init_list();
     reverse_insert_node(List, 1);
     reverse_insert_node(List, 2);
     reverse_insert_node(List, 3);
     reverse_insert_node(List, 4);
     reverse_insert_node(List, 5);
     reverse_insert_node(List, 6);
     reverse_insert_node(List, 7);
     
     printf("========原始链表======\n");
     visit_list(List);
     printf("========修改后链表======\n");
     delete_node(List, 4);
     visit_list(List);

     free_list(List);
     return 0;
}