#include <iostream>
using namespace std;
int main()
{
    cout << "Natural sonlardan iborat N ta elementli massiv berilgan. Massivdagi tub sonlarni ekranga chiqaruvchi dastur !\n";
    int N;
    cout << "Nechta son kiritmoqchisiz: ";
    cin >> N;
    int A[N];
    for (int i = 0; i < N; i++)
    {
        cout << (i + 1) << "-sonni kiriting: ";
        cin >> A[i];
        int counter = 0;
        for (int j = 1; j <= A[i]; j++)
        {

            if (A[i] % j == 0)
            {
                counter++;
            }
        }
        if (counter == 2)
        {
            cout << "Bu " << A[i] << " son tub son." << endl;
        }
    }
    return 0;
}