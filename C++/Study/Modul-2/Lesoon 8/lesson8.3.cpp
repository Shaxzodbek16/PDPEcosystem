#include <iostream>
#include <string.h>
using namespace std;
bool isTrueOrFalse(int a)
{
    return a / 5;
}
int main()
{
    cout << "Satr berilgan. Satrdagi barcha ‘*’ belgisi hamda uning o’ng va chap tomonidagi bittadan belgilarni o’chirib tashlovchi dastur! \n";
    string s, k;
    cout << "Satrni kiriting: ";
    getline(cin, s);
    for (int i = 0; i <= s.length(); i++)
    {
        if (s[i] == '*')
        {
            k = s.erase(i - 1, 3);
        }
        else
        {
            k = s;
        }
    }
    cout << k;
    cout << endl;
    cout << isTrueOrFalse(10);
    return 0;
}