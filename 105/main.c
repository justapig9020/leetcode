struct TreeNode *last_node;

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

int pop_list(struct Node **list)
{
    struct Node *buf;
    int ret;
    buf = *list;
    *list = buf->next;
    ret = buf->val;
    free (buf);
    return ret;
}

struct TreeNode *build_left(struct Node **pre, struct Node **in)
{
    struct TreeNode *ret;
    ret = malloc (sizeof(struct TreeNode));
    ret->val = pop_list (pre);
    ret->left = NULL;
    ret->right = NULL;
    if (*pre && ret->val != (*in)->val) {
        ret->left = build_left (pre, in);
        while (ret->val != (*in)->val) {
            // build right
            last_node->right = build_left (pre, in);
        }
    }
    pop_list (in);
    last_node = ret;
    return ret;
}

struct TreeNode* buildTree(int* pre, int pre_sz, int* in, int in_sz)
{
    struct TreeNode *ret;
    struct Node *pre_list;
    struct Node *in_list;
    if (pre_sz == 0)
        return NULL;
    
    last_node = NULL;
    pre_list = init_list (pre, pre_sz);
    in_list = init_list (in, in_sz);

    ret = build_left (&pre_list, &in_list);
    while (pre_list && in_list) {
        last_node->right = build_left (&pre_list, &in_list);
    }
    
    return ret;
}
