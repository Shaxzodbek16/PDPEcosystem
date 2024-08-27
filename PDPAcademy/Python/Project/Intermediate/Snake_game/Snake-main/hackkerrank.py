# def recycle(list_:list[ str| int])->list[ str| int]:
#     if len(list_) == 1:
#         search=list_[0]
#         match search:
#             case 'print':
#                 print(list_)
#             case 'sort':
#                 return list_.sort()
#             case 'pop':
#                 return list_.pop()
#             case 'reverse':
#                 return list_.reverse()
#     elif len(list_) ==  2:
#         search=list_[0]
#         command=int(list_[1])
#         match search:
#             case'remove':
#                 return list_.remove(command)
#             case 'append':
#                 return list_.append(command)
#     elif len(list_) ==  3:
#         search=list_[0]
#         command1=int(list_[1])
#         command2=int(list_[2])
#         match search:
#             case 'insert':
#                 return list_.insert(command1,command2)
        
# if __name__ == '__main__':
#     new_list=[]
#     N = int(input())
#     for i in range(1,N+1):
#         list_=input().split(' ')
#         new_list=recycle(list_)
#         print(new_list)
    
# if __name__ == '__main__':
#     N = int(input())
#     mylist =[]
#     for i in range(N):
#         x = input().split()
#         if x[0] == "insert":
#             mylist.insert(int(x[2]), int(x[1]))
#         elif x[0]== "append":
#             mylist.append(int(x[1]))
#         elif x[0]== "remove":
#             mylist.remove(int(x[1]))
#         elif x[0]== "sort":
#             mylist.sort()
#         elif x[0]== "reverse":
#             mylist.reverse()
#         elif x[0]== "pop":
#             mylist.pop(-1)
#         else:
#             print(mylist)
# def is_prime(son:int)->bool:
#     for i in range(2,int(son/2)):
#         if son%i==0: return False
#     return True
# if __name__ == '__main__':
#     son=int(input())
#     natija=is_prime(son)
#     print(natija)
if __name__=='__main__':
    def is_polindrom(a):
        a = str(a)
        if a == a[::-1]:
            return True
        else:
            return False
    a = int(input("Istalgan butun sonni kiriting (a > 9): "))
    if is_polindrom(a):
        print(f"{a} soni polindrom.")
    else:
        print(f"{a} soni polindrom emas.")

            
    