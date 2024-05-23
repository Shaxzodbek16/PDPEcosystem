#include <iostream>
using namespace std;
// Bu funksiya
int isDivede5(int A)
{
    if (A % 5 == 0)
    {
        return true;
    }
    return false;
}
int main()
{
    int A;
    cout << "Berilgan butun son 5 ga qo’ldiqsiz bo’linsa true, aks holda false qiymatini qaytaruvchi funksiya.\n\n";
    cout << "Sonni kiriting: ";
    cin >> A;
    // Bu yerda murojaat qilinyapdi.
    cout << "Natija: " << isDivede5(A) << endl;
    return 0;
}