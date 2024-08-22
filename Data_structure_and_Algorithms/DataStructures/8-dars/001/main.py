# #  Task 1
# Darsda o`tilgan Trie(Array) da so`zni o`chirish imkoniyatini yarating. 
# public void remove(String word)


class TrieNode:
    def __init__(self):
        self.children = {}
        self.is_end_of_word = False

class Trie:
    def __init__(self):
        self.root = TrieNode()

    def insert(self, word):
        node = self.root
        for char in word:
            if char not in node.children:
                node.children[char] = TrieNode()
            node = node.children[char]
        node.is_end_of_word = True

    def search(self, word):
        node = self.root
        for char in word:
            if char not in node.children:
                return False
            node = node.children[char]
        return node.is_end_of_word

    def starts_with(self, prefix):
        node = self.root
        for char in prefix:
            if char not in node.children:
                return False
            node = node.children[char]
        return True

    def remove(self, word):
        def _remove_helper(node, word, index):
            if index == len(word):
                if not node.is_end_of_word:
                    return False
                node.is_end_of_word = False
                if not any(node.children.values()):
                    return True
                return False

            char = word[index]
            if char not in node.children:
                return False

            if _remove_helper(node.children[char], word, index + 1):
                del node.children[char]
                return True

            return False
        _remove_helper(self.root, word, 0)