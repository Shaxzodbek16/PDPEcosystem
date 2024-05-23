#include <iostream>
#include <math.h>
using namespace std;
int main()
{
    int select;
    do
    {
        cout << "1. Arifmetik progressiya.\n2.Geometrik progressiya.\n3.Cheksiz kamayuvchi geometrik progressiya.\n";
        cout << "Qaysi birini hisoblamoqchisiz: ";
        cin >> select;
    } while (!(0 < select && select < 4));

    switch (select)
    {
    case 1:
    {
        float a1, an, n, total = 0;
        cout << "Birinchi hadini kiriting: ";
        cin >> a1;
        cout << "Oxirgi hadini kiriting: ";
        cin >> an;
        cout << "Nechta hadini hisoblamoqchisiz: ";
        cin >> n;
        total = ((a1 + an) / 2) * n;
        cout << "Natija: " << total << endl;
    }
    break;
    case 2: {
        cout<<"Geometrik progressiyani hisoblash uchun birinchi hadi, maxraji va nechta hadini kerakligini kiriting: \n";
        float b1,q,n,S=0;
        cout<<"Birinchi hadini kiriting: ";
        cin>>b1;
        do{ cout<<"Maxrajini kiriting. Maxraji 1 dan katta bo'lsin: ";
        cin>>q; }
        while(!(q>1));
        cout<<"Nechta hadi kerak: ";
        cin>>n;
        S=((pow(q,n)-1)*b1)/(q-1);
        cout<<"Natija: "<<S;

    }break;
    case 3: {
        cout<<"Cheksiz kamayuvchi geometrik progressiyaning birinchi hadi va maxrajini kiriting: \n";
        float b1,q,S=0;
        cout<<"Birinchi hadini kiriting: ";
        cin>>b1;
       do{ cout<<"Maxrajini kiriting. U 0 va 1 orasida bo'lsin: ";
        cin>>q;}
        while (!(q>0 && q<1));
       
        
        S=b1/(1-q);
        cout<<"Natija: "<<S;

    }
    break;

    }
    return 0;
}