// List ning berildan index i dagi element ni qaytaradigan generic
// funksiya tuzing. Agar u index da element bo’lmasa null qaytsin.

T? getElementByIndex<T extends Object?>(List<T> list, int index) {
  int max_index = list.length - 1;
  if (index > max_index) return null;
  return list[index];
}
