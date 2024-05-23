#include <iostream>
#include <math.h>
using namespace std;
void KamayishTartibida3(float a, float b, float c)
{
    float maxx, minn, medium;
    maxx = max(max(a, b), c);
    minn = min(a, min(b, c));
    medium = a + b + c - maxx - minn;
    cout << "Natija: " << maxx << " " << medium << " " << minn;
}
int main()
{
    int A, B, C;
    cout << "Berilgan 3 ta sonni kamayish tartibida ekranga chiqaruvchi funksiya.\n";
    cout << "1-sonni kiriting: ";
    cin >> A;
    cout << "2-sonni kiriting: ";
    cin >> B;
    cout << "3-sonni kiriting: ";
    cin >> C;
    cout << "Natija: ";
    KamayishTartibida3(A, B, C);
    return 0;
}