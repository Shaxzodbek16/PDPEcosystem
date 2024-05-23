#include <iostream>
using namespace std;
int main()
{
    int a, b, c, x, y;
    cout << "Ixtiyoriy ikki xonali sonning raqamlarini o'rnini almashtiruvchi dastur!" << endl;
    cout << "ikki xonali son kiriting: ";
    cin >> a;
    b = a % 10;
    c = (a - b) / 10;
    x = b * 10;
    y = x + c;

    cout << "Natija: " << y << endl;
    return 0;
}