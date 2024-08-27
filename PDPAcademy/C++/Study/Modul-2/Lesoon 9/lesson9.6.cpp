#include <iostream>
#include <string.h>
using namespace std;
int main()
{
    cout << "Satrlardan iborat massiv berilgan. Uzunlik jihatidan undagi eng qisqa so’zni va uning uzunligini aniqlovchi dastur!\n";
    int N, min;
    cout << "Nechta satr kiritmoqchisiz: ";
    cin >> N;
    cin.ignore();
    string str[N], minstr;
    for (int i = 0; i < N; i++)
    {
        cout << (i + 1) << " - satrni kiriting: ";
        getline(cin, str[i]);
        minstr = str[0];
        min = str[0].length();
        if (min > str[i].length())
        {
            min = str[i].length();
            minstr = str[i];
        }
        else
        {
            min = str[0].length();
            minstr = str[0];
        }
    }
    cout << "Natija:  ";
    for (int i = 0; i < N; i++)
    {
        if (minstr.length() == str[i].length())
        {
            cout << str[i] << " ";
        }
    }
    cout << " .  \n U(lar)ning uzunligi " << min << " ga teng." << endl;
    return 0;
}