class BinaryTree:
    def __init__(self, value) -> None:
        self.value = value
        self.left = None
        self.right = None

    def insert(self, value):
        if self.value is None:
            self.value = value
        elif value < self.value:
            if self.left is None:
                self.left = BinaryTree(value)
            else:
                self.left.insert(value)
        else:
            if self.right is None:
                self.right = BinaryTree(value)
            else:
                self.right.insert(value)

    def printAllLeaves(self, node, result=None):
        if result is None:
            result = []

        if node is None:
            return

        if node.left is None and node.right is None:
            result.append(node.value)
        else:
            self.printAllLeaves(node.left, result)
            self.printAllLeaves(node.right, result)
        return result

    def find_min(self, node):
        if node is None:
            return None

        while node.left is not None:
            node = node.left

        return node.value

    def find_max(self, node):
        if node is None:
            return None

        while node.right is not None:
            node = node.right

        return node.value

    def is_symmetric(self, root):
        if root is None:
            return True

        return self.is_same(root.left, root.right)

    def is_same(self, node1, node2):
        if node1 is None and node2 is None:
            return True
        elif node1 is None or node2 is None:
            return False
        elif node1.value != node2.value:
            return False
        else:
            return self.is_same(node1.left, node2.right) and self.is_same(
                node1.right, node2.left
            )

    def k_level_nodes(self, root, k):
        if k == 0:
            return [root.value]

        left_nodes = self.k_level_nodes(root.left, k - 1)
        right_nodes = self.k_level_nodes(root.right, k - 1)

        return left_nodes + right_nodes
