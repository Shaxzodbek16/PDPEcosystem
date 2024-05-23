#include <iostream>
#include <math.h>
using namespace std;
int main()
{
    int A = 0;
    cout << "Foydalanuvchi tomonidan burchak o'lchovi gradusda kiritilganda, shu burchakning sinusi, cosinusi, tangensini hisoblovchi dastur\n\n";
    cout << "Gradusni kiriting: ";
    cin >> A;
    cout << "Natija: Sin=" << sin(A * M_PI / 180) << " cos=" << cos(A * M_PI / 180) << " tan=" << tan(A * M_PI / 180) << "\n";
    return 0;
}