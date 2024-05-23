#include <iostream>
using namespace std;
int main()
{
    int A;
    cout << "N natural soni berilgan. 1 dan N gacha bo’lgan butun sonlarning kvadratlarining yig’indisini hisoblovchi dastur\n";
    cout << "Son kiriting: ";
    cin >> A;
    if (A > 0)
    {
        for (int a = 1; a <= A; a++)
        {
            cout << a << " ning kvadrati " << a * a << endl;
        }
    }
    else if (A == 0)
    {
        cout << "Natural son kiriting ! \n\n";
    }
    else
    {
        cout << "Manfiy son kiritdingiz !\n\n";
    }
    return 0;
}