#include <iostream>
using namespace std;
int main()
{
    cout << "Raqamlari yig’indisi 10 ga teng bo’lgan barcha 3 xonali natural sonlarni ekranga chiqaruvchi dastur\n";
    for (int i = 100; i <= 999; i++)
    {

        if ((i % 10) + ((i - (i % 10)) / 10) % 10 + (i / 100) == 10)
        {

            cout << i << "\t";
        }
        }
    return 0;
}
