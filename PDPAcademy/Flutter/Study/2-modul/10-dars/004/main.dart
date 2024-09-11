// CurrencyConverter sinfini hosil qiling. Bu sinfda convert va
// getSupportedCurrencies nomli static methodlarini hosil qiling.

class CurrencyConverter {
  double value;

  CurrencyConverter(this.value);

  static double convert(CurrencyConverter usd, CurrencyConverter uzs) {
    return usd.value * uzs.value;
  }

  static String getSupportedCurrencies() {
    return "USD to UZS";
  }
}
