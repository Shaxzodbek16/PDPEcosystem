// List uchun firstWithDefault nomli generic extension method yozing.
// U listning birinchi elementini qaytarsin, agar list bo’sh bo’lsa
// ixtiyoriy random qiymat qaytarsin.

extension on List {
  T? firstWithDefault<T>(List<T> list) {
    if (list.isNotEmpty) return this[0];
    return null;
  }
}
