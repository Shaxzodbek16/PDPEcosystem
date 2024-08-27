#include <iostream>
using namespace std;

void reverseArray(int arr[], int n)
{
    int start = 0;
    int end = n - 1;

    while (start < end)
    {
        // Massivning bosh va oxirgi elementlarini almashtiramiz
        int temp = arr[start];
        arr[start] = arr[end];
        arr[end] = temp;

        start++;
        end--;
    }
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

    reverseArray(arr, N);

    cout << "Yangi massiv: ";
    for (int i = 0; i < N; i++)
    {
        cout << arr[i] << " ";
    }
    cout << endl;

    return 0;
}
