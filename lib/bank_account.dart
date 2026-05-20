class BankAccount {
  String accountHolder;
  int accountNumber;
  double balance;

  BankAccount(
      this.accountHolder,
      this.accountNumber,
      this.balance,
      );

  // deposite
  void deposit(double amount) {
    balance += amount;
    print("৳$amount Deposited Successfully!");
  }

  // withdraw
  void withdraw(double amount) {
    if (amount > balance) {
      print("Insufficient Balance!");
    } else {
      balance -= amount;
      print("৳$amount Withdraw Successful!");
    }
  }

  // account details
  void showDetails() {
    print("\n account Details");
    print("Account Holder: $accountHolder");
    print("Account Number: $accountNumber");
    print("Balance: ৳$balance");
  }
}