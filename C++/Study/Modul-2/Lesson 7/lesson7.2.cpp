#include <iostream>
#include <string.h>
using namespace std;
int main()
{
    cout << "2 ta satr berilgan. Ularni uzun+qisqa+uzun shaklida birlashtirilishidan hosil bo'lgan yangi satrni hosil qiluvchi dastur. \n";
    string a, b;
    cout << "1-sartni kiriting: ";
    getline(cin, a);
    cout << "2-satrni kiriting: ";
    getline(cin, b);
    if (a.length() > b.length())
    {
        cout << a + b + a << endl;
    }
    else if (a.length() < b.length())
    {
        cout << b + a + b << endl;
    }
    else
    {
        cout << "Ikkala satr ham teng.";
        cout << a + b + a << " va " << b + a + b << " ko'rinishda bo'la oladi." << endl;
    }
    return 0;
}