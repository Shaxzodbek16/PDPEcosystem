#include <iostream>
#include <string.h>
#include <math.h>
using namespace std;
int main()
{
    cout << "a va b satrlar berilgan. Ularning har biridan galma-gal bittadan olingan belgilardan yangi satr hosil qiluvchi dastur !\n";
    string a, b, d = "";
    cout << "1-satrni kiriting: ";
    getline(cin, a);
    cout << "2-satrni kiriting: ";
    getline(cin, b);
    int c = max(a.length(), b.length());
    for (int i = 0; i <= c; i++)
    {
        d = d + a[i] + b[i];
    }
    cout << d;
    return 0;
}