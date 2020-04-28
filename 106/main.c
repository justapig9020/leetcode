struct TreeNode *last_node;

struct Node {
    int val;
    struct Node *next;
};

struct Node *init_list(int *arr, int sz)
{
    struct Node *ret;
    struct Node *buf;
    ret = NULL;
    for (int i=0; i<sz; i++) {
        buf = malloc (sizeof(struct Node));
        buf->val = arr[i];
        buf->next = ret;
        ret = buf;
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

struct TreeNode *new_sub(struct Node **in, struct Node **pos)
{
    struct TreeNode *ret;
    ret = malloc (sizeof(struct TreeNode));
    ret->val = pop_list (in);
    ret->left = NULL;
    ret->right = NULL;

    if (ret->val != (*pos)->val) {
        ret->right = new_sub (in, pos);
        while (ret->val != (*pos)->val) {
            // build right
            last_node->left = new_sub (in, pos);
        }
    }
    pop_list (pos);

    last_node = ret;
    return ret;
}

struct TreeNode* buildTree(int* in, int in_sz, int* pos, int pos_sz)
{
    struct TreeNode *ret;
    struct Node *in_list;
    struct Node *pos_list;
    if (in_sz == 0)
        return NULL;

    last_node = NULL;
    in_list = init_list (in, in_sz);
    pos_list = init_list (pos, pos_sz);

    ret = new_sub (&pos_list, &in_list); // root and its left sub-tree
    while (pos_list && in_list) { // root's right sub-tree
        last_node->left = new_sub (&pos_list, &in_list);
    }

    return ret;
}
