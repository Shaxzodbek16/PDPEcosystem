#include <iostream>
#include <math.h>
using namespace std;
int main()
{
    int a, b, c;
    cout << "\n\n";
    cout << "Berilgan 3 ta sonning kattasini (if-else, ternary operatorlarini ishlatmasdan) topuvchi dastur!\n\n";
    cout << "1-son: ";
    cin >> a;
    cout << "2-son: ";
    cin >> b;
    cout << "3-son: ";
    cin >> c;
    cout << "Natija: " << max(max(a, b), c) << endl;
    return 0;
}