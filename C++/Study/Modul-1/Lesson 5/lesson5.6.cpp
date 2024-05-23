#include <iostream>
using namespace std;
int main()
{
    int a, b, c, d;
    cout << "Ikki xonali sonning raqamlari yig'indisini hisoblovchi dastur!" << endl;
    cout << "Ikki xonali son kiriting: ";
    cin >> a;
    b = a % 10;
    c = (a - b) / 10;
    d = b + c;

    cout << "Natija:  " << d << endl;
    return 0;
}