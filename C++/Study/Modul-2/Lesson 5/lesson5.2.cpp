#include <iostream>
using namespace std;
int isOdd(int a)
{
    int b;
    if (a % 2 == 0)
    {
        b = a * a;
        cout << "Natija: " << b << endl;
    }
    else
    {
        b = a * a * a;
        cout << "Natija: " << b << endl;
    }
    return b;
}
int main()
{
    int A;
    cout << "Berilgan sonning toq yoki juftligini aniqlab, u juft bo’lsa kvadratini, aks holda kubini natija sifatida qaytaruvchi funksiya.\n";
    cout << "Sonni kiriting: ";
    cin >> A;
    isOdd(A);
}