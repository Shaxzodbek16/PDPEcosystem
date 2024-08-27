// RGB formatdagi ranglarni HEX formatga o’girib beruvchi funksiya tuzing:
// String rgbToHex(int r, int g, int b) {/* your code */} .

void main(){
  print(rgbToHex(255, 255, 255));
}
String rgbToHex(int r, int g, int b){
  String red = r.toRadixString(16);
  String green = r.toRadixString(16);
  String blue = r.toRadixString(16);
  String result = "#" + red + green + blue;
  return result;
}