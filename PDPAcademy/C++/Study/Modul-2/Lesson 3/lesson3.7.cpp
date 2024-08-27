#include <iostream>
using namespace std;
int main()
{
    cout << "N natural soni berilgan. 1 dan N gacha bo’lgan tub sonlarni ekranga chiqaruvchi dastur\n";
    int n;

    cout << "Son Kiriting = ";
    cin >> n;
    cout << n << " gacha bo'lgan TUB sonlar :" << endl;

    for (int i = 2; i <= n; i++)
    {
        bool tub = true;
        for (int j = 2; j <= sqrt(i); j++)
        {
            if (i % j == 0)
            {
                tub = false;
                break;
            }
        }
        if (tub == true)
            cout << i << " ";
    }
    return 0;
}
