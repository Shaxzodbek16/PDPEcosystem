# TODO: I have to write test for the 002 folder :(
import time


class Queue:
    def __init__(self):
        self.items = []

    def enque(self, item):
        self.items.append(item)  #! it is append item to self.items

    def deque(self):
        return self.items.pop(
            0
        )  #! it is return item which is first of index in list that is called self.items

    def size(self):
        return len(self.items)  #! it is return list size which is called self.items


def QueueTest():
    try:
        test = Queue()
        # ~ case 1:
        test.enque("Shaxzodbek")

        assert test.size() == 1
        assert test.deque() == "Shaxzodbek"

        # ~ case 2:
        test.enque("Nodir")

        assert test.size() == 1
        assert test.deque() == "Nodir"

        # ~ case 3:
        test.enque("Jasur")
        test.enque("Kamron")
        test.enque("Shaxzodbek")
        test.enque("Nurbek")
        test.enque("Nodir")
        test.enque("Mahmud")

        assert test.size() == 5
        assert test.deque() == "Jasur"

        print("\n\nTesting....\n")
        time.sleep(3)
        print("Successfully completed, you have not errors. 😊\n\n")
    except (AssertionError, AttributeError) as e:
        print("\n\nTesting....\n")
        time.sleep(3)
        print(f"You made mistake(s) 🙁 Plese fix it and try again)")


if __name__ == "__main__":
    QueueTest()
