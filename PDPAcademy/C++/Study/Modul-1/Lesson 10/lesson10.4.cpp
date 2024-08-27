#include <iostream>
using namespace std;
int main()
{
    int a;
    string bir, on, yuz;
    cout << "Foydalanuvchi tomonidan kiritilgan [1; 999] oralig’idagi natural sonni so’zlar yordamida ifodalovchi dastur\n";
    cout << "Son kiriting: ";
    cin >> a;
    if (a >= 1 && a <= 999)
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
        switch ((a - (a % 10) - (a / 100) * 100) / 10)
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
        switch (a / 100)
        {
        case 1:
        {
            yuz = "bir yuz";
        }
        break;
        case 2:
        {
            yuz = "ikki yuz";
        }
        break;
        case 3:
        {
            yuz = "uch yuz";
        }
        break;
        case 4:
        {
            yuz = "to'rt yuz";
        }
        break;
        case 5:
        {
            yuz = "besh yuz";
        }
        break;
        case 6:
        {
            yuz = "olti yuz";
        }
        break;
        case 7:
        {
            yuz = "yetti yuz";
        }
        break;
        case 8:
        {
            yuz = "sakkiz yuz";
        }
        break;
        case 9:
        {
            yuz = "to'qqiz yuz";
        }
        break;
        }
        cout << "Natija:  " << yuz << " " << on << " " << bir << endl;
    }
    else
    {
        cout << "Kerakli oraliq tanlanmadi\n";
    }
}
