#include <iostream>
using namespace std;
int main()
{
    int K;
    string week;
    cout << "Yilda 365 kun bor. 1-yanvar haftaning dushanba kuni bo’lsa, yilning K-kuni haftaning qaysi kuni ekanligini aniqlovchi dastur.\n";
    cout << "Kunni kiriting: ";
    cin >> K;
    if (K >= 1 && K <= 365)
    {
        switch (K % 7)
        {
        case 1:
        {
            week = "Dushanba";
        }
        break;
        case 2:
        {
            week = "Seshanba";
        }
        break;
        case 3:
        {
            week = "Chorshanba";
        }
        break;
        case 4:
        {
            week = "Payshanba";
        }
        break;
        case 5:
        {
            week = "Juma";
        }
        break;
        case 6:
        {
            week = "Shanba";
        }
        break;
        case 0:
        {
            week = "Yakshanba";
        }
        break;
        }
        cout << week;
    }
    else
    {
        cout << "Kiritilgan kunlar 1 dan 365 gacha bo'lishi kerak.";
    }
}