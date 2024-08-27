#include <iostream>
using namespace std;
int main()
{
    cout << "Haqiqiy sonlardan iborat N ta elementli massiv berilgan. Massivning eng kichik elementini aniqlovchi dastur!\n";
    int N;
    cout << "Elementlar sonini kiriting: ";
    cin >> N;
    float A[N], min;
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
    }
    cout << "Natija: " << min << endl;
    return 0;
}