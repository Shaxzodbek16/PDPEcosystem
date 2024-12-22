class Clock:
    __DAY = 86400

    def __init__(self, seconds: int) -> None:
        if not isinstance(seconds, int) or seconds < 0:
            raise TypeError("seconds must be a positive integer")
        self.seconds = seconds % self.__DAY

    def get_time(self) -> str:
        s = self.seconds % 60
        m = (self.seconds // 60) % 60
        h = (self.seconds // 3600) % 24
        return f"{self.__get_formatted(h)}:{self.__get_formatted(m)}:{self.__get_formatted(s)}"

    @staticmethod
    def __get_formatted(x: int) -> str:
        return str(x).rjust(2, "0")

    def __add__(self, other):
        if not isinstance(other, (Clock, int)):
            raise ArithmeticError("Other must be an instance of Clock")
        sc = other
        if isinstance(other, Clock):
            sc = other.seconds
        return Clock(sc + self.seconds)

    def __eq__(self, other) -> bool:
        return self.seconds == other.seconds

    def __lt__(self, other) -> bool:
        return self.seconds < other.seconds

    def __gt__(self, other) -> bool:
        return self.seconds > other.seconds  # it is ok that not define

    def __ge__(self, other) -> bool:
        return self.seconds >= other.seconds  # it is ok that not define

    def __le__(self, other) -> bool:
        return self.seconds <= other.seconds


c1 = Clock(86500)
c2 = Clock(300)
print(c1 + c2)
print(c1 > c2)
