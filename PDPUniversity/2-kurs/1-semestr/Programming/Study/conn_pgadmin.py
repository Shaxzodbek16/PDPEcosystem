import psycopg2


def db(query: str) -> str | list | None:
    conn = psycopg2.connect("dbname='postgres' user='postgres' host='localhost' password='postgres'")
    try:
        cur = conn.cursor()
        cur.execute(query)
        result = cur.fetchall()
        return result
    except Exception as e:
        return str(e)
    finally:
        conn.close()
