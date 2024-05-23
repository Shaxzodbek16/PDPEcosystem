#include <iostream>
using namespace std;
int main()
{
    cout << "Barcha musbat 3 xonali juft sonlar yig’indisini hisoblovchi dastur !" << endl;
    int S = 0;
    for (int i = 100; i <= 999; i += 2)
    {
        // cout << i << "\t";
        S = S + i;
    }
    cout << "Natija: " << S << "\t";
}