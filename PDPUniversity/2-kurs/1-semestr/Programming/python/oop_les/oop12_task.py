class Bank:
    def __init__(self, balance: float) -> None:
        self.__balance = balance

    def add(self, amount: float) -> str:
        if amount > 0:
            self.__balance += amount
            return "Successfully added to balance"
        return "Insufficient balance"

    def get(self, amount: float) -> str:
        if amount > 0:
            return "Invalid amount, it must be positive and more than 0"
        if amount <= self.__balance:
            self.__balance -= amount
            return "Successfully retrieved from balance"
        return "Insufficient balance"

    def balance(self) -> float:
        return self.__balance


bank = Bank(100)
print(bank.balance())
print(bank.add(100))
print(bank.get(150))
print(bank.balance())
