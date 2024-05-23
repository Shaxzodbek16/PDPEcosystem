#include <iostream>
using namespace std;
int main()
{
    int count = 0;
    double sum = 0;
    double number;
    cout << "Foydalanuvchi tomonidan sonlar kiritilaveradi. Bu jarayon 0 kiritilguncha davom etadi. Shu sonlarning o’rta arifmetigini aniqlovchi dastur\n\n";
    while (true)
    {
        cout << "Erter bosgan holda kiriting: ";
        cin >> number;
        if (number == 0)
        {
            break;
        }
        sum += number;
        count++;
    }
    if (count == 0)
    {
        cout << "Siz son kiritmadingiz (Natija nol)" << endl;
    }
    else
    {
        double rta_arifmetik = sum / count;
        cout << "O'rta arifmetik: " << rta_arifmetik << endl;
    }
    return 0;
}