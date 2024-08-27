# user_input=(input("Kiriting...   :")).rstrip()
# list_againt=[]
# for char in range(0, len(user_input)):
#     if user_input[char].isdigit():
#         list_againt.append(user_input[char])
# list_againt=list_againt[::-1]
# for char in list_againt:
#     print(char, end='')
        
list_=input("Enter : ").split(' ')
for i in range(0, len(list_)):
    print(list_[i][::-1], end=' ')
