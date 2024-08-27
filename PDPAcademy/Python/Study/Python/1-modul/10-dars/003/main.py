"""1- va 2- topshiriqda yozgan kodingizni try/except \
ichida yozib, ekranga errorni chiqaradigan kod yozing"""

## IndexError
list_=[1,2,3,4,5,6,7,8,9]
try:
    print(list_[9])  # there is IndexError
except IndexError:
    print("there is IndexError")

# KeyError #
ages = {'Jim': 30, 'Pam': 28, 'Kevin': 33}
try:
    print(ages['Michael'])  # there is KeyError
except KeyError:
    print("there is KeyError")

list__=[1,2,3,4,5,6,7,8,9]
try:
    list__.sort(key='')
    print(list__) #there is TypeError
except TypeError:
    print("there is TypeError")