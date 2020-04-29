struct TreeNode {
    struct TreeNode *parent;
    struct TreeNode *left;
    struct TreeNode *right;
    int val;
};

struct List {
    int size;
    struct ListNode *head;
    struct ListNode *tail;
    struct TreeNode *t_root;
};

struct ListNode {
    struct TreeNode *cont;
    struct ListNode *next;
};

struct TreeNode *new_node(struct TreeNode *par, int val)
{
    struct TreeNode *ret;
    ret = malloc (sizeof(struct TreeNode));
    ret->parent = par;
    ret->left = NULL;
    ret->right = NULL;
    ret->val = val;
    return ret;
}

struct TreeNode *insert_node (struct TreeNode **pos, struct TreeNode *par, int val)
{
    if (!(*pos)) {
        (*pos) = new_node (par, val);
        return *pos;
    }

    if ((*pos)->val < val) {
        return insert_node (&((*pos)->right), *pos, val);
    } else {
        return insert_node (&((*pos)->left), *pos, val);
    }
}

struct List *new_liat()
{
    struct List *ret;
    ret = malloc (sizeof(struct List));
    ret->size = 0;
    ret->head = NULL;
    ret->tail = NULL;
    ret->t_root = NULL;
    return ret;
}

void inset_list (struct )

// arr[i] - arr[j] => t
// i - j => k
bool containsNearbyAlmostDuplicate(int* arr, int arr_sz, int k, int t){

}
