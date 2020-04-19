#include <stdio.h>
#include <stdlib.h>

struct Node {
    int val;
    struct Node *next;
};

void insert(struct Node *ptr, int val)
{
    ptr = malloc (sizeof(struct Node));
    printf ("new: %p\n", ptr);
    ptr->val = val;
    ptr->next = NULL; 
}

void prt_list(struct Node *head)
{
    struct Node *ptr;
    ptr = head;
    printf ("\nPrint List: ");
    while (ptr->next != head) {
        printf ("%d, ", ptr->val);
        ptr = ptr->next;
    }
    printf ("%d\n", ptr->val);
}

void insertVal(struct Node *head, int val)
{
    struct Node **ptr;
    ptr = &head;
    if (*ptr) {
        while (*ptr != head) {
            ptr = &((*ptr)->next);
        }
    }
    *ptr = malloc (sizeof(struct Node));
    (*ptr)->val = val;
    (*ptr)->next = head;
}

int main(void)
{
    int n;
    int val;
    struct Node *head;
    struct Node **ptr;
    printf ("list amount: ");
    scanf ("%d", &n);
    
    ptr = &head;
    for (int i=0; i<n; i++) {
        scanf ("%d", &val);
        printf ("%p\n", *ptr);
        insert (*ptr, val);
        printf ("%p\n", *ptr);
        ptr = &((*ptr)->next);
    }
    printf ("out!\n");
    //*ptr = head;
    prt_list(head);


    printf ("Insert val: ");
    scanf ("%d", &val);
    insertVal (head, val);
    prt_list(head);

    return 0;
}
