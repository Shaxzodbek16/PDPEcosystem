// Foydalanuvchi tomonidan oyning raqami kiritilsa u qaysi faslga kirishini
// aniqlovchi dastur tuzing.

void main(){
  int month_num = 13;
  String season;
  switch(month_num){
    case 1 || 2 || 3:{
      season = "Bahor";
    }
    case 4 || 5 || 6:{
      season = "Yoz";
    }
    case 7 || 8 || 9:{
      season = "Kuz";
    }
    case 10 || 11 || 12:{
      season = "Qish";
    }
    case _ : {
      season = "1 va 12 orasidan tanlang.";
    }
  }
  print(season);
}