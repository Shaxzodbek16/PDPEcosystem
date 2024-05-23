#include <iostream>
using namespace std;
int main()
{
    cout << "Haqiqiy sonlardan iborat N ta elementli massiv berilgan. Massiv elementlarining yig’indisini hisoblovchi dastur !\n";
    int N, total = 0;
    cout << "Elementlar sonini kiriting: ";
    cin >> N;
    float A[N];
    for (int i = 0; i < N; i++)
    {
        cout << (i + 1) << "- elementini kiriting: ";
        cin >> A[i];
        total += A[i];
    }
    cout << "Natija: " << total << endl;
    return 0;
}