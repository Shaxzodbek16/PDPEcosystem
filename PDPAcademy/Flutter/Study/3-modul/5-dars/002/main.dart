// String turi uchun encode va decode extension methodlarini yozing.
// Encoding va decoding nima ekanligini googling qilib qiding.

import 'dart:convert';

extension Converter on String {
  String encode() {
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    return stringToBase64.encode(this);
  }

  String decode() {
    Codec<String, String> stringToBase64 = utf8.fuse(base64);

    return stringToBase64.decode(this);
  }
}

void main() {
  String password = 'Password';
  String encoded = password.encode();
  print(encoded);
  print(encoded.decode());
}
