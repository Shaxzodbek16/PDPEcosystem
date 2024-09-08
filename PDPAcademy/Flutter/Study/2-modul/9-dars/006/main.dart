// Berilgan UML bo’yicha klasslarni hosil qiling.

class Customer {
  final int discount;

  Customer(this.discount);
}

class Invoice {
  int id;
  double amount;
  Customer customer;

  Invoice({
    required this.id,
    required this.amount,
    required this.customer,
  });

  int get customerDiscount => customer.discount;

  double get amountAfterDiscount {
    double discount = customer.discount / 100;
    return amount - (amount * discount);
  }

  @override
  String toString() => "Invoice";
}
