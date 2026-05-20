import 'bank_account.dart';

class Bank {
  List<BankAccount> accounts = [];

  // account create
  void createAccount(
      String name,
      int accNumber,
      double balance,
      ) {
    accounts.add(
      BankAccount(name, accNumber, balance),
    );

    print("Account Created Successfully!");
  }

  // account find
  BankAccount? findAccount(int accNumber) {
    for (var account in accounts) {
      if (account.accountNumber == accNumber) {
        return account;
      }
    }
    return null;
  }

  // all account show
  void showAllAccounts() {
    if (accounts.isEmpty) {
      print("No Accounts Found!");
      return;
    }

    for (var account in accounts) {
      account.showDetails();
    }
  }
}