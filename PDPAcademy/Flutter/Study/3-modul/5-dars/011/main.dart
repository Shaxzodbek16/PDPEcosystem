// List turi uchun extension type hosil qiling va unda berilgan listni chop
// qiladigan console nomli method yozing.

extension Consol on List {
  void console() {
    for (var element in this) {
      print(element);
    }
  }
}

void main() {
  List list = ["Hello", 1, null];
  list.console();
}
