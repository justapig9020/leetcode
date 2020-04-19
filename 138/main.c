/**
 * Definition for a Node.
 */

#include <stdlib.h>

struct Node {
    int val;
    struct TreeNode *next;
    struct TreeNode *random;
};

struct Node* new_node(int val, struct TreeNode* rand)
{
    struct Node* ret;
    ret = malloc(sizeof (struct Node));
    ret->next = NULL;
    ret->random = rand;
    ret->val = val;
    return ret;
}
struct Node* copyRandomList(struct Node* head)
{
    struct Node *ret;
    struct Node *buf;
    struct Node **ptr;

    ret = NULL;
    ptr = &ret;
    while (head) {
        *ptr = new_node (head->val, head->random);
        ptr = &((*ptr)->next);
        head = head->next;
    }

    return ret;
}
