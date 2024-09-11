// StringStack nomli sinf hosil qiling, bu sinfda List<String> turida
// fieldi bo’lsin hamda huddi stack (searching…) kabi ishlashini
// ta’minlang, yani [ ], [ ]= operatorlari hamda push, pop,
// top kabi methodlari bo’lsin.

void main() {
  StringStack stack = StringStack(['a', 'b']);
  print(stack[1]);
  stack[1] = 'c';
  print(stack);
  print(stack[1]);
  print(stack.pop());
  print(stack);
  stack.push('e');
  print(stack);
}

class StringStack {
  List<String> stack;

  StringStack(this.stack);

  String operator [](int index) => stack[index];

  void operator []=(int index, String other) {
    stack[index] = other;
  }

  String pop() {
    String temp = stack.first;
    stack.removeAt(0);
    return temp;
  }

  void push(String other) {
    stack.insert(0, other);
  }

  @override
  String toString() {
    return '$stack';
  }
}
