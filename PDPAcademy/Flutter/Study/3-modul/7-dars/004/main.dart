// n butun soni berilgan bo'lsa, va answer nomli String turida list qaytaradigan
// funksiya hosil qiling (huddi indekslash 1 dan olingan kabi tushuning)
// funksiya listni quyidagicha yasashi kerak:
// answer[i] == "FizzBuzz" agar i 3 va 5 ga boʻlinadigan boʻlsa.
// answer[i] == "Fizz" agar i 3 ga bo'linadigan bo'lsa.
// answer[i] == "Buzz" agar i 5 ga bo'linadigan bo'lsa.
// answer[i] == i (String turi sifatida oling i ni ham)
// agar yuqoridagi shartlarning hech biriga mos bo’lmasa.
// Input: n = 3 Output: ["1","2","Fizz"]
// Input: n = 5 Output: ["1","2","Fizz","4","Buzz"]
// Input: n = 15
// Output: [“1”,"2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11",
// "Fizz","13","14","FizzBuzz"]

List<String> makeFizzBuzzList(int number) {
  List<String> ans = [];
  for (int i = 1; i <= number; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      ans.add("FizzBuzz");
      continue;
    }
    if (i % 3 == 0) {
      ans.add("Fizz");
      continue;
    }
    if (i % 5 == 0) {
      ans.add("Buzz");
      continue;
    }
    ans.add(i.toString());
  }
  return ans;
}

void main() {
  print(makeFizzBuzzList(3));
  print(makeFizzBuzzList(5));
  print(makeFizzBuzzList(15));
  print(makeFizzBuzzList(1500000000));
}
