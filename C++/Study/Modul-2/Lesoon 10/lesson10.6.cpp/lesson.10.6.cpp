#include <iostream>
using namespace std;
int main()
{
    cout << "N x N o’lchamdagi butun sonli massiv berilgan. Undagi ajratib ko’rsatilgan sohadagi elementlar yig’indisini aniqlovchi dastur! \n\n";
    int N, M;
    cout << "N(rows and cols)= ";
    cin >> N;
    int A[N][N];
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            cout << (i + 1) << "-qatorning " << (j + 1) << "-sonini kiriting: ";
            cin >> A[i][j];
        }
        cout << endl;
    }
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            cout << A[i][j] << "\t";
        }
        cout << endl;
    }

    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            if (j == 0 || i == N - 1 || j == N - 1)
            {
                cout << A[i][j] << "\t";
            }
            else
            {
                cout << "\t";
            }
        }
        cout << endl;
    }

    int total = 0;
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            if (j == 0 || i == N - 1 || j == N - 1)
            {
                total += A[i][j];
            }
        }
        cout << endl;
    }
    cout << total;

    return 0;
}