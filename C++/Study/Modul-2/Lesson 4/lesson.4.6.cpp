#include <iostream>
#include <math.h>
using namespace std;
int main()
{
    cout << "Berilgan N natural sonining necha xonali ekanligini (takrorlash operatorlaridan foydalanmasdan) aniqlovchi dastur!\n\n";
    int A;
    cout << "Son kiriting: ";
    cin >> A;
    if (A != 0)
    {
        cout << "Natija: " << floor(log10(abs(A))) + 1 << " xonali son" << endl;
    }
    else
    {
        cout << "1 xonali son";
    }
}