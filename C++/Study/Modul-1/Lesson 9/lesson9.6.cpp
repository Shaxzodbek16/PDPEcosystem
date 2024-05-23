#include <iostream>
using namespace std;
int main()
{
    int a, b, c;
    cout << "Uchta son berilgan shu sonlarning yig’indisi eng katta bo’ladigan ikkitasini ekranga chiqaruvchi dastur\n";
    cout << "Birinchi sonni kiriting: ";
    cin >> a;
    cout << "Ikkinchi sonni kiriting: ";
    cin >> b;
    cout << "uchinchi sonni kiriting: ";
    cin >> c;
    if ((a + b) > (b + c))
    {
        cout << "Yig'indisi eng katta bo'ladigan ikkitasi : " << b << " " << c;
    }
    else if ((b + c) > (a + c))
    {
        cout << "Yig'indisi eng katta bo'ladigan ikkitasi : " << a << " " << c;
    }
    else
    {
        cout << "Yig'indisi eng katta bo'ladigan ikkitasi : " << a << " " << b;
    }
    return 0;
}
