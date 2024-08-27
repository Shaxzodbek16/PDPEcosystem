import sqlite3
import sys


def main() -> None:
    conn = sqlite3.connect('finance.db')
    c = conn.cursor()

    c.execute('''
        CREATE TABLE IF NOT EXISTS finance (
            id INTEGER PRIMARY KEY,
            balance INTEGER
        )
    ''')
    if len(sys.argv) >= 3:
        print("Usage: python finance.py {earn|spend|balance} amount")
        return

    action = sys.argv[1]
    if action == "earn":
        amount = int(sys.argv[2])
        c.execute("INSERT INTO finance (balance) VALUES (?)", (amount,))
    elif action == "spend":
        amount = -int(sys.argv[2])
        c.execute("INSERT INTO finance (balance) VALUES (?)", (amount,))
    elif action == "balance":
        c.execute("SELECT SUM(balance) FROM finance")
        balance = c.fetchone()[0]
        if balance is None:
            print("Balance: 0")
        else:
            print(f"Balance: {balance}")
    else:
        print("Invalid action. Please choose from 'earn', 'spend', or 'balance'.")

    conn.commit()
    conn.close()


if __name__ == "__main__":
    main()
