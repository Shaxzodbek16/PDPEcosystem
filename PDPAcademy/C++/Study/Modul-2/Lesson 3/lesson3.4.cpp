#include <iostream>
#include <string.h>
using namespace std;

int main()
{
    int N=5;
    for (int i = 1; i <= N; i++)
    {
        // i=4
        for (int j = 1; j <= N - i; j++) 
        // N-i=5-4=1
        {
            cout << "  ";
        }
        for (int j = 1; j <= i; j++)
        {
            // i=4 
            cout << j << " ";
        }
        for (int j = i - 1; j >= 1; j--)
        // i-1=3
        {
            cout << j << " ";
        }
        cout << endl;
    }
}