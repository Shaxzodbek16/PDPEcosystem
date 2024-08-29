// Hozirgi vaqtdan n sukund o’tgandagi vaqtni topuvchi funksiya tuzing.
// String nextSomeSecond(int nowHour, int nowMinute, int nowSecond, int nextSecond)
// {/* your code */}
// input: 12:32 (33 - second) nextSeconds: 123 => nextSomeSecond(12, 32, 33, 123);
// output: 12:34 (36 - second)

import '../../../1-modul/9-dars/005/main.dart';

void main(){
  print(nextSomeSecond(12, 32, 33, 123));
}

String nextSomeSecond(int nowHour, int nowMinute, int nowSecond, int nextSecond) {
  DateTime now = DateTime(0, 1, 1, nowHour, nowMinute, nowSecond);
  Duration duration = Duration(seconds: nextSecond);
  DateTime futureTime = now.add(duration);
  String formattedTime = "${futureTime.hour.toString().padLeft(2, '0')}:${futureTime.minute.toString().padLeft(2, '0')}:${futureTime.second.toString().padLeft(2, '0')}";

  return formattedTime;
}
