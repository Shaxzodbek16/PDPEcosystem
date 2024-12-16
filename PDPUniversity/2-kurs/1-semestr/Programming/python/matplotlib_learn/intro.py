# import matplotlib.pyplot as plt
# import numpy as np
#
# x = np.array([-1,0,1, 2, 3, 4, 5, 6, 7])
# y = np.array([1,0,1, 4, 9, 16, 25, 36, 49])
#
# plt.plot(x, y)
#
# plt.show()


import psycopg2

conn = psycopg2.connect("dbname='postgres' user='postgres' password='postgres' host='localhost' port='5432'")

curr = conn.cursor()

curr.execute("SELECT * FROM students")

curr.close()