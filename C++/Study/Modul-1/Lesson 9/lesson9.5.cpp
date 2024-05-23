#include <iostream>
using namespace std;
int main()
{
    int ox, oy;
    cout << "Dekart koordinata tekisligida Ox va Oy o’qlarida yotmaydigan nuqtaning koordinatalari x va y berilgan. Shu nuqta tekislikning qaysi choragida joylashganini aniqlovchi dastur\n\n";
    cout << "OX sonini kiriting: ";
    cin >> ox;
    cout << "OY sonini kiriting: ";
    cin >> oy;
    if (ox > 0 && oy > 0)
    {
        cout << "Birinchi chorakda yotadi\n";
    }
    else if (ox > 0 && oy < 0)
    {
        cout << "to'rtinchi chorakda yotadi\n";
    }
    else if (ox < 0 && oy > 0)
    {
        cout << "ikkinchi chorakda yotadi\n";
    }
    else if (ox < 0 && oy < 0)
    {
        cout << "uchinchi chorakda yotadi\n";
    }
    else
    {
        cout << "Kerakli nuqta emas (Berilgan nuqta OY , OX yoki O nuqtaga tegishli)\n";
    }
}