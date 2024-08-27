#include <iostream>
#include <math.h>
using namespace std;
int main()
{
    int a, b, c, maxx, minn;

    cout << "\n\n"
         << "Berilgan 3 ta sonni (if-else, ternary operatorlarini ishlatmasdan) o’sish tartibida ekranga chiqaruvchi dastur!\n\n";
    cout << "1-sonni kiriting: ";
    cin >> a;
    cout << "2-sonni kiriting: ";
    cin >> b;
    cout << "3-sonni kiriting: ";
    cin >> c;
    minn = min(a, min(b, c));
    maxx = max(max(a, b), c);
    cout << minn << " " << a + b + c - maxx - minn << " " << maxx;
}