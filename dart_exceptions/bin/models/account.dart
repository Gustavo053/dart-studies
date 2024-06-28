class Account {
  String name;
  double balance;
  bool isAuthenticated;
  DateTime? createAt;

  Account({required this.name, required this.balance, required this.isAuthenticated, this.createAt}):
      assert(name.isNotEmpty, 'O nome não pode ser vazio'),
      assert(balance >= 0, 'O saldo não pode ser menor 0');


  editBalance({required value}) {
    balance = balance + value;
  }
}
