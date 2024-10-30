"""2-topshiridagi CSV faylni o'qib,
 2012-2017-yillarda oralig'ida 
 jami eng ko'p kasalxonalar qurilgan 
 3ta viloyatni ekranga chiqaradigan dastur tuzing.
"""
import csv

dict = {}
with open(f"files/hospitals.csv", 'r') as fh:
    file = csv.reader(fh, delimiter=";")
    for i in file:
        if i[0] == 'Hududlar':
            continue
        list_ = i[15:21]
        dict[i[0]] = list_
new_dic = {}
for key, lists in dict.items():
    new_list = []
    for i in lists:
        i = int(i)
        new_list.append(i)
    new_dic[key] = sum(new_list)
# sorted_dict = dict(sorted(new_dic.items()), reverse=True)
sorted_dict = sorted(new_dic.items(), key=lambda item: item[1], reverse=True)

print("\n2012-2017-yillar oralig'ida jami eng ko'p kasalxonalar qurilgan 3ta viloyatlar bu:\n")
for i in range(3):
    print(f"{i + 1}-orinni {sorted_dict[i][1]} ta shifoxona bilan {sorted_dict[i][0]} egalladi.\n")
# 15-21 

