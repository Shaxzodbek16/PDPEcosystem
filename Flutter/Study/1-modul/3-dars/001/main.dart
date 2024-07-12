void main (){
  int A = 100, B=21;
  int butun_qismi = (A/B).toInt();
  int qoliq = A - B*butun_qismi;
  print(qoliq);
  print(A%B);
}
