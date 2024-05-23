#include <iostream>
#include <string.h>
using namespace std;
int main()
{
    cout << "str satri va c belgisi berilgan. str satrining har bir belgisidan keyin c belgisini joylashtirib yangi satr hosil qiluvchi dastur !\n";
    string s, c, k = "";
    cout << "Satrni kiriting: ";
    getline(cin, s);
    cout << "belgini kiriting: ";
    cin >> c;

    for (int i = 0; i <= s.length() - 1; i++)
    {
        k = k + s[i] + c;
    }
    cout << k;
    return 0;
}