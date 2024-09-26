// Stream.periodic orqali 20 ta 3 ga karrali sonlar oqimini hosil qiling.

Future<void> main() async {
  Stream<int>.periodic(
    Duration(milliseconds: 500),
    (value) => (value * 3),
  ).take(20).listen((event) => print(event));
}
