from sqlite3 import connect
with connect('finance.db') as db:
    cursor = db.cursor()
    cursor.execute("CREATE TABLE finance (balance INTEGER NOT NULL)")

from sqlite3 import connect
with connect('finance.db') as db:
    cursor = db.cursor()
    cursor.execute(
            """ INSERT INTO finance (balance)
            VALUES (?)""",
            ()
        )