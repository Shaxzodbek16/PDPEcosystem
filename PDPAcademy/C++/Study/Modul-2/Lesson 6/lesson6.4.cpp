#include <iostream>
#include <math.h>
using namespace std;
int sumNumbers(int n)
{
    if (n == 0)
        return 0;

    int result = n % 10 + sumNumbers((n - n % 10) / 10);
    return result;
}
int main()
{
    int N;
    cout << "Berilgan N natural sonining raqamlari yig'indisini rekursiv funksiya yordamida hisoblovchi dastur. \n";
    cout << "Natural son kiriting: ";
    cin >> N;
    if (N > 0)
    {

        cout << "Natija: " << sumNumbers(N) << endl;
    }
    else
    {
        cout << "Natural son kiriting ! \n\n";
    }
}