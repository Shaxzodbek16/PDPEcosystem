#include <iostream>
using namespace std;
int main()
{
    int x, y, z;
    cout << "Foydalanuvchi tomonidan kiritilgan 3 ta butun  sonlar uchun sonlaridan istalgan bittasi qolgan ikkitasining yig'indisidan kichik mulohazani rostlikka tekshiruvchi dastur\n\n";
    cout << "Uchta son kiriting: ";
    cin >> x >> y >> z;
    bool A = (((x + y) > z) && ((x + z) > y) && ((y + z) > x));
    cout << "Natija: " << A << endl;
    return 0;
}