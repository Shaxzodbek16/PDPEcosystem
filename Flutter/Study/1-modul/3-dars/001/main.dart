// N natural soni va satr berilgan. N ko’paytirilgan 2 ta kiritilgan satrdan
//iborat satr hosil qiling va console ga chiqaring. Masalan: N = 2; Satr = Pdp’;
// Natija = ’PdpPdpPdpPdp’. Vazifa sifatida dastur kodini jo'nating.

void main(){
  int N = 2;
  String matn = "Pdp";
  print("${(matn+matn)*N}");
}
