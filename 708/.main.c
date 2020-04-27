#include <stdio.h>
#include <stdlib.h>

struct Node {
    int val;
    struct Node *next;
};

void insert(struct Node **ptr, int val)
{
    *ptr = malloc (sizeof(struct Node));
    (*ptr)->val = val;
    (*ptr)->next = NULL; 
}

void prt_list(struct Node *head)
{
    struct Node **ptr;
    printf ("Print List: ");
    if (head) {
        ptr = &head;
        while ((*ptr)->next != head) {
            printf ("%d, ", (*ptr)->val);
            ptr = &((*ptr)->next);
        }
        printf ("%d\n", (*ptr)->val);
    }
}

struct Node *insertVal(struct Node *head, int val)
{
    struct Node *ret;
    struct Node *ptr;
    struct Node *run;
    int buf;

    if (head) {
        ptr = head;
        buf = ptr->val;
        run = malloc (sizeof(struct Node));
        ret = run;
        run->val = ptr->val;
        ptr = ptr->next;

        while (ptr != head) {
            if (buf > ptr->val || 
                    (buf <= val && ptr->val >val) ) {
                run->next = malloc (sizeof(struct Node));
                run = run->next;
                run->val = val;
                run->next = NULL;
            }
            run->next = malloc (sizeof(struct Node));
            run = run->next;
            run->val = ptr->val;
            run->next = NULL;
            buf = ptr->val;
            ptr = ptr->next;
        }
        if ((buf > ptr->val && !((buf > val)^(ptr->val > val)))|| 
                (buf <= val && ptr->val >val) ) {
            run->next = malloc (sizeof(struct Node));
            run = run->next;
            run->val = val;
            run->next = NULL;
        }
        run->next = ret;
    } else {
        ret = malloc (sizeof(struct Node));
        ret->val = val;
        ret->next = ret;   
    }
    return ret;
}

int main(void)
{
    int n;
    int val;
    struct Node *head;
    struct Node **ptr;
    struct Node *ret;
    printf ("list amount: ");
    scanf ("%d", &n);
    
    head = NULL;
    ptr = &head;
    for (int i=0; i<n; i++) {
        scanf ("%d", &val);
        insert (ptr, val);
        ptr = &((*ptr)->next);
    }
    *ptr = head;
    prt_list (head);

    printf ("Insert val: ");
    scanf ("%d", &val);
    ret = insertVal (head, val);
    prt_list (ret);

    return 0;
}
