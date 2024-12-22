# from sqlite3 import connect

# with connect('contacts.db') as db:
#     cursor = db.cursor()
#     cursor.execute(
#         """ CREATE TABLE IF NOT EXISTS contacts (
#         first_name VARCHAR,
#         last_name VARCHAR,
#         phone VARCHAR
#         ) """
#      )
from prettytable import PrettyTable
import sys
import sqlite3

table = PrettyTable()


class ContactsRepo:
    def __init__(self, db):
        self.db = db

    def add(self, first_name, last_name, phone):
        cursor = db.cursor()
        cursor.execute(
            """ INSERT INTO contacts (first_name,last_name,phone)
           VALUES (?,?,?)""",
            (first_name, last_name, phone),
        )
        db.commit()

    def list(self):
        cursor = db.cursor()
        cursor.execute(""" SELECT * FROM contacts """)
        return cursor.fetchall()

    def search(self, name):

        cursor = db.cursor()
        cursor.execute(
            """ SELECT * FROM contacts WHERE first_name LIKE?""", (f"%{name}%",)
        )
        return cursor.fetchall()


if "__main__" == __name__:
    if len(sys.argv) != 2:
        sys.exit("Only one argument required")
    available_commands = ("add", "list", "search")
    command = sys.argv[1]
    if command not in available_commands:
        print(f"Unknown command {command}\nAvailable commands {available_commands}")
    with sqlite3.connect("contacts.db") as db:
        repo = ContactsRepo(db)
        if command == "add":
            first_name = input("First Name: ").strip()
            last_name = input("Last Name: ").strip()
            phone = input("Phone: ").strip()
            repo.add(first_name, last_name, phone)
            print("Added contact successfully")
        elif command == "list":
            contacts = repo.list()
            table.field_names = ["First Name", "Last Name", "Phone"]
            for contact in contacts:
                table.add_row([contact[0], contact[1], contact[2]])
            print(table)
        elif command == "search":
            first_name = input("First Name: ").strip()
            contacts = repo.search(first_name)
            print(*contacts, sep="\n")
