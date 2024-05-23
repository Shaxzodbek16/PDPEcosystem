#include <iostream>
using namespace std;
int main()
{
    cout << "Haqiqiy sonlardan iborat N ta elementli massiv berilgan. Massivning eng kichik elementi unda necha marta qatnashganini aniqlovchi dastu!\n";
    int N, min, count = 0;
    cout << "Elementlar sonini kiriting: ";
    cin >> N;
    float A[N];
    for (int i = 0; i < N; i++)
    {
        cout << (i + 1) << "- elementini kiriting: ";
        cin >> A[i];
        min = A[0];
        if (min > A[i])
        {
            min = A[i];
        }
        else
        {
            min = A[0];
        }
        if (min == A[i])
        {
            count++;
        }
    }
    cout << "Natija: " << count << endl;
    return 0;
}