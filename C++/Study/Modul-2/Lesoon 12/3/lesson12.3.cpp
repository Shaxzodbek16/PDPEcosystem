#include <iostream>
#include <math.h>
#include <string.h>
#include <time.h>
using namespace std;

void bubleSort(int arr[], int arrSize)
{
    for (int i = 0; i < arrSize - 1; i++)
    {
        for (int j = 0; j < arrSize - 1 - i; j++)
        {
            if (arr[j + 1] > arr[j])
            {
                swap(arr[j], arr[j + 1]);
            }
        }
    }
}

void printArray(int arr[], int arrSize)
{
    for (int i = 0; i < arrSize; i++)
    {
        cout << arr[i] << " ";
    }
    cout << endl;
}

int main()
{
    cout << "Random.\n";
    srand(time(NULL));
    int arrSize;
    cout << "Nechta son kiritmoqchisiz: \n";
    cin >> arrSize;
    int arr[arrSize];

    for (int i = 0; i < arrSize; i++)
    {
        arr[i] = rand() % 101;
    }
    cout << "Original array: \n";
    printArray(arr, arrSize);

    bubleSort(arr, arrSize);

    cout << "Sorted array: \n";
    printArray(arr, arrSize);

    return 0;
}