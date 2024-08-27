#include <iostream>
using namespace std;
int main()
{
    int a, b, c;
    cout << "Uchta sonning o'suvchi yoki yo'qligini tekshiruvchi dastur!\n";
    cout << "uchta son kiriting: ";
    cin >> a >> b >> c;
    bool n = (a < b && a < c) && ((b > a && b < c) && (c > a && c > b));
    cout << n << endl;
}