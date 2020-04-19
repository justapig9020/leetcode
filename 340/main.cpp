#include <cstdlib>
class Node {
public:
    int val;
    Node* prev;
    Node* next;
    Node* child;
    Node (int v, Node* p,Node *n, Node *c){}
};

Node *next_level(Node *ptr, Node *old)
{
    while (old) {
        if (old->child) {
            ptr->next = new Node (old->child->val, ptr, NULL, NULL);
            ptr = next_level (ptr->next, old->child);
        }
        ptr->next = new Node(old->child->val, ptr, NULL, NULL);
        ptr = ptr->next;
        old = old->next;
    }
    return ptr;
    /*
    Node **ptr;
    Node *ret;
    ret = new Node (old->val, prev, NULL, NULL);
    old = old->child;
    prev->child = ret;
    prev = ret;

    while (old) {
        if (old->child) 
            prev = next_level(old->child, prev);
        prev->next = new Node (old->val, prev, NULL ,NULL);
        prev->next->prev = prev;
        prev = prev->next;
        old = old->next;
    }
    return ret;
    */
}

Node *init(Node* old)
{
    if (!old)
        return NULL;
    Node *ret;
    ret = new Node (old->val, NULL, NULL, NULL);
    next_level (ret, old);
    return ret;
}

class Solution {
public:
    Node* flatten(Node* head) {
        Node *ret = next_level (head, NULL);
        return ret;
    }
};
