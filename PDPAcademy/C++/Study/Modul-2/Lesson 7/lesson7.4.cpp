#include <iostream>
#include <string.h>
using namespace std;
int main()
{
    cout << "2 ta satr berilgan. Ularni birinchi belgilarisiz bitta satr ko’rinishida ekranga chiqaruvchi dastur.\n";
    string a, b, a1, b1;
    cout << "1-sartni kiriting: ";
    getline(cin, a);
    cout << "2-satrni kiriting: ";
    getline(cin, b);
    cout << a1.assign(a, 1, a.length()) + b1.assign(b, 1, b.length()) << endl;
    return 0;
}