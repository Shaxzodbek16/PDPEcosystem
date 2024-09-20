// List turi uchun generic mapReversed nomli extension method yozing.
// Bu method listdagi map kabi ishlasin va hosil bo’lgan listni reverse qiling.

extension MapReversed<T> on List<T> {
  List<T> mapReversed(T element) {
    for (int i = 0; i < this.length; i++) {
      this[i] = element;
    }
    return this.reverse();
  }

  List<T> reverse() {
    int low = 0, high = this.length - 1;
    while (low < high) {
      T temp = this[low];
      this[low] = this[high];
      this[high] = temp;
    }
    return this;
  }
}
