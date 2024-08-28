#include <iostream>
using namespace std;
int main()
{
    cout << "N x M o’lchamdagi butun sonli massiv berilgan. Qaysi ustundagi elementlarning yig’indisi  eng kichik ekanligini aniqlovchi dastur! \n\n";
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
    int min;
    for (int j = 0; j < M; j++)
    {
        int total = 0;
        for (int i = 0; i < N; i++)
        {
            total += A[i][j];
        }
        cout << (j + 1) << "-ustun yig'indisi " << total << " ga teng\n";
        if (j == 0)
        {
            min = total;
        }
        else
        {
            if (total < min)
            {
                min = total;
            }
        }
    }
    cout << "Eng kichigi " << min << " ga teng.\n";
    return 0;
}