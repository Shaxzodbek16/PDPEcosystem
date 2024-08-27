#include <iostream>
using namespace std;
int main()
{
    cout << "1-9 oraliqdagi N raqami berilgan. N ga mos ravishda,  raqamlarni ekranga chiqaruvchi dastur\n";
    int number;
    do
    {
        cout << "Son kiritin: ";
        cin >> number;
    } while (!(number >= 1 && number <= 9));
    for (int i = 1; i <= number; i++)
    {
        for (int j = 0; j <= number - i; j++)
        {
            cout << i + j;
        }
        cout << endl;
    }
    return 0;
}
