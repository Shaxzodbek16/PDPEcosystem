"""A spanning tree in a graph is a subgraph that connects all the nodes 
(vertices) without any cycles and spans the entire graph. It is a 
tree because it has no cycles, and it is a subgraph of the original graph.

In the context of your question, you can create a spanning tree for 
a given graph using various algorithms such as Prim's algorithm, 
Kruskal's algorithm, or Depth-First Search (DFS) with backtracking.

Here is a simple implementation of a Depth-First Search (DFS) 
algorithm to find a spanning tree for an undirected graph:

"""

class Graph:
    def __init__(self):
        self.nodes = {}

    def add_node(self, label):
        if label not in self.nodes:
            self.nodes[label] = []

    def add_edge(self, from_label, to_label):
        if from_label in self.nodes and to_label in self.nodes:
            self.nodes[from_label].append(to_label)
            self.nodes[to_label].append(from_label)
        else:
            raise ValueError(f"One or both of the nodes ({from_label}, {to_label}) do not exist.")

    def remove_node(self, label):
        if label in self.nodes:
            for neighbor in self.nodes[label]:
                self.nodes[neighbor].remove(label)
            del self.nodes[label]
        else:
            raise ValueError(f"The node {label} does not exist.")

    def __str__(self):
        return str(self.nodes)

    def dfs(self, start_node, visited=None):
        if visited is None:
            visited = set()

        visited.add(start_node)
        for neighbor in self.nodes[start_node]:
            if neighbor not in visited:
                self.dfs(neighbor, visited)

    def find_spanning_tree(self):
        if len(self.nodes) == 0:
            raise ValueError("The graph is empty.")

        visited = set()
        spanning_tree = set()

        for node in self.nodes:
            if node not in visited:
                self.dfs(node, visited)
                spanning_tree.add(node)

        return spanning_tree