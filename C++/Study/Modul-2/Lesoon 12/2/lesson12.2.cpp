#include <iostream>
#include <time.h>
using namespace std;
void insertionSort(int arr[], int arrSize)
{
    int element, j;
    for (int i = 1; i < arrSize; i++)
    {
        element = arr[i];
        j = i - 1;
        while ( j>=0 && element > arr[j])
        {
            arr[j + 1] = arr[j];
            j = j - 1;
        }
        arr[j+1]=element;
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
        //[50,-50] oraliqda random
        arr[i]=rand()%101-50;
    }
    cout<<"Original array: \n";
    printArray(arr, arrSize);

insertionSort(arr,arrSize);

cout<<"Sorted array: \n";
printArray(arr,arrSize);

    return 0;
}
