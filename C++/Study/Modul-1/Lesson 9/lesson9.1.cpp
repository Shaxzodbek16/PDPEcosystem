#include <iostream>
using namespace std;
int main()
{
    int a;
    cout << "Agar siz kiritgan son 20 dan kichik bo’lsa, shu sonning kvadratini; aks holda uning oxirgi raqamini ekranga chiqaruvchi dastur\n\n";
    cout << "Sonni kiriting: ";
    cin >> a;
    if (a < 20)
    {
        cout << "Natija: " << a * a;
    }
    else
    {
        cout << "Natija: " << a % 10;
    }
}