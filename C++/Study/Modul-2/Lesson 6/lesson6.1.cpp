#include <iostream>
#include <math.h>
using namespace std;

float power(float num1)
{
    return pow(num1, 2);
}
float power(float num1, float num2)
{
    return pow(num1, num2);
}

int main()
{
    cout << "1 ta A haqiqiy sonni parametr sifatida qabul qilganda uning kvadratini; 2 ta A va B haqiqiy sonlarini parametr sifatida qabul qilganda esa A sonining B-darajasini hisoblab natija sifatida qaytaruvchi power() funksiyasi !\n\n";
    int num1, num2, select;
    cout << "Qaysi birini tanlamoqchisiz: ";
    cout << endl;
    cout << "1.  A haqiqiy sonni parametr sifatida qabul qilganda uning kvadratini hisoblash.\n";
    cout << "2.  2 ta A va B haqiqiy sonlarini parametr sifatida qabul qilganda esa A sonining B-darajasini hisoblash.\n";
    cin >> select;
    if (select == 1)
    {
        cout << endl;
        cout << "Sonni kiriting: ";
        cin >> num1;
        cout << endl;
        cout << num1 << " ning kvadrati " << power(num1) << " ga teng.\n\n";
    }
    else if (select == 2)
    {
        cout << "1-sonni kiriting: ";
        cin >> num1;
        cout << "2-sonni kiriting: ";
        cin >> num2;
        cout << endl;
        cout << num1 << " ^ " << num2 << " = " << power(num1, num2) << endl;
    }
    else
    {
        cout << "1 yoki 2 ni tanlang !\n";
    }
}