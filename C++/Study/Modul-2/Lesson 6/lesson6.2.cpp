#include <iostream>
#include <math.h>
using namespace std;
int calculate(int a, int b)
{
    return a + b;
}
int calculate(int a, int b, int c)
{
    return a * b * c;
}
int main()
{
    cout << "2 ta sonni parametr sifatida qabul qilganda ularning yig’indisini, 3 ta sonni parametr sifatida qabul qilganda esa ularning ko’paytmasini hisoblab, natija sifatida qaytaruvchi calculate() funksiyasi .\n\n";
    cout << "Bittasini tanlang: \n";
    int a, b, c, select;
    cout << "1. Ikki sonning yig'indisini hisoblaydi.\n";
    cout << "2. Uchta sonning ko'paytmasini hisoblaydi. \n";
    cin >> select;
    if (select == 1)
    {
        cout << "1-sonni kiriting: ";
        cin >> a;
        cout << "2-sonni kiriting: ";
        cin >> b;
        cout << a << " + " << b << " = " << calculate(a, b) << endl;
    }
    else if (select == 2)
    {
        cout << "1-sonni kiriting: ";
        cin >> a;
        cout << "2-sonni kiriting: ";
        cin >> b;
        cout << "3-sonni kiriting: ";
        cin >> c;
        cout << "Natija: " << a << " * " << b << " * " << c << " = " << calculate(a, b, c) << endl;
    }
    else
    {
        cout << "1 yoki 2 ni tanlang.\n";
    }
}