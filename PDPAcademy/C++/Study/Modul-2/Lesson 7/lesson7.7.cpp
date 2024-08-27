#include <iostream>
#include <string.h>
using namespace std;
int main()
{
    cout << "S satr berilgan.Undagi yonma - yon kelgan bir xil belgilarning barchasini ekranga chiqaruvchi dastur!\n";
    string S;
    cout << "Satrni kiriting: ";
    getline(cin, S);
    cout<<"Natija: ";

    for (int i = 0; i <= S.length()-1; i++)
    {
        if (S[i] == S[i + 1])
        {
            cout<< S[i] <<" ";
        }
    }
    cout<<"."<<endl;
    return 0;
}