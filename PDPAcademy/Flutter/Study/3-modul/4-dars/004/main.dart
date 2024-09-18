// List dagi where methodi kabi vazifa bajaruvchi generic method yarating.

List<T> where<T>(List<T> list, bool Function(T) test) {
  List<T> result = [];
  for (var element in list) {
    if (test(element)) {
      result.add(element);
    }
  }
  return result;
}
