#include <iostream>
using namespace std;
int main()
{
    int a, b;
    cout << "Berilgan ikkita sonning avval kichigini, keyin kattasini ekranga chiqaruvchi dastur\n\n ";
    cout << "Birinchi sonni kiriting: ";
    cin >> a;
    cout << "ikkinchi sonni kiriting: ";
    cin >> b;
    if (a > b)
    {
        cout << "Natija: " << a << " " << b;
    }
    else
    {
        cout << "Natija: " << b << " " << a;
    }
}