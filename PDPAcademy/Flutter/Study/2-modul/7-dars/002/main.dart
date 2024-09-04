// Employee nomli klass tuzilsin. Bu klassni imkon qadar mukammal
// modellashtiring, yani fieldlariga yaxshi e’tibor berilishi
// kerak va shu klassda quyidagilar bo’lishi kerak:
//  1. generative parameterize constructor tuzilsin
//  2. intern nomli named constructor tuzilsin
//  3. const constructor tuzilsin
//  4. factory constructor tuzilsin
//  5. getter/setter yozilsin
//  6. main funksiyani ichida yuqoridagi constructorlardan
//  foydalanib bir nechta object lar hosil qiling
class Employee {
  String name;
  String surname;
  int age;
  String department;
  double salary;

  Employee(this.name, this.surname, this.age, this.department, this.salary);

  Employee.intern(String name, String surname, int age)
      : this(name, surname, age, 'Intern', 0);

  /// We need final to create const constructor.
  // const Employee.constant(this.name, this.surname, this.age) : department='high', salary=100;

  factory Employee.createManager(String name, String surname, int age) {
    return Employee(name, surname, age, 'Management', 2000);
  }

  String get fullName => '$name $surname';
  set fullName(String value) {
    List<String> names = value.split(' ');
    name = names[0];
    surname = names[1];
  }

}