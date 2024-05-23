#include <iostream>
using namespace std;
int main()
{
    cout << "1-26 oraliqdagi N natural soni berilgan. N ga mos ravishda, harfli  piramidani ekranga chiqaruvchi dastur!\n";

    int i, j;
    char alph = 'A';
    int n, blk;
    int ctr = 1;
    cout << "N ni kiriting: ";
    cin >> n;
    for (i = 1; i <= n; i++)
    {
        for (blk = 1; blk <= n - i; blk++)
            cout << "  ";
        for (j = 0; j <= (ctr / 2); j++)
        {
            cout << alph++ << " ";
        }
        alph = alph - 2;
        for (j = 0; j < (ctr / 2); j++)
        {
            cout << alph-- << " ";
        }
        ctr = ctr + 2;
        alph = 'A';
        cout << endl;
    }
}
