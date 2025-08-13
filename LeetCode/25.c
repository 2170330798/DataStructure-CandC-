#include <stdio.h>
#include <stdlib.h>

//List
struct ListNode {
    int value;
    struct ListNode *next;
};


struct ListNode* init_list()
{
       struct ListNode *head = (struct ListNode*)malloc(sizeof(struct ListNode));
       if (head == NULL)
            return NULL;
       head->next = NULL;
       return head;
}

struct ListNode * create_list_node(int value)
{
       struct ListNode *new_node = (struct ListNode*)malloc(sizeof(struct ListNode));
       if (new_node == NULL)
            return NULL;
       new_node->value = value;
       new_node->next = NULL;
       return new_node;
}

void destory_list(struct ListNode *List)
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
     struct ListNode *ptr = List;
     while (ptr != NULL)
     {
        printf("%d ", ptr->value);
        ptr = ptr->next;
     }
     printf("\n");
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
      struct ListNode *new_node = create_list_node(value);
      ptr->next = new_node;
      ptr = new_node;
}

//O(1)
void reverse_insert_node(struct ListNode *List, int value)
{    
     if (List == NULL)
         return ;  
     struct ListNode *new_node = create_list_node(value);
     new_node->next = List->next;
     List->next = new_node;
}
//O(n)
void delete_node(struct ListNode *List, int value)
{
     struct ListNode *cur = List->next, *pre = List;
     while(cur != NULL && pre != NULL)
     {
         if (cur->value == value){
              pre->next = cur->next;
              free(cur);
              cur = pre->next;
              break;
         }
         cur = cur->next;
         pre = pre->next;
     }
}

static struct ListNode *nlist = NULL, *nlist2 = NULL;

void reverse_recursion(struct ListNode* sptr, struct ListNode* eptr)
{
     
     if (sptr == eptr)
        return ;
     struct ListNode *tmp = sptr->next;
     sptr->next = eptr->next;
     eptr->next = sptr;
     sptr = tmp;
     nlist2 = sptr;
     visit_list(nlist);
     reverse_recursion(sptr, eptr);
}

void reverse(struct ListNode* sptr, struct ListNode* eptr)
{
    struct ListNode *tmp1 = NULL, *tmp2 = NULL; 
    while (sptr != eptr) {
          tmp1 = sptr->next;
          tmp2 = eptr->next;
          eptr->next = sptr;
          sptr->next = tmp2;
          sptr = tmp1;
    }
    nlist2 = tmp1;
    visit_list(nlist2);
}

struct ListNode* reverseKGroup(struct ListNode* head, int k) 
{
    if (k == 1 || head == NULL || head->next == NULL)
         return head;
    if (k == 2 && head->next->next == NULL)
    {
         reverse(head, head->next);
         return nlist2;
    }

    int count = 1;
    struct ListNode *s = head, *e = head, 
                    *tp = head, *tp2 = NULL, 
                    *new_list = NULL, *s2 = head,
                    *e2 = NULL;

    while(tp)
    {
        if(count % k == 0)
        {
           
            tp2 = s2;
            if(new_list == NULL)
                new_list = tp, nlist = new_list;
            e = tp;//移到end指针下一个节点
            tp = e->next;

            reverse(s, e);//反转
            
            if(tp2->next == s)//拼接
                e2 = e, tp2->next = e2;
            
            s2 = s;//记住上一次start指针
            s = tp;
            count++;
        }
        count++;
        if (!tp)
            continue;
        tp = tp->next;
    }
    return new_list;
}


int main()
{
    struct ListNode* list = init_list();
    int nums[]  = {1,1,1,1,2,2,2,2,3,3,3,3,3};
    int size = sizeof(nums) / sizeof(int), i = 0;
    while(i<size)
    {
        order_insert_node(list, nums[i++]);
    }
    visit_list(list->next);
    list = reverseKGroup(list->next, 2);
    visit_list(list);
    destory_list(list);
    return 0;
}
