try:
    print(1 / 0)
except ZeroDivisionError:
    print(float('inf'))
except TypeError:
    print('Number expected')
