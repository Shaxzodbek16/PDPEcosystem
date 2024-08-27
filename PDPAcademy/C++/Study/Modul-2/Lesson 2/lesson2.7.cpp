#include <iostream>
using namespace std;
int main()
{
    int son;
    cout << "Foydalanuvchi tomonidan butun sonlar kiritilaveradi. Bu jarayon manfiy son kiritilguncha davom etadi. Shu sonlarning ichida nechtasi 5 ga karrali ekanligini aniqlovchi dastur\n";
    int count = 0;

    while (true)
    {
        cout << "Butun son kiriting (negative son kiritguncha to'xtaydi): ";
        cin >> son;

        if (son < 0)
        {
            break;
        }

        if (son % 5 == 0)
        {
            count++;
        }
    }

    cout << "Kiritilgan sonlar ichida 5 ga qoldiqsiz bo'linadigan sonlar soni: " << count << " ta" << endl;

    return 0;
}