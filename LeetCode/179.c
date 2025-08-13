#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

char *tmp = NULL;
static long digitals = 0;

long count_digits(int num) {
    long count = 0;
    if (num == 0) return 1; // 特殊情况：0 只有 1 位
    while (num != 0) {
        num /= 10;
        count++;
    }
    digitals += count;
    return count;
}

long long string_to_int(int a, int b)
{
    long a_len = count_digits(a);
    long b_len = count_digits(b);
    tmp = malloc(sizeof(char) * (a_len + b_len +1));
    sprintf(tmp, "%d", a);
    sprintf(tmp+a_len, "%d", b);
    long long res = atoll(tmp);
    free(tmp);
    printf("res: [%lld]\n", res);
    return res;
}

bool compires(int *a, int *b)
{
    return string_to_int(*a, *b) >= string_to_int(*b, *a);
}

int partition(int left, int right, int *nums)
{
    int base = nums[left];  // 选择第一个元素作为基准
    int i = left, j = right;
    while (i < j) {
        while (i < j && compires(&nums[j], &base)) j--;  // 从右向左找小于基准的元素
        nums[i] = nums[j];
        while (i < j && compires(&base, &nums[i])) i++;  // 从左向右找大于基准的元素
        nums[j] = nums[i];
    }
    nums[i] = base;
    return i;
}

void quickly_sort(int start, int end, int* nums)
{
     if (start >= end)
        return ;
     int i = partition(start, end, nums);
     quickly_sort(start, i, nums);
     quickly_sort(i+1, end, nums);
     
}

char* make_string(int* nums, int numsSize)
{
    tmp = malloc(sizeof(char)* (digitals + 1));
    long n = 0;
    for (int i=numsSize-1;i>=0;i--){
        n += sprintf(tmp+n, "%d", nums[i]);
    }
    return tmp;
}

bool is_all_zero(int *nums, int numsSize)
{
    for(int i=0;i<numsSize;i++)
        if (nums[i] != 0)
            return false;
    return true;
}

char* largestNumber(int* nums, int numsSize) 
{
    if(is_all_zero(nums, numsSize) == true)
        return "0";
    if (numsSize == 1){
        tmp = malloc(sizeof(char)*(count_digits(nums[0])+1));
        sprintf(tmp, "%d", nums[0]);
        return tmp;
    }
    else if (numsSize == 2 && compires(&nums[0], &nums[1]))
    {
         tmp = malloc(sizeof(char)* (count_digits(nums[0])+count_digits(nums[1])+1));
         int n = sprintf(tmp, "%d", nums[0]);
         sprintf(tmp+n, "%d", nums[1]);
         return tmp;
    }else{
        quickly_sort(0, numsSize-1, nums);
        return make_string(nums, numsSize);
    }
    return NULL;
}

int main()
{
    int nums[] = {0,0,0,0};
    int numsSize = 4;
    tmp = largestNumber(nums, numsSize);
    printf("%s\n", tmp);
    return 0;
}