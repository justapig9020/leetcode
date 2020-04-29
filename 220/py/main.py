class Node:
    def __init__(self, val, par):
        node.par = par
        node.val = val
        node.left = None
        node.right = None

    def insert(self, n_node):
        if self.val < n_node.val:
            if self.right == None:
                self.right = n_node
                n_node.par = self
            else:
                self.right.insert(n_node)
        else:
            if self.left == None:
                self.left = n_node
                n_node.par = self
            else:
                self.left.insert(n_node)
    def rm(self):
        if self.right == None:
            sel.left.par = self.par
            if self.par != None:
                if self.is_left():
                    self.par.left = self.left
                else:
                    self.par.right = self.left
        else:
            buf = self.right.right
            ptr = self.right
            for ptr.right != None:
                ptr = ptr.right
            ptr.left = ptr.par.right
            ptr.right

    def compare(self, t):
        if self.comp_prev(t) or self.comp_post(t):
            return True
        return False
        """
        prev = self.find_prev()
        if self.val - pre <= t:
            return True
        post = self.find_post()
        if post - self.val <= t:
            return True
        return False
        """

    def comp_prev(t):
        if self.left:
            ptr = self.left
            while ptr.right != None:
                ptr = ptr.right
            return self.val - ptr.val <= t
        else:
            ptr = self
            while ptr.par != None:
                if !ptr.is_left(): # is right
                    return self.val - ptr.par.val <= t
        return False

    def comp_post(t):

        if self.right:
            ptr = self.right
            while ptr.left != None:
                ptr = ptr.left
            return ptr.val - self.val <= t
        else:
            ptr = self
            while ptr.par != None:
                if ptr.is_left():
                    return ptr.val - self.val <= t
        return False

    def is_left(self):
        return ptr.par.left == ptr

class Btree:
    def __init__(self):
        self.size = 0
        self.root = None

    def insert(self, n_node):
        if self.root == None:
            self.root = n_node
            return
        self.root.insert(n_node)

# val->t
# len->k
class Solution:
    def containsNearbyAlmostDuplicate(self, nums: List[int], k: int, t: int) -> bool:
        if k < 0 or t < 0:
            return False

        tnodes = []
        tree = Btree
        for i in nums:
            n_node = Node(i, None)
            tnodes.appends(n_node)
            tree.insert(n_node)
            if len(tnodes) > k+1:
                tree.rm(tnodes[0])
                tnodes = tnodes[1:]
            if n_node.compare(t) == True:
                return True
        return False
