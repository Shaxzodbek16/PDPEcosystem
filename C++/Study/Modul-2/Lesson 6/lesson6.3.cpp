#include <iostream>
#include <math.h>
using namespace std;

float perimetr(float a)
{
    return 2 * a * M_PI;
}
float perimetr(float a, float b)
{
    return a + b + sqrt(a * a + b * b);
}
int main()
{
    int select, a, b;
    cout << "1 ta haqiqiy sonni parametr sifatida qabul qilganda uni aylananing radiusi deb hisoblab, aylananing uzunligini hisoblovchi; \
     2 ta haqiqiy sonni parametr sifatida qabul qilganda esa ularni to’g’ri burchakli uchburchakning katetlari deb hisoblab, \
      shu uchburchakning perimetrini hisoblovchi perimetr() funksiyasi\n\n";
    cout << "1. Aylananing uzunligini hisoblaydi. \n";
    cout << "2. To’g’ri burchakli uchburchakning katetlari orqali, shu uchburchakning perimetrini hisoblaydi\n";
    cout << "Tanlang: ";
    cin >> select;
    if (select == 1)
    {
        cout << "Aylananing radiusini kiriting: ";
        cin >> a;
        cout << "Natija: " << perimetr(a) << " ga teng. \n";
    }
    else if (select == 2)
    {
        cout << "1-katetini kiriting: ";
        cin >> a;
        cout << "2-katetini kiriting: ";
        cin >> b;
        cout << "Natija: " << perimetr(a, b) << " ga teng.\n";
    }
    else
    {
        cout << "1 yoki 2 ni tanlang.\n";
    }
    return 0;
}