// List dagi map methodi kabi vazifani bajaruvchi generic method yarating.

List<R> map<T, R>(List<T> list, R Function(T) f) {
  List<R> result = [];
  for (var item in list) {
    result.add(f(item));
  }
  return result;
}
