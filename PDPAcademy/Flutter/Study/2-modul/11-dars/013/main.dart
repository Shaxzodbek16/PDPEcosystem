// Satr ichidan matn qidirish va joylashgan o'rnini topish
// uchun Dart dasturini yozing.
//  Text:  'Dart exercises, PHP exercises, C# exercises'
//  Pattern: 'exercises'
//  Result:
//  Found "exercises" at 7:16
// Found "exercises" at 22:31
// Found "exercises" at 36:45

/// Note, sample output is wrong

void main() {
  print(findPatternPositions("Dart exercises, PHP exercises, C# exercises", "exercises"));
}

String findPatternPositions(String text, String pattern) {
  int index = text.indexOf(pattern);
  String result = '';
  while (index != -1) {
    int endIndex = index + pattern.length;
    result += "Found \"$pattern\" at $index:$endIndex\n";
    index = text.indexOf(pattern, endIndex);
  }
  return result;
}
