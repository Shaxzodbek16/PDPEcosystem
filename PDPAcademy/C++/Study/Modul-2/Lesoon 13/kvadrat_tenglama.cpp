#include <iostream>
#include <math.h>
using namespace std;
int main()
{
    cout << "Kvadrat tenglamaning ildizlarini topib beruvchi dastur!\n";
    cout << "\"ax^2+bx+c=0\" ko'rinishdagi tenglamaning koeffisentlarini kiriting.\n";
    float a = 1, b, c, D, x1, x2;
    do
    {
        cout << "\n \"a\" \"0\" ga teng bo'lmaslik kerak. Aks holda kvadrat tenglama oddiy chiziqli tenglamaga aylanib qoladi.\n";
        cout << "a= ";
        cin >> a;
    } while (a == 0);
    cout << "b= ";
    cin >> b;
    cout << "c= ";
    cin >> c;
    D = b * b - 4 * a * c;
    if (D > 0)
    {
        cout << "Tenglama ikkita ildizga ega. Chunki D>0.\n\n";
        x1 = ((-1 * b) + sqrt(D)) / (2 * a);
        x2 = ((-1 * b) - sqrt(D)) / (2 * a);
        cout << "Birinchi ildizi " << x1 << " ga teng.\n";
        cout << "Ikkinchi ildizi " << x2 << " ga teng.\n";
        cout << "Buni quyidagicha ifodalash mumkin: " << endl;
        cout << a << "(x-(" << x1 << "))*(x-(" << x2 << "))" << endl
             << endl;
        if (a > 0)
        {
            cout << " Bu koordinatalar sistemasida " << (char)92 << (char)47 << " dek ko'rinadi\n";
        }
        else if (a < 0)
        {
            cout << " Bu koordinatalar sistemasida " << (char)47 << (char)92 << " dek ko'rinadi\n";
        }
    }
    else if (D == 0)
    {
        cout << "Tenglama bitta ildizga ega. Chunki D=0.\n\n";
        x2 = ((-1 * b) - sqrt(D)) / (2 * a);
        cout << "Tenglama bitta ildizga ega va u  " << x1 << " ga teng.\n";
        cout << a << "(x-(" << x1 << "))*(x-(" << x2 << "))" << endl
             << endl;
        ;
        if (a > 0)
        {
            cout << "Bu koordinatalar sistemasida " << (char)92 << (char)47 << " dek ko'rinadi\n";
        }
        else if (a < 0)
        {
            cout << "Bu koordinatalar sistemasida " << (char)47 << (char)92 << " dek ko'rinadi\n";
        }
    }
    else
    {
        cout << "Tenglama yechimga ega emas chunki D<0 dan.\n\n";
        if (a > 0)
        {
            cout << "Bu har doimo musbat qiymat qaytaradi.\n";
            cout << "Bu koordinatalar sistemasida " << (char)92 << (char)47 << " dek ko'rinadi\n";
        }
        else if (a < 0)
        {
            cout << "Bu har doimo manfiy qiymat qaytaradi.\n";
            cout << "Bu koordinatalar sistemasida " << (char)47 << (char)92 << " dek ko'rinadi\n";
        }
    }
    return 0;
}
