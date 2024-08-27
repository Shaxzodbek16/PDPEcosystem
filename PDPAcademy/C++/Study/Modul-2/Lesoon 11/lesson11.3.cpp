#include <iostream>
#include <time.h>

using namespace std;

void printArray(int arr[], int arrSize)
{
    for (int i = 0; i < arrSize; i++)
    {
        cout << arr[i] << " ";
    }
}

void printMatrix(int **matrix, int x, int y)
{
    for (int i = 0; i < x; i++)
    {
        for (int j = 0; j < y; j++)
        {
            cout << matrix[i][j] << "\t";
        }
        cout << endl;
    }
}

int **generateMatrix(int x, int y)
{
    srand(time(NULL));
    int **matrix;

    matrix = new int *[x];
    for (int i = 0; i < x; i++)
    {
        matrix[i] = new int[y];
    }
    for (int i = 0; i < x; i++)
    {
        for (int j = 0; j < y; j++)
        {
            cout << i + 1 << "-qator " << j + 1 << "-sonini kiriting: ";
            cin >> matrix[i][j];

            // matrix[i][j] = rand()%101;
        }
    }
    return matrix;
}

int sumByArea(int **matrix, int x)
{
    int total = 0;
    for (int i = 0; i < x; i++)
    {
        for (int j = 0; j < x; j++)
        {
            if (i == j || i + j == x - 1)
            {
                total += matrix[i][j];
                cout << matrix[i][j] << "\t";
            }
            else
            {
                cout << "\t ";
            }
        }
        cout << endl;
    }
    return total;
}

int main()
{
    srand(time(NULL));
    int x, y;

    cout << "Qatorlar sonini kiririting: ";
    cin >> x;

    y = x;

    int **matrix = generateMatrix(x, y);

    printMatrix(matrix, x, y);

    int result = sumByArea(matrix, x);

    cout << result;

    return 0;
}