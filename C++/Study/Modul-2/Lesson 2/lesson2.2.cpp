#include <iostream>
using namespace std;
int main()
{
    int A;
    cout << "N natural soni berilgan. 1 dan N gacha bo’lgan butun sonlar orasida 3 ga karrali, ammo 5 ga karrali bo’lmagan butun sonlarni ekranga chiqaruvchi dastur\n";
    cout << "Sonnin kiriting: ";
    cin >> A;
    for (int a = 0; a <= A; a = a + 3)
    {
        if (a % 5 != 0 && a % 3 == 0)
        {

            cout << "Natija: " << a << endl;
        }
    }
    return 0;
}