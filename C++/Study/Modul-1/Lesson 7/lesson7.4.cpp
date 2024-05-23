#include <iostream>
using namespace std;
int main()
{
    int x, y;
    cout << "IKkita sonning ham toqligini aniqlovchi dastur!\n\n";
    cout << "ikkita son kiriting: ";
    cin >> x >> y;
    bool n = ((x % 2 == 1 && (x >= 0)) && (y % 2 == 1) && (y >= 0));
    cout << n << endl;
}