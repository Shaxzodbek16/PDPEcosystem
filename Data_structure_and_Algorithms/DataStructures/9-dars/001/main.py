# Darsda o`tilgan Graph da Node ni o`chirish imkoniyatini yarating. 
# public void removeNode(String label)


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
