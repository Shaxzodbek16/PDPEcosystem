#include <iostream>
using namespace std;
int main()
{
    int a, b, c, d, e;
    cout << "Berilgan 5 ta son orasida nechta musbat, nechta manfiy, nechta nol qatnashganini aniqlovchi dastur\n";
    cout << "Birinchi sonni kiriting: ";
    cin >> a;
    cout << "ikkinchi sonni kiriting: ";
    cin >> b;
    cout << "to'rtinchi sonni kiriting: ";
    cin >> c;
    cout << "Birinchi sonni kiriting: ";
    cin >> d;
    cout << "beshinchi sonni kiriting: ";
    cin >> e;

    int countPositive = 0;
    int countNegative = 0;
    int countZero = 0;
    if (a > 0)
    {
        countPositive++;
    }
    else if (a < 0)
    {
        countNegative++;
    }
    else
    {
        countZero++;
    }

    if (b > 0)
    {
        countPositive++;
    }
    else if (b < 0)
    {
        countNegative++;
    }
    else
    {
        countZero++;
    }

    if (c > 0)
    {
        countPositive++;
    }
    else if (c < 0)
    {
        countNegative++;
    }
    else
    {
        countZero++;
    }

    if (d > 0)
    {
        countPositive++;
    }
    else if (d < 0)
    {
        countNegative++;
    }
    else
    {
        countZero++;
    }

    if (e > 0)
    {
        countPositive++;
    }
    else if (e < 0)
    {
        countNegative++;
    }
    else
    {
        countZero++;
    }

    cout << "B yerda  " << countPositive + countZero << " ta musbat son, " << countNegative << " ta manfiy son va "
         << countZero << " ta nol bor\n";
}