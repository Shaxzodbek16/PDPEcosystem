#include <iostream>
#include <string>
#include <math.h>

using namespace std;

int main()
{
    cout << "S satr berilgan. Undagi katta va kichik harfli harflardan iborat yangi satrlarni hosil qiluvchi dastur!\n\n";
    string S;
    cout << "Satr kiriting: ";
    getline(cin, S);

    string Kattalari, Kichiklari;

    for (char ch : S)
    {
        if (isupper(ch))
        {
            Kattalari += ch;
        }
        else if (islower(ch))
        {
            Kichiklari += ch;
        }
    }

    cout << "Natijaviy satr: " << Kattalari << " \n    " << Kichiklari << endl;

    return 0;
}