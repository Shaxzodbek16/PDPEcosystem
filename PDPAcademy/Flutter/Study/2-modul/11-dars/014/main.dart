// yyyy-mm-dd formatdagi sanani dd-mm-yyyy formatiga
// o'tkazish uchun Dart dasturini yozing.

String convertDateFormat(String date) {
  final RegExp regex = RegExp(r'(\d{4})-(\d{2})-(\d{2})');
  final match = regex.firstMatch(date);
  if (match==null) return 'Wrong format';
  final year = match.group(1);
  final month = match.group(2);
  final day = match.group(3);
  final formatted = '$day-$month-$year';
  return formatted;
}

void main() {
  final originalDate = '2024-09-15';
  final newDate = convertDateFormat(originalDate);
  print(newDate);
}