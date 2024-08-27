#include <iostream>
#include <math.h>
using namespace std;
float KattaVaKichik(float a, float b, float c, float d)
{
    float maxx, minn;
    maxx = max(a, max(b, max(c, d)));
    minn = min(a, min(b, min(c, d)));
    return (maxx + minn);
}
int main()
{
    int a1, a2, a3, a4;
    cout << "Berilgan 4 ta haqiqiy sonning eng katta va eng kichigini yig'indisini hisoblab natija sifatida qaytaruvchi funksiya. \n";
    cout << "1-sonni kiriting: ";
    cin >> a1;
    cout << "2-sonni kiriting: ";
    cin >> a2;
    cout << "3-sonni kiriting: ";
    cin >> a3;
    cout << "4-sonni kiriting: ";
    cin >> a4;
    cout << "Natija: " << KattaVaKichik(a1, a2, a3, a4);
}