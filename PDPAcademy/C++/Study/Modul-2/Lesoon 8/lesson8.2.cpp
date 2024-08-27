#include <iostream>
#include <string.h>
using namespace std;
int main()
{
    cout << "s satr berilgan. Agar s satrda “code” jumlasi necha marta qatnashganini aniqlovchi dastur.\n";
    int counter = 0;
    string s;
    getline(cin, s);
    for (int i = 0; i <= s.length(); i++)
    {
        if ((s[i] == 'c') && (s[i + 1] == 'o') && (s[i + 3] == 'e'))
        {
            counter++;
        }
    }
    cout << counter;
}
