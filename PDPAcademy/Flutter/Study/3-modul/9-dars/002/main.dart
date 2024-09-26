// Sezar kodi shifrlashning eng oddiy usullaridan biridir. To'g'ri matndagi har bir harf
// davriy ravishda alifbo bo'ylab ma'lum bir pozitsiya (n) raqami bilan almashtiriladi.
// Ushbu mashqda biz n = 3 ni tanlaganimizda. Ya'ni, "A" o'rniga "D", "B" o'rniga "E",
// “C" o'rniga "F", ..., “X" o'rniga "A", ..., "Z" o’rniga ”C” bilan almashtiriladi.
// a. CaesarCode deb nomlangan class yozing. Uni n yani qancha pozitsiya surib
// ko'dlashni aniqlashtiruvchi fieldni konstruktor orqali qabul qilsin.
// Sezar kodini
// shifrlash uchun bu klassda encode nomli method yozing, method oddiy text qabul
// qilib shifrlangan textni qaytarishi kerak. Qaytarilgan text katta harfda bo’lishi zarur.
// Bu dastur faqat lotin harflari uchun ishlaydi. Qolgan holatlar uchun xatolik qaytarishi
// kerak.
// Misol uchun: n = 3 => Oddiy text: “Testing”. Shifrlangan text: “WHVWLQJ”
// b. Yuqoridagi class uchun decode nomli method yozing. U Sezar kodi bo’yicha
// kodlangan text ni kodlashdan oldingi matnga qaytuvchi method bo'lsin.
// Misol uchun: n = 3 => Oddiy text: “wHVwLQJ”. Shifrlangan text: “TESTING”

class CaesarCode {
  final int shift;

  CaesarCode(this.shift);

  String encode(String text) {
    return text.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'), (match) {
      int charCode = match.group(0)!.codeUnitAt(0);
      int shiftedCharCode =
          ((charCode - 'A'.codeUnitAt(0) + shift) % 26) + 'A'.codeUnitAt(0);
      return String.fromCharCode(shiftedCharCode);
    });
  }

  String decode(String text) {
    return text.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'), (match) {
      int charCode = match.group(0)!.codeUnitAt(0);
      int shiftedCharCode = ((charCode - 'A'.codeUnitAt(0) - shift + 26) % 26) +
          'A'.codeUnitAt(0);
      return String.fromCharCode(shiftedCharCode);
    });
  }
}

void main() {
  CaesarCode caesar = CaesarCode(3);
  String encrypted = caesar.encode("Testing");
  print(encrypted);

  String decrypted = caesar.decode(encrypted);
  print(decrypted);
}
