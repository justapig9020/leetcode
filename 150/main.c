struct Node {
    int val;
    struct node *next;
};

void insert_head(struct Node **head, int val)
{
    struct Node *new;
    new = malloc (sizeof(struct Node));
    new->val = val;
    new->next = *head;
    *head = new;
}

int pop_head(struct Node **head)
{
    int ret;
    struct Node *buf;
    buf = *head;
    ret = (*head)->val;
    *head = buf->next;
    free (buf);
    buf = NULL;
    return  ret;
}

int ctoi (char *c)
{
    int ret;
    ret = 0;
    while (*c != '\0') {
        ret *= 10;
        ret += *c - '0';
        c++;
    }
    return ret;
}

unsigned char is_num(char *c, int *ret)
{
    switch (*c) {
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
            *ret = ctoi(c);
            return 1;
        break;
        case '-':
            if (is_num(c+1, ret)) {
                *ret = *ret * (-1);
                return 1;
            }
        break;
    }
    return 0;
}

void count (struct Node **stack, char c)
{
    int a, b;
    b = pop_head(stack);
    a = pop_head(stack);
    switch (c) {
        case '+':
            insert_head(stack, a+b);
        break;
        case '-':
            insert_head(stack, a-b);
        break;
        case '*':
            insert_head(stack, a*b);
        break;
        case '/':
            insert_head(stack, a/b);
        break;
    }
}

int evalRPN(char ** tokens, int tokensSize)
{
    struct Node *stack;
    int ret;
    int buf;

    stack = NULL;
    ret = 0;

    for (int i=0; i<tokensSize; i++) {
        char *run = tokens[i];
        if (is_num(run, &buf))
            insert_head(&stack, buf);
        else
            count(&stack, *run);
    }
    return pop_head(&stack);
}
