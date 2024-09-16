// Account nomli abstrakt klass tuzing. Uni 3 ta fieldi bo’lsin password email
// va name. Account klassdan meros olib BankAccount nomli klass yarating.
// BankAccount klassida ham qo’shimcha accountNumber va balance nomli ikkita
// private fieldi bo’lsin. Qachonki passwordni to’g’ri kiritgandagina ularni
// o’qish va o’zgartirish mumkin bo’lsin, bu display methodi orqali qilinsin.
// topUp nomli method tuzing va u orqali balansni to’ldirish mumkin bo’lsin.
// transferMoney nomli method tuzing va u orqali boshqa account hisob
// raqamiga pul o’tkazish imkoni bo’lsin. Yuqoridagi shartlar asosida
// realga yaqin ishlaydigan klass va methodlarni tuzishga harakat qiling
// va har bir methodni void mainda ishlatib ko’rsating.

void main() {
  final account1 = BankAccount(
      name: 'Shaxzodbek',
      email: 'example@gamil.com',
      password: 'password',
      accountNumber: '1234 5678 1234 5678');
  account1.display('password');
  account1.display('password', '0000 0000 0000 0000');
  account1.topUp(10000);
  account1.topUp(-10);
  account1.display('password');
  account1.transferMoney(accountNumber: 'accountNumber', amount: 5000);
  account1.transferMoney(accountNumber: 'accountNumber', amount: 10000);
  account1.display('password');
}

abstract class Account {
  String _name, _email, _password;

  Account(this._name, this._email, this._password);

  void display(String password,
      [String? accountNumber =
          null]); // display or change accountNumber and balance
  void topUp(double money); // income to balance
  bool transferMoney({
    required String accountNumber,
    required double amount,
  }); // transfer money to another account
}

class BankAccount extends Account {
  double balance;
  String accountNumber;

  BankAccount._(
    super.name,
    super.email,
    super.password,
    this.accountNumber,
    this.balance,
  );

  factory BankAccount({
    required String name,
    required String email,
    required String password,
    required String accountNumber,
  }) {
    return BankAccount._(name, email, password, accountNumber, 0);
  }

  @override
  void display(String password, [String? accountNumber = null]) {
    if (this._password != password) {
      print("Incorrect password ");
      return;
    }
    if (accountNumber != null) {
      this.accountNumber = accountNumber;
    }
    print(this.accountNumber);
    print(balance);
  }

  @override
  void topUp(double money) {
    if (money <= 0) {
      print('Enter more than 0 amount');
      return;
    }
    this.balance += money;
  }

  @override
  bool transferMoney({
    required String accountNumber,
    required double amount,
  }) {
    if (amount > this.balance) {
      print("You have no $amount money");
      return false;
    }
    print('from ${this.accountNumber} to $accountNumber $amount paid');
    this.balance -= amount;
    return true;
  }
}
