#include <iostream>

using namespace std;

int main()
{
    cout << "Kiritilgan sanadan keyingi sanani ifodalovchi dastur" << endl;

    int day, month;

    string result;

    cout << "Sanani kiriting: " << endl;
    cin >> day;

    cout << "Oyning tartib raqamini kirgizing: (1...12)" << endl;
    cin >> month;

    int nextDay = day;
    int nextMonth = month;

    if (day == 31 && month == 1 ||
        day == 28 && month == 2 ||
        day == 31 && month == 3 ||
        day == 30 && month == 4 ||
        day == 31 && month == 5 ||
        day == 30 && month == 6 ||
        day == 31 && month == 7 ||
        day == 31 && month == 8 ||
        day == 30 && month == 9 ||
        day == 31 && month == 10 ||
        day == 30 && month == 11)
    {
        nextDay = 1;
        nextMonth = month + 1;
    }
    else if (day == 31 && month == 12)
    {
        nextDay = 1;
        nextMonth = 1;
    }
    else
    {
        nextDay++;
    }
    if (nextDay >= 1 && nextDay <= 31)
    {

        switch (nextDay)
        {
        case 1:
        {
            result = "1 -  ";
        }
        break;
        case 2:
        {
            result = "2 -  ";
        }
        break;
        case 3:
        {
            result = "3 -  ";
        }
        break;
        case 4:
        {
            result = "4 -  ";
        }
        break;
        case 5:
        {
            result = "5 -  ";
        }
        break;
        case 6:
        {
            result = "6 -  ";
        }
        break;
        case 7:
        {
            result = "7 -  ";
        }
        break;
        case 8:
        {
            result = "8 -  ";
        }
        break;
        case 9:
        {
            result = "9 -  ";
        }
        break;
        case 10:
        {
            result = "10 -  ";
        }
        break;
        case 11:
        {
            result = "11 -  ";
        }
        break;
        case 12:
        {
            result = "12 -  ";
        }
        break;
        case 13:
        {
            result = "13 -  ";
        }
        break;
        case 14:
        {
            result = "14 -  ";
        }
        break;
        case 15:
        {
            result = "15 -  ";
        }
        break;
        case 16:
        {
            result = "16 -  ";
        }
        break;
        case 17:
        {
            result = "17 -  ";
        }
        break;
        case 18:
        {
            result = "18 -  ";
        }
        break;
        case 19:
        {
            result = "19 -  ";
        }
        break;
        case 20:
        {
            result = "20 -  ";
        }
        break;
        case 21:
        {
            result = "21 -  ";
        }
        break;
        case 22:
        {
            result = "22 -  ";
        }
        break;
        case 23:
        {
            result = "23 -  ";
        }
        break;
        case 24:
        {
            result = "24 -  ";
        }
        break;
        case 25:
        {
            result = "25 -  ";
        }
        break;
        case 26:
        {
            result = "26 -  ";
        }
        break;
        case 27:
        {
            result = "27 -  ";
        }
        break;
        case 28:
        {
            result = "28 -  ";
        }
        break;
        case 29:
        {
            result = "29 -  ";
        }
        break;
        case 30:
        {
            result = "30 -  ";
        }
        break;
        case 31:
        {
            result = "31 -  ";
        }
        break;
        }

        if (nextMonth >= 1 && nextMonth <= 12)
        {

            switch (nextMonth)
            {
            case 1:
            {
                result += "yanvar ";
            }
            break;
            case 2:
            {
                result += "fevral ";
            }
            break;
            case 3:
            {
                result += "mart ";
            }
            break;
            case 4:
            {
                result += "aprel ";
            }
            break;
            case 5:
            {
                result += "may ";
            }
            break;
            case 6:
            {
                result += "iyun ";
            }
            break;
            case 7:
            {
                result += "iyul ";
            }
            break;
            case 8:
            {
                result += "avgust ";
            }
            break;
            case 9:
            {
                result += "sentyabr ";
            }
            break;
            case 10:
            {
                result += "oktyabr ";
            }
            break;
            case 11:
            {
                result += "noyabr ";
            }
            break;
            case 12:
            {
                result += "dekabr ";
            }
            break;
            }

            cout << result << endl;
        }
        else
        {
            cout << "No'to'g'ri raqam kiritildi!" << endl;
        }
    }

    else
    {
        cout << "Noto'g'ri raqam kiritildi!" << endl;
    }

    return 0;
}