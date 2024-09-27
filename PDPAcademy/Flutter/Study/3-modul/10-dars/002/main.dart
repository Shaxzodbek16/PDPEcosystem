// Final modifikatori yordamida Singleton Design Patternini shakllantiring.


final class Singleton {
  static final Singleton _instance = Singleton._internal();

  Singleton._internal();

  static Singleton get instance => _instance;
}

void main() {
  var singleton1 = Singleton.instance;
  var singleton2 = Singleton.instance;

  print(singleton1 == singleton2);
}
