#include <iostream>
using namespace std;

int *squareArray(int arr[], int n)
{
    int *squaredArr = new int[n]; // Yangi massiv uchun xotirani ajratamiz

    for (int i = 0; i < n; i++)
    {
        squaredArr[i] = arr[i] * arr[i]; // Elementning kvadratini yangi massivga saqlaymiz
    }

    return squaredArr; // Yangi massivni qaytarib chiqaramiz
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

    int *squaredArr = squareArray(arr, N);

    cout << "Yangi massiv: ";
    for (int i = 0; i < N; i++)
    {
        cout << squaredArr[i] << " ";
    }
    cout << endl;

    delete[] squaredArr; // Xotirani tozalaymiz

    return 0;
}
