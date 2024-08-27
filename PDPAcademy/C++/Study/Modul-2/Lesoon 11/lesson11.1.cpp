#include <iostream>
using namespace std;

int findMax(int arr[], int n)
{
    int maxElement = arr[0]; // massivning birinchi elementini eng katta element sifatida o'zgaruvchiga o'rnating

    for (int i = 1; i < n; i++)
    {
        if (arr[i] > maxElement)
        {                        // massivning boshqa elementlarini tekshirib
            maxElement = arr[i]; // agar biror element eng katta bo'lsa, o'zgaruvchini yangilab uni qo'yamiz
        }
    }

    return maxElement; // o'zgaruvchani qaytarib chiqamiz
}

int main()
{
    int N;
    cout << "Massiv uzunligini kiriting: ";
    cin >> N;

    int arr[N];
    cout << "Massiv elementlarini kiriting: ";
    for (int i = 0; i < N; i++)
    {
        cin >> arr[i];
    }

    int maxElement = findMax(arr, N);
    cout << "Eng katta element: " << maxElement << endl;

    return 0;
}
