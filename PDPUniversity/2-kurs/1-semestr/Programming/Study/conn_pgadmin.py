from pyexpat.errors import messages

import psycopg2
import pandas as pd


def db(query: str, values: tuple = None) -> str | list | None:
    conn = psycopg2.connect("dbname='postgres' user='postgres' host='localhost' password='postgres'")
    try:
        cur = conn.cursor()
        if values:
            cur.execute(query, values)
        else:
            cur.execute(query)
        conn.commit()
        if query.lower().startswith("select"):
            result = cur.fetchall()
            return result
        return "Query executed successfully"
    except Exception as e:
        return str(e)
    finally:
        conn.close()


data = db(
    "create table if not exist mock_users (id int, first_name varchar(50), last_name varchar(50), email varchar(50), gender varchar(50), ip_address varchar(50));")

df = pd.read_csv('files/users.csv')

for _, row in df.iterrows():
    insert_query = """
        INSERT INTO mock_users (id, first_name, last_name, email, gender, ip_address) 
        VALUES (%s, %s, %s, %s, %s, %s);
    """
    messages = db(insert_query,
                  (row['id'], row['first_name'], row['last_name'], row['email'], row['gender'], row['ip_address']))
print(messages)
