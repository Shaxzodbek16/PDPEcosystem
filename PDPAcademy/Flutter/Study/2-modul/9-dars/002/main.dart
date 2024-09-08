// Berilgan UML bo’yicha klasslarni hosil qiling.


void main(){
  print(Animal()._color);
}

class Animal {
  String _color = 'black';

  String get color {
    return _color;
  }

  void set color(String color) {
    _color = color;
  }
}

class Dog extends Animal {
  String? _owner;

  String? get owner {
    return _owner;
  }

  set owner(String? owner) {
    _owner = owner ?? _owner;
  }
}

class Lion extends Animal {
  String? _jungleName;

  String? get jungleName {
    return _jungleName;
  }

  set jungleName(String? owner) {
    _jungleName = owner ?? _jungleName;
  }
}
