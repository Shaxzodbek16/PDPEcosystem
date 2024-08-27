"""Quyidagi faylni yuklab oling.
 Va faylni o'qib, ekranga 
 chiqaradigan dastur tuzing."""
import csv

def read_file(filename:str,lang:int)-> None:
    with open(f"{filename}",'r') as fh:
        file=csv.reader(fh, delimiter=";")
        for i in file:
            if lang==0:
                i.pop(1)
                i.pop(1)
            elif lang==1:
                i.pop(0)
                i.pop(1)
            elif lang==2:
                i.pop(0)
                i.pop(0)
            if i[0]!=26:
                uzunlik=len(i[0])
                add=32-uzunlik
                i[0]=i[0]+' '*add
            # i= [ i[a] for a in range(1,len(i)-2) if len(i[a])==1 i[a]= ' '+ i[a]+'  ']
            for a in range(1,len(i)-1):
                if len(i[a])==1:
                    i[a]='|'+i[a]+'| '
                elif len(i[a])==2:
                    i[a]=' '+i[a]+' '
                elif len(i[a])==3:
                    i[a]=i[a]+' '
                elif len(i[a])==4:
                    i[a]=i[a]
            for a in i:
                print(f'{a}', end=' ')
            print('\n')
def select_lang()->int:
    while True:
        try:
            lang=int(input("\n\n1. Lotin.\n2. Krill.\n3. English\nSelect number.\n>>> "))
            if lang==1 or lang==2 or lang==3:
                return lang-1
            else:
                lang=''
        except ValueError:
            print("Please enter a number\n")

def main()-> None:
    read_file('hospitals.csv',select_lang())
main()