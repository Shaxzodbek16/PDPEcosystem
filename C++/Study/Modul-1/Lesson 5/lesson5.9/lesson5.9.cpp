#include <iostream>
using namespace std;
int main()
{
    int num1, num2, a, b, c, d;
    cout << "Uch xonal sonning 1 va 3 ci o'rinda turga raqamlarini almashtiruvchi dastur" << endl;
    cout << "Ixtiyoriy uch xonali son kiriting: ";
    cin >> num1;
    d = num1 / 100;
    a = num1 % 100;
    b = (a - c) / 10;
    c = a % 10;
    num2 = c * 100 + b * 10 + d;
    cout << "Natija" << num2 << endl;
}