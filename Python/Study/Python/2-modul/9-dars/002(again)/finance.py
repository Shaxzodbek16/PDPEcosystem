import sqlite3
import sys
class FinanceManager:
    def __init__(self, db_file='finance.db'):
        self.conn = sqlite3.connect(db_file)
        self.c = self.conn.cursor()
        self.c.execute('''
            CREATE TABLE IF NOT EXISTS finance (
                id INTEGER PRIMARY KEY,
                balance INTEGER
            )
        ''')

    def earn(self, amount):
        self.c.execute("INSERT INTO finance (balance) VALUES (?)", (amount,))
        self.conn.commit()

    def spend(self, amount):
        self.c.execute("INSERT INTO finance (balance) VALUES (?)", (-amount,))
        self.conn.commit()

    def get_balance(self):
        self.c.execute("SELECT SUM(balance) FROM finance")
        balance = self.c.fetchone()[0]
        return balance if balance is not None else 0

    def close_connection(self):
        self.conn.close()

if __name__ == "__main__":
    if len(sys.argv) > 3:
        print("Usage: python finance.py {earn|spend|balance} amount")
    else:
        action = sys.argv[1]
        if action == "earn":
            amount = int(sys.argv[2])
            manager = FinanceManager()
            manager.earn(amount)
        elif action == "spend":
            amount = int(sys.argv[2])
            manager = FinanceManager()
            manager.spend(amount)
        elif action == "balance":
            manager = FinanceManager()
            print(f"Current balance: {manager.get_balance()}")
        else:
            print("Invalid action. Please choose from 'earn', 'spend', or 'balance'.")