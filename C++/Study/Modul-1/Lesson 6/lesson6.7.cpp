#include <iostream>
using namespace std;
int main()
{
    int a, b;
    cout << "Ikkita sonni taqqoslovchi dastur!" << endl;
    cout << "a= ";
    cin >> a;
    cout << "b= ";
    cin >> b;
    if (a > b)
    {
        cout << a << " katta " << b << " dan" << endl;
    }
    else if (a == b)
    {
        cout << "ikkalasi teng" << endl;
    }
    else
    {
        cout << b << " katta " << a << " dan" << endl;
    }
}