#include <iostream>
#include <string.h>
using namespace std;
int main()
{
    string S, s1 = "", s2 = "";
    cout << "Juft uzunlikdagi s satr berilgan. Avval uning 2-yarmini, keyin esa 1-yarmini ekranga chiqaruvchi dastur\n";
    cout << "Satrni kiriting: ";
    getline(cin, S);
    for (int i = S.length() / 2 - 1; i >= 0; i--)
    {
        s1 = S[i] + s1;
    }
    for (int i = S.length(); i >= S.length() / 2; i--)
    {
        s2 = S[i] + s2;
    }
    cout << s2 + s1 << endl;
}