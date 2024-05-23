#include <iostream>
#include <string.h>
using namespace std;
int main()
{
    string S, S1;
    cout << "Berilgan s satrni birinchi va oxirgi belgilarisiz ekranga chiqaruvchi dastur. \n\n";
    cout << "Satrni kiriting: ";
    getline(cin, S);
    cout << S1.assign(S, 1, S.length() - 2) << endl;
    return 0;
}