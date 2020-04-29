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

inline struct TreeNode *new_tnode(struct TreeNode *par, int val)
{
    struct TreeNode *ret;
    ret = malloc (sizeof(struct TreeNode));
    ret->parent = par;
    ret->left = NULL;
    ret->right = NULL;
    ret->val = val;
    return ret;
}

inline struct List *new_list()
{
    struct List *ret;
    ret = malloc (sizeof(struct List));
    ret->size = 0;
    ret->head = NULL;
    ret->tail = NULL;
    ret->t_root = NULL;
    return ret;
}

inline struct ListNode *new_lnode(struct TreeNode *cont)
{
    struct ListNode *ret;
    ret = malloc (sizeof(struct ListNode));
    ret->cont = cont;
    ret->next = NULL:
}

struct TreeNode *insert_tree(struct TreeNode **pos, struct TreeNode *par, int val)
{
    if (!(*pos)) {
        (*pos) = new_tnode (par, val);
        return *pos;
    }

    if ((*pos)->val < val) {
        return insert_tree (&((*pos)->right), *pos, val);
    } else {
        return insert_tree (&((*pos)->left), *pos, val);
    }
}

void insert_list(struct List *list, struct TreeNode * tnode)
{
    struct ListNode *n_lnode;
    n_lnode = new_lnode(tnode);

    if (!(list->head)) { // new list
        list->head = n_lnode;
        list->tail = n_lnode;
    } else {
        list->tail->next = n_lnode;
        list->tail = n_lnode;
    }
    list->size++;
}

void inset_val(struct List *list, int val)
{
    struct TreeNode *n_tnode;
    n_tnode = insert_tnode (&(list->root), NULL, val);
    insert_list (list, n_tnode);
}

void rm_tnode(struct )
void rm_last(struct List *list)
{

}

// arr[i] - arr[j] => t
// i - j => k
bool containsNearbyAlmostDuplicate(int* arr, int arr_sz, int k, int t){

}
