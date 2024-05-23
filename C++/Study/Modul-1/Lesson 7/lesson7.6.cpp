#include <iostream>
using namespace std;
int main()
{
    int x;
    cout << "Foydalanuvchi tomonidan kiritilgan natural sonning \"uch xonali juft son\" ekanligini tekshiruvchi dastur!\n";
    cout << "uch xonali son kiriting: ";
    cin >> x;
    bool A = ((x % 2 == 0) && (x >= 100) && (x <= 999));
    cout << "Natija: " << A << endl;
    return 0;
}