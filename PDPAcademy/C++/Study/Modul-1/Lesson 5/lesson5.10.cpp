#include <iostream>
using namespace std;
int main()

{
    cout << "Kun boshidan qancha sekund o'tganini kiriting va bu dastur soat, minut va sekundga taqsimlab beradi!!! " << endl;
    cout << "Sekundning miqdorini kiriting: ";
    int N, soat, minut, sekund, a, b, c;
    cin >> N;
    sekund = (N % 60) % 60;
    soat = N / 3600;
    minut = (N / 60) % 60;

    cout << "Kun boshidan  " << soat << "   Soat  " << minut << "   minut  " << sekund << "   sekund o'tdi.  " << endl;
}