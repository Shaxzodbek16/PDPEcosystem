#include <iostream>
using namespace std;
int main()
{
    int num1, num2, a, b, c, d;
    cout << "Uch xonali sonni yuzliklar va o'nliklar o'rnida turga raqamlarni almashtiruvchi dastur!" << endl;
    cout << "Ixtiyoriy uch xonali son kiriting: ";
    cin >> num1;
    d = num1 / 100;
    a = num1 % 100;
    b = (a - c) / 10;
    c = a % 10;
    num2 = b * 100 + d * 10 + c;
    cout << "Natija:  " << num2 << endl;
}