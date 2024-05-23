#include <iostream>
#include <string.h>
using namespace std;
int main()
{
    string S, S1;
    cout << "Berilgan s satrni uzunligicha marta takrorlanishidan hosil bo’lgan yangi satrni hosil qiluvchi dastur. \n\n";
    cout << "Satrni kiriting: ";
    getline(cin, S);
    for (int i = 1; i <= S.length(); i++)
    {
        cout << S;
    }
}