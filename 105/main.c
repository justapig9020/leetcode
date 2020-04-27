/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     struct TreeNode *left;
 *     struct TreeNode *right;
 * };
 */
struct Node {
    int val;
    struct Node *next;
};

struct Node *init_list(int *arr, int sz)
{
    struct Node *ret;
    struct Node **ptr;
    ptr = &ret;
    for (int i=0; i<sz; i++) {
        *ptr = malloc (sizeof(struct Node));
        (*ptr)->val = arr[i];
        (*ptr)->next = NULL;
        ptr = &((*ptr)->next);
    }
    return ret;
}

void free_list(struct Node *list)
{
    struct Node *buf;
    while (list) {
        buf = list;
        list = list->next;
        free (buf);
    }
    buf = NULL;
}

struct TreeNode* build_left(struct Node **pre, struct Node **in)
{
    struct TreeNode *ret;
    ret = malloc (sizeof(struct TreeNode));
    ret->val = (*pre)->val;
    ret->left = NULL;
    ret->right = NULL;
    (*pre) = (*pre)->next;
    if (ret->val != (*in)->val) {
        ret->left = build_left (pre, in);
        if (ret->val != (*in)->val) {
            ret->right = build_left (pre, in);
        }
    }
    return ret;
}

struct TreeNode* buildTree(int* pre, int pre_sz, int* in, int in_sz)
{
    struct TreeNode *ret;
    struct Node *pre_list;
    struct Node *in_list;
    struct Node *pre_ptr;
    struct Node *in_ptr;
    
    pre_list = init_list (pre, pre_sz);
    in_list = init_list (in, in_sz);
    pre_ptr = pre_list;
    in_ptr = in_list;
    
    ret = build_left (&pre_ptr, &in_ptr);

    free_list (pre_list);
    free_list (in_list);
}
