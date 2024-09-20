// Haqiqiy sonlar uchun ishlaydigan max va min nomli extension method yozing
// List<E> classi uchun. max listning eng katta iymatini qaytarsin,
// min esa eng kichik qiymatini qaytarsin.

extension NumberListExtension on List<num> {
  num? get max {
    if (isEmpty) return null;
    num max = first;
    for (final element in this) {
      if (element > max) {
        max = element;
      }
    }
    return max;
  }

  num? get min {
    if (isEmpty) return null;
    num min = first;
    for (final element in this) {
      if (element < min) {
        min = element;
      }
    }
    return min;
  }
}
