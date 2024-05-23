#include <iostream>
#include <string>
#include <math.h>

using namespace std;

int main()
{
    cout << "S satr berilgan. Undagi raqamlardan iborat yangi satrlarni hosil qiluvchi dastur!\n\n";
    string S;
    cout << "Satr kiriting: ";
    getline(cin, S);

    string Sonlar;

    for (char ch : S)
    {
        if (isdigit(ch))
        {
            Sonlar += ch;
        }
    }

    cout << "Natijaviy satr: " << Sonlar << endl;

    return 0;
}