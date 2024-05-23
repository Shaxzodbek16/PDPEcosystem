#include <iostream>
using namespace std;
int main()
{
    int K, N;
    cout << "K va N natural sonlari berilgan. K sonini N marta ekranga chiqaruvchi dastur\n\n";
    cout << "K= ";
    cin >> K;
    cout << "N= ";
    cin >> N;
    for (int i = 0; i < N; i++)
    {
        cout << K << " ";
    }
}