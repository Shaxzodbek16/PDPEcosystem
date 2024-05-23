#include <iostream>
using namespace std;
void findMedium(float a, float b, float c)
{
    float maxx, minn, medium;
    maxx = max(a, max(b, c));
    minn = min(a, min(c, b));
    medium = a + b + c - maxx - minn;
    cout << "O'shish tartibi " << minn << " " << medium << " " << maxx << "\n"
         << "Natija: " << medium << endl;
}
int main()
{
    int A, B, C;
    cout << "Berilgan 3 ta sonning o’sish tartibida joylashgandagi o’rtadagisini aniqlab natija sifatida qaytaruvchi funksiya.\n";
    cout << "1-sonni kiriting: ";
    cin >> A;
    cout << "2-sonni kiriting: ";
    cin >> B;
    cout << "3-sonni kiriting: ";
    cin >> C;
    findMedium(A, B, C);
    return 0;
}