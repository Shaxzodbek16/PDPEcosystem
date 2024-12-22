from dataclasses import dataclass, field


class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __repr__(self):
        return f"Point({self.x}, {self.y})"

    def __str__(self):
        return f"Point({self.x}, {self.y})"


@dataclass
class Point2D:
    x: int
    y: int

    # len = x + y  wrong, using __post_init__ is a correct way

    def __post_init__(self):
        self.len = (self.x + self.y) * 2


pt = Point(1, 2)
pt2 = Point2D(1, 2)
pt3 = Point2D(3, 2)
print(pt2)
print(pt2 == pt3)
print(pt)
print(pt2.len)


@dataclass
class Product:
    name: str
    price: float
    quantity: int

    def __post_init__(self):
        self.total_value = self.price * self.quantity

    # @property
    # def total_value(self):
    #     return self.price * self.quantity


product1 = Product("Cup", 3.0, 2)
print(product1)
print(product1.name)
print(product1.price)
print(product1.total_value)


@dataclass
class Example:
    a: int
    b: int
    c: list = field(default_factory=list)


ex = Example(1, 2, [1, 2, 3])

ex.c.append(5)
ex2 = Example(1, 2, [1, 2, 3])
print(ex.c, ex2.c)


@dataclass
class User:
    name: str
    friends: list[str] = field(default_factory=list)
    posts: list[str] = field(default_factory=list)

    def add_friend(self, friend):
        if friend not in self.friends:
            self.friends.append(friend)
            return "Successfully added friend"
        return "Already added friend"

    def add_post(self, post):
        if post not in self.posts:
            self.posts.append(post)
            return "Successfully added post"
        return "Already added post"

    def list_posts(self):
        return self.posts


user = User("Shaxzodbek")
print(user.add_friend("Jasur"))
print(user.add_friend("Jasur"))
print(user.add_post("Shaxzodbek's post"))
print(user.add_post("Shaxzodbek's post"))
print(user.list_posts())
print(user.friends)


@dataclass
class TaskQueue:
    task: list = field(default_factory=list)

    def add_task(self, task):
        self.task.append(task)
        return "Successfully added task"

    def next_task(self):
        try:
            return self.task.pop()
        except IndexError:
            return "No task"

    def list_tasks(self):
        return self.task if len(self.task) > 0 else "No task in queue"


queue = TaskQueue()

print(queue.add_task("Do something"))
print(queue.add_task("Do something 2"))
print(queue.list_tasks())
print(queue.next_task())
print(queue.next_task())
print(queue.next_task())
print(queue.next_task())
print(queue.add_task("Do something"))
print(queue.list_tasks())
