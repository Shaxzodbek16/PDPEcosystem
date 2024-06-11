void main(){

  final man = Human();
  man.name = "Shaxzodbek";
  man.surname = "Muxtorov";
  man.age = 19;
  man.gender = "male";
  print(man.info());

  final woman = Human();
  woman.name = "Shaxlo";
  woman.surname = "Abdumo'minova";
  woman.age = 18;
  woman.gender = "female";
  print(woman.info());

}

class Human {
  String? name;
  String? surname;
  String? gender;
  int? age;

  String info(){
    return "My full name is $name $surname, I am $age years old.";
  }
}
