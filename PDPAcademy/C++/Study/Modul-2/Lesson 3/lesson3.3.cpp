#include <iostream>
using namespace std;
int main()
{
    cout << "1-9 oraliqdagi N raqami berilgan. N ga mos ravishda, yulduzchali piramidani ekranga chiqaruvchi dastur !\n";
    int N;
    cout << "N ni kiriting: ";
    cin >> N;
    if (N > 0 && N < 10)
    {
        for (int i = 1; i <= N; i++)
        {
            for (int j = N; j >= i; j--)
            {
                cout << " ";
            }
            for (int j = 1; j <= i; j++)
            {
                cout << " *";
            }
            cout << endl;
        }
    }
    else
    {
        cout << "Kerakli oraliq kiritilmadi" << endl;
    }
}