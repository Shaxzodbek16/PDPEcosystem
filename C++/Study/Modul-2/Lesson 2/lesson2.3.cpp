#include <iostream>
using namespace std;
int main()
{
    int A, B, C;
    cout << "A, B, C butun sonlari berilgan. A va B sonlari orasida joylashgan C ga karrali sonlarni ekranga chiqaruvchi dastur\n\n";
    cout << "Boshlansin: ";
    cin >> A;
    cout << "Tugasin: ";
    cin >> B;
    cout << "Nechchiga karrali bo'lsin: ";
    cin >> C;
    for (int a = A; a <= B; a++)
    {
        if (a % C == 0)
        {
            cout << a << endl;
        }
    }
    return 0;
}