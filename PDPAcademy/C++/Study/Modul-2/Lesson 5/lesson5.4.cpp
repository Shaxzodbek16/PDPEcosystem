#include <iostream>
#include <math.h>
using namespace std;
float OrtaArifmetik3(float a, float b, float c)
{
    float x = (a + b + c) / 3;
    x = pow(x, 4);
    return x;
}
int main()
{
    int a1, a2, a3;
    cout << "Berilgan 3 ta haqiqiy sonning o'rta arifmetigini hisoblab, 4-darajaga oshirib, natija sifatida qaytaradigan funksiya.\n";
    cout << "1-sonni kiriting: ";
    cin >> a1;
    cout << "2-sonni kiriting: ";
    cin >> a2;
    cout << "3-sonni kiriting: ";
    cin >> a3;
    cout << "Natija: " << OrtaArifmetik3(a1, a2, a3);
}