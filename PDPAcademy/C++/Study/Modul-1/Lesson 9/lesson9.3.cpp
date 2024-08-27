#include <iostream>
using namespace std;
int main()
{
    cout << "Berilgan 3 ta sonni kamayish tartibida ekranga chiqaruvchi dastur\n\n";
    int a, b, c, min, max;
    cout << "Birinchi sonni kiriting: ";
    cin >> a;
    cout << "ikkinchi sonni kiriting: ";
    cin >> b;
    cout << "uchinchi sonni kiriting: ";
    cin >> c;
    if (a < b && a < c)
    {
        min = a;
    }
    else if (b < a && b < c)
    {
        min = b;
    }
    else
    {
        min = c;
    }
    if (a > b && a > c)
    {
        max = a;
    }
    else if (b > a && b > c)
    {
        max = b;
    }
    else
    {
        max = c;
    }
    cout << "Natija: " << max << " " << a + b + c - min - max << " " << min << endl;
}