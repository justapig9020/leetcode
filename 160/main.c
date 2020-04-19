#include <stdlib.h>
struct ListNode {
    int val;
    struct ListNode *next;
};

struct ListNode *getIntersectionNode(struct ListNode *l1, struct ListNode *l2) {
    struct ListNode *ptr1;
    struct ListNode *ptr2;
    struct ListNode *buf;

    ptr1 = l1;
    ptr2 = l2;
    buf = NULL;
    while (l1 && l2) {
        if (ptr1 == ptr2)
            return ptr1;

        if (ptr1->next == NULL) {
            if (buf == NULL)
                buf = ptr1;
            else if (buf != ptr1)
                return NULL;
            ptr1 = l1;
        } else {
            ptr1 = ptr1->next;
        }

        if (ptr2->next == NULL) {
            if (buf == NULL)
                buf = ptr2;
            else if (buf != ptr2)
                return NULL;
            ptr2 = l2;
        } else {
            ptr2 = ptr2->next;
        }
    }
    return NULL;
}
