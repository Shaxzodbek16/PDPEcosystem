// "name", "age" va "city" keylari bilan mapni qabul qiluvchi Dart funksiyasini
// yarating. Bu qiymatlarni ajratib olish uchun patterndan foydalaning va ularni
// record sifatida qaytaring.

({String name, int age, String city}) extractData({
  required String name,
  required int age,
  required String city,
}) {
  return (name: name, age: age, city: city);
}
