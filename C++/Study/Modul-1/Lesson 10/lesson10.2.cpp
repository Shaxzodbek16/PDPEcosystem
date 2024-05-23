#include <iostream>
using namespace std;
int main()
{
    int raqam;
    string month;
    cout << "Biror oyning tartib raqami kiritilganda, shu oyda necha kun borligini ekranga chiqaruvchi dastur\n";
    cout << "Biror oyning tartib raqamini kiriting: ";
    cin >> raqam;

    if (raqam > 0 && raqam <= 12)
    {
        switch (raqam)
        {
        case 1:
        {
            month = "Yanvar 31 kun mavjud";
        }
        break;
        case 2:
        {
            month = "Fevral, 28 kun mavjud ammo kabisa yilida 29 kun mavjud bo'ladi";
        }
        break;
        case 3:
        {
            month = "Mart 31 kun mavjud";
        }
        break;
        case 4:
        {
            month = "Aprel, 30 kun mavjud";
        }
        break;
        case 5:
        {
            month = "May 31 kun mavjud";
        }
        break;
        case 6:
        {
            month = "Iyun, 30 kun mavjud";
        }
        break;
        case 7:
        {
            month = "Iyul, 31 kun mavjud";
        }
        break;
        case 8:
        {
            month = "Avgust, 31 kun mavjud";
        }
        break;
        case 9:
        {
            month = "Sentabr, 30 kun mavjud";
        }
        break;
        case 10:
        {
            month = "Oktabr, 31 kun mavjud";
        }
        break;
        case 11:
        {
            month = "Noyabr, 30 kun mavjud";
        }
        break;
        case 12:
        {
            month = "Dekabr, 31 kun mavjud";
        }
        break;
        }
        cout << "Natija: " << month;
    }
    else
    {
        cout << "Kerakli oraliq kiritilmadi\n";
    }
}