// Payment sinfini yaratib, unga calculateInterest metodini qo'shing.
// calculateInterest metodini CreditCard, Loan, va Mortgage kabi turli
// subklasslarda amalga oshiring.

abstract class Payment {
  void calculateInterest();
}

class CreditCard extends Payment {
  @override
  void calculateInterest() {
    print("$runtimeType is calculateInterest");
  }
}

class Loan extends Payment {
  @override
  void calculateInterest() {
    print("$runtimeType is calculateInterest");
  }
}

class Mortgage extends Payment {
  @override
  void calculateInterest() {
    print("$runtimeType is calculateInterest");
  }
}


void main(){
  List<Payment> payments = [CreditCard(), Loan(), Mortgage()];
  for(Payment payment in payments){
    payment.calculateInterest();
  }

}