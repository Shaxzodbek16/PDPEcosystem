text1=input("Text 1 : ").strip()
text2=input("Text 2 : ").strip()

def sort(text1,text2):
    if len(text1)!=len(text2):
        return False
    else:
        text1_l=list(text1)
        text2_l=list(text2)
        text1_l.sort()
        text2_l.sort()
        if text1_l==text2_l:
            return True
        else:
            return False

print(sort(text1,text2))


# text1=input("Text 1 : ")
# text2=input("Text 2 : ")

# if len(text1)!=len(text2):
#     print(False)
# else:
#     print(True)
        

