#include <iostream>
#include <string.h>
using namespace std;
int main()
{
    int N;
    cout << "Nechta son olmoqchisiz: ";
    cin >> N;
    int numbers[N];
    for (int i = 0; i < N; i++)
    {
        do
        {
            cout << "Raqam kiriting (65.......90): ";
            cin >> numbers[i];
        } while (!(numbers[i] > 64 && numbers[i] < 91));

        cout << (char)numbers[i] << endl;
    }
    return 0;
}