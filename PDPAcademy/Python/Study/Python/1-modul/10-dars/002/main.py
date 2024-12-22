"""TypeError hosil qiladigan kod yozing"""

list_ = [1, 2, 3, 4, 5, 6, 7, 8, 9]
list_.sort(key="")
print(list_)  # there is TypeError
