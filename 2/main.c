#include <stdlib.h>

struct ListNode {
    int val;
    struct ListNode *next;
};
/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */



int next_node(struct ListNode **node)
{
    int ret;
    ret = (*node)->val;
    *node = (*node)->next;
    return ret;
}

struct ListNode* new_node(int val)
{
    struct ListNode* ret;
    ret = malloc (sizeof(struct ListNode));
    ret->val = val;
    ret->next = NULL;
    return ret;
}

struct ListNode* addTwoNumbers(struct ListNode* l1, struct ListNode* l2){
    struct ListNode *ret;
    struct ListNode **ret_ptr;
    int carry;
    int val;

    ret = NULL;
    ret_ptr = &ret;
    carry = 0;
    while (l1 && l2) {
        val = next_node (&l1) + next_node (&l2)+ carry;
        carry = val / 10;
        val %= 10;
        *ret_ptr = new_node(val);
        ret_ptr = &((*ret_ptr)->next);
    }
    
    while (l1) {
        val = next_node (&l1) + carry;
        carry = val / 10;
        val %= 10;
        *ret_ptr = new_node(val);
        ret_ptr = &((*ret_ptr)->next);
    }

    while (l2) {
        val = next_node (&l2) + carry;
        carry = val / 10;
        val %= 10;
        *ret_ptr = new_node(val);
        ret_ptr = &((*ret_ptr)->next);
    }
    
    if (carry) {
        *ret_ptr = new_node(carry);
    }

    ret_ptr = NULL;
    return ret;
}

