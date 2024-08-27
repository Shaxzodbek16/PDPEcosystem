#include <iostream>
using namespace std;

int main()
{
    int num;
    cout << "Natural son kiriting: ";
    cin >> num;

    if (num >= 97 && num <= 122)
    {
        char ch = num;
        cout << "Belgi: " << ch << endl;
    }
    else
    {
        cout << "Kiritilgan sondan tashqari ASCII kodi mavjud emas!" << endl;
    }

    return 0;
}
