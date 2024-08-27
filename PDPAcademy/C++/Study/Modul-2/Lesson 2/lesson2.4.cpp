#include <iostream>
using namespace std;

bool isMukammal(int number)
{
    int sum = 0;
    for (int i = 1; i <= number / 2; ++i)
    {
        if (number % i == 0)
        {
            sum += i;
        }
    }
    return sum == number;
}

int main()
{
    cout << "1 dan 1000 gacha oraliqdagi mukammal sonlarni  ekranga chiqaruvchi dastur.\n Ular quyidagi sonlar: ";
    for (int i = 1; i <= 1000; ++i)
    {
        if (isMukammal(i))
        {
            cout << i << " ";
        }
    }
    cout << endl;
    return 0;
}
