#include <iostream>
using namespace std;
int main()
{
    cout << "N natural soni berilgan. 1 dan N gacha bo’lgan juft sonlarning yig’indisini va toq sonlarning yig’indisini alohida-alohida hisoblovchi dastur\n";
    int N, S_juft = 0, S_toq = 0;
    cout << "Sonni kiriting: ";
    cin >> N;
    for (int a = 1; a <= N; a++)
    {
        if (a % 2 == 0)
        {
            S_juft = S_juft + a;
        }
        else
        {
            S_toq = S_toq + a;
        }
    }
    cout << "Juft sonlar yog'indisi natijasi: "
         << " " << S_juft << endl;
    cout << "Toq sonlar yog'indisi natijasi: "
         << " " << S_toq << endl;
}