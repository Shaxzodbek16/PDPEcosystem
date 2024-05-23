#include <iostream>
using namespace std;
int main()
{
    int A;
    string V, B;
    cout << "Butun son berilgan. Berilgan songa mos ravishda “musbat toq son”,”manfiy juft son”,”son nolga teng” va h.k. ekranga chiqruvchi dastur\n";
    cout << "Butun son kiriting: ";
    cin >> A;
    if (A > 0)
        V = "Musbat";
    else if (A < 0)
    {
        V = "Manfiy";
    }
    else
    {
        V = "Bu son nol";
    }
    if (A % 2 == 1)
    {
        B = "Toq";
    }
    else if (A % 2 == 0 && A != 0)
    {
        B = "Juft";
    }
    else
    {
        B = "";
    }
    cout << V << " " << B << endl;
}