#include <iostream>
using namespace std;
int main()
{
    cout << "Butun sonlardan iborat N ta elementli massiv berilgan. Massivda nechta juft, nechta toq son borligini aniqlovchi dastur!\n";
    int N, juft = 0, toq = 0;
    cout << "Elementlar sonini kiriting: ";
    cin >> N;
    int A[N];
    for (int i = 0; i < N; i++)
    {
        cout << (i + 1) << "- elementini kiriting: ";
        cin >> A[i];
        if (A[i] % 2 == 0)
        {
            juft++;
        }
        else
        {
            toq++;
        }
    }
    cout << "Natija: " << juft << " ta juft va " << toq << " ta toq son mavjud !" << endl;
    return 0;
}