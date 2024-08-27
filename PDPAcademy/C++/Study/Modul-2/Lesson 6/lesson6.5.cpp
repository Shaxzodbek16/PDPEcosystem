
#include <iostream>
#include <time.h>
using namespace std;

void findNumber(int number)
{
    int guess, guessCount = 3;
    do
    {
        cout << "Sizda 3 ta urunish bor.\n\n";
        cout << "Taxminingizni kiriting: ";
        cin >> guess;
        guessCount--;
        if (guess == number)
        {
            cout << "\nTopdingiz!\n";
            cout << "Bu son " << number << " edi\n";
            return;
        }
        else if (guessCount == 0)
        {
            cout << "\nUrunishlaringiz qolmadi! \n\n";
            cout << "Bu son " << number << " edi\n";
            return;
        }
    } while (number != guess);
}

int main()
{
    srand(time(NULL));
    cout << "Son topish o'yini.\n";
    int number = rand() % 10 + 1;
    cout << "Kompyuter bir son o'yladi.\n";
    findNumber(number);
}