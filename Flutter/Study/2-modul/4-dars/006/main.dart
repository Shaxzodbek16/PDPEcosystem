// Satr berilgan. Satrdagi barcha ‘*’ belgisi hamda uning o’ng va chap
// tomonidagi bittadan belgilarni o’chirib tashlang.
// Masalan:

// 1) s="ab*cd" bo’lsa, natijada s="ad" bo’ladi;
// 2) s="sm*eilly" bo’lsa, natijada s="silly" bo’ladi;
// 3) s="sm**eil*ly" bo’lsa, natijada s="siy" bo’ladi.

void main() {
  print(removeAsterisks("ab*cd"));
  print(removeAsterisks("sm*eilly"));
  print(removeAsterisks("sm**eil*ly"));
}

String removeAsterisks(String text) {
  String result = '';
  for (int i = 0; i < text.length; i++) {if (text[i] == '*') {
    if (i > 0) {
      result = result.substring(0, result.length - 1); // Remove character before '*'
    }
    if (i + 1 < text.length) {
      i++;
    }
  } else {
    result += text[i];
  }

  }
  return result;
}
