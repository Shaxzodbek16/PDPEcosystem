// Berilgan UML bo’yicha klasslarni hosil qiling.

enum Gender {
  male("Male"),
  female("Female"); // For modern word, you can add more and more

  final String upperCase;

  const Gender(this.upperCase);
}

class Author {
  String _name, _email;
  Gender _gender;

  Author(this._name, this._email, this._gender);

  String get name => _name;
}

class Book {
  String _name;
  List<Author> _authors;
  double _price;
  int _qty;

  Book(this._name, this._authors, this._price, [this._qty = 0]);

  String get name => _name;

  List<Author> get authors => _authors;

  double get price => _price;

  void set price(double newPrice) {
    if (newPrice < 0) return;
    _price = newPrice;
  }

  int get qty => _qty;

  void set qty(int newQty) {
    if (newQty < 0) return;
    _qty = newQty;
  }

  String get authorNames {
    String names = '';
    for (int i = 0; i < _authors.length; i++) {
      String name = '${i + 1}. ' + _authors[i].name + '\n';
      names += name;
    }
    return names;
  }
}
