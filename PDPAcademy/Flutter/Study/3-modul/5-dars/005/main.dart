//  String turi uchun contactWithSpace nomli extension method yozing.
//  Quyidagicha ishlasin: +998787774747”.contactWithSpace => “+998 78 777
// 47 47”

extension ContactWithSpace on String {
  String contactWithSpace() {
    return "${this.substring(0, 4)} ${this.substring(4, 6)} ${this.substring(6, 9)} ${this.substring(9, 11)} ${this.substring(11)}";
  }
}
