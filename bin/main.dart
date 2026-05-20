import 'dart:io';

import '../lib/bank-service.dart';

void main() {
  Bank bank = Bank();

  while (true) {
    print("\n Bank-management-system");
    print("1. Create Account");
    print("2. Deposit Money");
    print("3. Withdraw Money");
    print("4. Check Balance");
    print("5. Show All Accounts");
    print("6. Exit");

    stdout.write("Enter Choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write("Enter Account Holder Name: ");
        String name = stdin.readLineSync()!;

        stdout.write("Enter Account Number: ");
        int accNumber = int.parse(stdin.readLineSync()!);

        stdout.write("Enter Initial Balance: ");
        double balance = double.parse(stdin.readLineSync()!);

        bank.createAccount(
          name,
          accNumber,
          balance,
        );
        break;

      case 2:
        stdout.write("Enter Account Number: ");
        int accNumber = int.parse(stdin.readLineSync()!);

        var account = bank.findAccount(accNumber);

        if (account != null) {
          stdout.write("Enter Deposit Amount: ");
          double amount = double.parse(stdin.readLineSync()!);

          account.deposit(amount);
        } else {
          print("Account Not Found!");
        }
        break;

      case 3:
        stdout.write("Enter Account Number: ");
        int accNumber = int.parse(stdin.readLineSync()!);

        var account = bank.findAccount(accNumber);

        if (account != null) {
          stdout.write("Enter Withdraw Amount: ");
          double amount = double.parse(stdin.readLineSync()!);

          account.withdraw(amount);
        } else {
          print("Account Not Found!");
        }
        break;

      case 4:
        stdout.write("Enter Account Number: ");
        int accNum = int.parse(stdin.readLineSync()!);

        var account = bank.findAccount(accNum);

        if (account != null) {
          account.showDetails();
        } else {
          print("Account Not Found!");
        }
        break;

      case 5:
        bank.showAllAccounts();
        break;

      case 6:
        print("Thank You For Using Bank System!");
        return;

      default:
        print("Invalid Choice!");
    }
  }
}