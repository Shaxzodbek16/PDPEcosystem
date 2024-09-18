abstract class Payable {
  double getPaymentAmount();
}

class Invoice implements Payable {
  String _partNumber, _partDescription;
  int _quantity;
  double _pricePerItem;

  Invoice._(
    this._partNumber,
    this._partDescription,
    this._quantity,
    this._pricePerItem,
  );

  factory Invoice({
    required String partNumber,
    required String partDescription,
    required int quantity,
    required double pricePerItem,
  }) =>
      Invoice._(partNumber, partDescription, quantity, pricePerItem);

  @override
  double getPaymentAmount() {
    return _quantity * _pricePerItem;
  }
}

abstract class Employee implements Payable {
  String _firstName, _lastName, _socialSecurityNumber;

  Employee(this._firstName, this._lastName, this._socialSecurityNumber);
}

class CommissionEmployee extends Employee {
  double _grossSales, _commissions;

  CommissionEmployee._(super._firstName, super._lastName,
      super._socialSecurityNumber, this._grossSales, this._commissions);

  factory CommissionEmployee({
    required String firstName,
    required String lastName,
    required String socialSecurityNumber,
    required double grossSales,
    required double commissions,
  }) =>
      CommissionEmployee._(
          firstName, lastName, socialSecurityNumber, grossSales, commissions);

  @override
  double getPaymentAmount() {
    return _grossSales * _commissions;
  }
}

class BasePlusCommissionEmployee extends CommissionEmployee {
  double _baseSalary;

  BasePlusCommissionEmployee._(_firstName, _lastName, _socialSecurityNumber,
      _grossSales, _commissions, this._baseSalary)
      : super._(_firstName, _lastName, _socialSecurityNumber, _grossSales,
            _commissions);

  factory BasePlusCommissionEmployee({
    required String firstName,
    required String lastName,
    required String socialSecurityNumber,
    required double grossSales,
    required double commissions,
    required double baseSalary,
  }) =>
      BasePlusCommissionEmployee._(firstName, lastName, socialSecurityNumber,
          grossSales, commissions, baseSalary);

  @override
  double getPaymentAmount() {
    return super.getPaymentAmount() + _baseSalary;
  }
}

class HourlyEmployee extends Employee {
  double _wage, _hours;

  HourlyEmployee._(super.firstName, super.lastName, super.socialSecurityNumber,
      this._wage, this._hours);

  factory HourlyEmployee({
    required String firstName,
    required String lastName,
    required String socialSecurityNumber,
    required double wage,
    required double hours,
  }) =>
      HourlyEmployee._(firstName, lastName, socialSecurityNumber, wage, hours);

  @override
  double getPaymentAmount() {
    return this._hours * this._wage;
  }
}

class SalariedEmployee extends Employee {
  double _weeklySalary;

  SalariedEmployee._(super.firstName, super.lastName,
      super.socialSecurityNumber, this._weeklySalary);

  factory SalariedEmployee({
    required String firstName,
    required String lastName,
    required String socialSecurityNumber,
    required double weeklySalary,
  }) =>
      SalariedEmployee._(
          firstName, lastName, socialSecurityNumber, weeklySalary);

  @override
  double getPaymentAmount() {
    return this._weeklySalary;
  }
}
