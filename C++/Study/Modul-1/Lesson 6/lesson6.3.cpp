#include <iostream>
using namespace std;
int main()
{
    int N, R100;
    cout << "99 dan katta bo'lgan sonning birinchi raqamini aniqlaydi" << endl;
    cout << "99 dan katta son kiriting:";
    cin >> N;
    R100 = N / 100;
    R100 = R100 % 10;

    cout
        << "Natija " << R100 << endl;
}