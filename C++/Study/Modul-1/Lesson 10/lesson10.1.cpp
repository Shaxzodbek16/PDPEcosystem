#include <iostream>
using namespace std;
int main()
{
    int a;
    string bir, on;
    cout << "Talabaning o’zlashtirish ko’rsatkichi berilgan. 0-100 oraliqdagi butun son. Uning o’zlashtirishiga qarab, natijani so’zlarda ifodalovchi dastur\n";
    cout << "Talabaning balini kiriting: ";
    cin >> a;
    if (a > 0 && a <= 100)
    {
        switch (a % 10)
        {
        case 1:
        {
            bir = "bir";
        }
        break;
        case 2:
        {
            bir = "ikki";
        }
        break;
        case 3:
        {
            bir = "uch";
        }
        break;
        case 4:
        {
            bir = "to'rt";
        }
        break;
        case 5:
        {
            bir = "besh";
        }
        break;
        case 6:
        {
            bir = "olti";
        }
        break;
        case 7:
        {
            bir = "yetti";
        }
        break;
        case 8:
        {
            bir = "sakkiz";
        }
        break;
        case 9:
        {
            bir = "to'qqiz";
        }
        break;
        }
        switch (a / 10)
        {
        case 1:
        {
            on = "o'n";
        }
        break;
        case 2:
        {
            on = "yigirma";
        }
        break;
        case 3:
        {
            on = "o'ttiz";
        }
        break;
        case 4:
        {
            on = "qirq";
        }
        break;
        case 5:
        {
            on = "ellik";
        }
        break;
        case 6:
        {
            on = "oltmish";
        }
        break;
        case 7:
        {
            on = "yetmish";
        }
        break;
        case 8:
        {
            on = "sakson";
        }
        break;
        case 9:
        {
            on = "to'qson";
        }
        break;
        case 10:
        {
            on = "yuz";
        }
        break;
        }
        cout << "Natija: " << on << " " << bir << endl;
    }

    else
    {
        cout << "Kerakli oraliq kiritilmadi.\n";
    }
    if (a == 0)
    {
        cout << "Natija: nol\n";
    }
}
