import calendar
# class CustomHTMLCal(calendar.HTMLCalendar):
#     cssclasses = [style + " text-nowrap" for style in
#                   calendar.HTMLCalendar.cssclasses]
#     cssclass_month_head = "text-center month-head"
#     cssclass_month = "text-center month"
#     cssclass_year = "text-italic lead"

# print(calendar.monthcalendar(2024,1))
# print(calendar.setfirstweekday(calendar.SUNDAY))
# print(calendar.itermonthdates(2024, 1))
# Kalendarni ko'rsatuvchi dastur

def get_year()->int:
    try:
        yil=int(input("Nechiachi yil kerak?(1-9999)\n>>> "))
        if yil < 1 or yil > 9999:
            raise ValueError
        return yil
    except ValueError:
        print("Yilni kiriting")
        return get_year()
    
def get_month()->int:
    try:
        oy=int(input("Nechiachi oy kerak?(1-12)\n Hammasi uchun 0\n>>> "))
        if oy < 0 or oy > 12:
            raise ValueError
        return oy
    except ValueError:
        print("Oyni kiriting")
        return get_month()

yil = get_year()
oy = get_month()
if oy==0:
    oy=1
    for i in range(1,13):
        print(calendar.month(yil, i))
else:
    print(calendar.month(yil, oy))

    