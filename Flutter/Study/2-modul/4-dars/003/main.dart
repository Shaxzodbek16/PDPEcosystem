// S1 va S2 satrlari berilgan. S1 satrida birinchi uchragan S2 satrini
// o'chirib tashlovchi dastur tuzing. Agar S1 satrida S2 satri uchramasa
// S1 ni o'zgarishsiz goldiring.
void main(){
  print(removeSame("Hello, PDP", "PDP"));
}

String removeSame(String S1, String S2){
  if (!S1.contains(S2)) return S1;
  return S1.replaceFirst(S2, '');
}