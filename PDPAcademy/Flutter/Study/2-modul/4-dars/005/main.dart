// s satr berilgan. Agar s satrning birinchi yoki ikkinchi belgisi ‘x’ ga teng
// bo’lsa, ‘x’ belgisi olib tashlang, aks holda satr o’zgarmasin. Masalan:

// 1) s="xHi" bo’lsa, natijada s="Hi" bo’ladi;
// 2) s="Hxi" bo’lsa, natijada s="Hi" bo’ladi;
// 3) s="Hi" bo’lsa, natijada s="Hi" bo’ladi;
// 4) s="xaxb" bo’lsa, natijada s="axb" bo’ladi


void main(){
  print(removeOrStayX("xHi"));
  print(removeOrStayX("Hxi"));
  print(removeOrStayX("Hi"));
  print(removeOrStayX("xaxb"));
}

String removeOrStayX(String text){
  if(text[1] == 'x') text = text.replaceFirst('x', '');
  if(text[0] == 'x') text = text.replaceFirst('x', '');
  return text;
}