// 1 dan 99 gacha bo’lgan sonlarni son ko’rinishida emas balki yozuv
// ko’rinishida chiqaradigan dastur tuzing(Masalan:i = 12 => “o’n ikki”).

void main(){
  String left='', right='';
  int number = 42, left_number = number ~/10, right_number = number % 10;
  switch(right_number){
    case 1:{
      right = "bir";
      break;
    }
    case 2:{
      right = "ikki";
      break;
    }
    case 3:{
      right = "uch";
      break;
    }
    case 4:{
      right = "to'rt";
      break;
    }
    case 5:{
      right = "besh";
      break;
    }
    case 6:{
      right = "olti";
      break;
    }
    case 7:{
      right = "yetti";
      break;
    }
    case 8:{
      right = "sakkiz";
      break;
    }
    case 9:{
      right = "to'qqiz";
      break;
    }
  }
  switch(left_number){
    case 1:{
      left = "o'n";
      break;
    }
    case 2:{
      left = "yigirma";
      break;
    }
    case 3:{
      left = "o'ttiz";
      break;
    }
    case 4:{
      left = "qirq";
      break;
    }
    case 5:{
      left = "ellik";
      break;
    }
    case 6:{
      left = "oltmish";
      break;
    }
    case 7:{
      left = "yetmish";
      break;
    }
    case 8:{
      left = "sakson";
      break;
    }
    case 9:{
      left = "to'qson";
      break;
    }
  }
  print(left +' '+ right);
}