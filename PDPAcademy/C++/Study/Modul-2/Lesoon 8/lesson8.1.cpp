#include <iostream>
#include <string.h>
using namespace std;
int main (){
    cout<<"s satr berilgan. Agar s satrning birinchi yoki ikkinchi belgisi ‘x’ ga teng bo’lsa, ‘x’ belgisi olib tashlang, aks holda satr o’zgarmasin\n";
    string s="", s1;
    cout<<"Satr kiriting: ";
    getline(cin,s);
    for (int i=0; i<=s.length();i++){
        if ((s[0]=='x') || (s[0]=='X')){
           s1= s.replace (0,1, "");
           cout<<s1;
           break;

        }else if ((s[1]=='x') || (s[1]=='X')){
            s1=s.replace(1,1, "");
            cout<<s1;
            break;
        }

    }

}