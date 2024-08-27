#include <iostream>
using namespace std;
int main()
{
    cout << "Barcha musbat 2 xonali toq sonlarni teskari tartibda ekranga chiqaruvchi dastur\n";
    for (int a = 99; a >= 1; a--)
    {
        if (a % 2 == 1)
        {
            cout << a << " ";
        }
    }
}