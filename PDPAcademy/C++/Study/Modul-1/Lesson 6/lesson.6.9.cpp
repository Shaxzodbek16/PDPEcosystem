#include <iostream>
using namespace std;
int main()
{
    float N1, N2, M1, M2, F, UMUMIY_BALL;
    cout << "Ncha ball to'plaganini hisoblovchi dastur" << endl;
    cout << "Birinchi fandan nechta to'g'ri topganini kiriting: ";
    cin >> N1;
    cout << endl;
    cout << "ikkinchi fandan nechta to'g'ri topganini kiriting: ";
    cin >> N2;
    cout << endl;
    cout << "Birinchi fanning har biriga qancha bal berishini kiriting: ";
    cin >> M1;
    cout << endl;
    cout << "ikkinchi fanning har biriga qancha bal berishini kiriting: ";
    cin >> M2;
    cout << endl;
    cout << "Necha % lik imtiyozi borligini kiriting: ";
    cin >> F;
    cout << endl;
    UMUMIY_BALL = (N1 * M1 + N2 * M2) * (100 + F) / 100;
    cout << "Umumiy bali " << UMUMIY_BALL << " ga teng" << endl;
}