#include <iostream>
#include <string.h>
using namespace std;
int main()
{
    cout << "a va b satrlar berilgan bo’lsa, ularni abba ko`rinishida ketma-ket joylashtirilishidan hosil bo’lgan yangi satrni ekranga chiqaruvchi dastur .\n";
    string a, b;
    cout << "1-sartni kiriting: ";
    getline(cin, a);
    cout << "2-satrni kiriting: ";
    getline(cin, b);
    cout << a + b + b + a << endl;
    return 0;
}