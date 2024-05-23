#include <iostream>
using namespace std;
int main()
{
    cout << "N x M o’lchamdagi butun sonli massiv berilgan. Undagi eng kichik elementni aniqlovchi dastur! \n\n";
    int N, M;
    cout << "N(rows)= ";
    cin >> N;
    cout << "M(cols)= ";
    cin >> M;
    int A[N][M];
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < M; j++)
        {
            cout << (i + 1) << "-qatorning " << (j + 1) << "-sonini kiriting: ";
            cin >> A[i][j];
        }
        cout << endl;
    }
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < M; j++)
        {
            cout << A[i][j] << "\t";
        }
        cout << endl;
    }
    int min = A[0][0];
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < M; j++)
        {
            if (min > A[i][j])
            {
                min = A[i][j];
            }
        }
        cout << endl;
    }
    cout << "Natija: " << min << endl;
    return 0;
}