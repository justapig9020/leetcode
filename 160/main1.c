#include <stdlib.h>

struct ListNode {
    int val;
    struct ListNode *next;
};

struct ListNode *getIntersectionNode(struct ListNode *l1, struct ListNode *l2)
{
    struct ListNode *ptr1;
    struct ListNode *ptr2;
    struct ListNode *buf;
    if (!(l1 && l2))
        return NULL;
    while (1);

}
