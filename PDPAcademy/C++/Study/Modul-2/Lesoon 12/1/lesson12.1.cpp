#include <iostream>
#include <time.h>
using namespace std;

void selectionSort(int arr[], int arrSize)
{
    int min_idx;
    for (int i = 0; i < arrSize - 1; i++)
    {
        min_idx = i;
        for (int j = i + 1; j < arrSize; j++)
        {
            if (arr[j] > arr[min_idx])
            {
                min_idx = j;
            }
        }
        swap(arr[i],arr[min_idx]);
    }
}

void printArray(int arr[],int arrSize){
    for(int i=0;i<arrSize;i++){
        cout<<arr[i]<<" ";
    }
    cout<<endl;
}

int main()
{
    cout << "Random.\n";
srand(time(NULL));
    int arrSize;
    cout<<"Nechta son kiritmoqchisiz: \n";
    cin>>arrSize;
    int arr[arrSize];

    for(int i=0; i<arrSize;i++){
        arr[i]=rand()%101;
    }
    cout<<"Original array: \n";
    printArray(arr, arrSize);

selectionSort(arr,arrSize);

cout<<"Sorted array: \n";
printArray(arr,arrSize);

    return 0;
}