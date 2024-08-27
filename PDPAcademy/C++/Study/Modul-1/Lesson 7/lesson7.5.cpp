#include <iostream>
using namespace std;
int main()
{
    int x, y, z;
    cout << "Uchta sonning bittasi musbatligini aniqlaydi!\n"
         << endl;
    cout << "uchta son kiriting: ";
    cin >> x >> y >> z;
    bool A = (x > 0 && y <= 0 && z <= 0) || (x <= 0 && y > 0 && z <= 0) || (x <= 0 && y <= 0 && z > 0);

    cout << "Natija: " << A << endl;
}