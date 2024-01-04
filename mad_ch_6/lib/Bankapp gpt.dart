import 'dart:io';
import 'dart:math';

class BankAccount {
  String accountHolder;
  int accountNumber;
  double balance;

  BankAccount(this.accountHolder, this.accountNumber, [this.balance = 0.0]);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposit successful.");
    } else {
      print("Deposit amount must be greater than 0.");
    }
  }

  void withdraw(double amount) {
    if (amount > 0) {
      if (balance >= amount) {
        balance -= amount;
        print("Withdrawal successful.");
      } else {
        print("Insufficient funds.");
      }
    } else {
      print("Withdrawal amount must be greater than 0.");
    }
  }

  double getBalance() {
    return balance;
  }
}

void main() {
  List<BankAccount> accounts = [];
  Random random = Random();

  while (true) {
    print("Banking System Program");
    print("1. Create Account");
    print("2. Deposit");
    print("3. Withdraw");
    print("4. Check Balance");
    print("5. Exit");
    stdout.write("Enter your choice: ");
    String choice = stdin.readLineSync() ?? '';

    switch (choice) {
      case '1':
        String accountHolder = "User ${random.nextInt(10000)}";
        int accountNumber = random.nextInt(100000);
        BankAccount newAccount = BankAccount(accountHolder, accountNumber);
        accounts.add(newAccount);
        print("Account created successfully. Account number: $accountNumber");
        break;

      case '2':
        stdout.write("Enter the account number: ");
        int accountNumber = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
        BankAccount account = accounts.firstWhere((acc) => acc.accountNumber == accountNumber, orElse: () => BankAccount("", 0, 0));
        if (account.accountNumber != 0) {
          double amount = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
          account.deposit(amount);
        } else {
          print("Account not found.");
        }
        break;

      case '3':
        stdout.write("Enter the account number: ");
        int accountNumber = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
        BankAccount account = accounts.firstWhere((acc) => acc.accountNumber == accountNumber, orElse: () => BankAccount("", 0, 0));
        if (account.accountNumber != 0) {
          double amount = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
          account.withdraw(amount);
        } else {
          print("Account not found.");
        }
        break;

      case '4':
        stdout.write("Enter the account number: ");
        int accountNumber = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
        BankAccount account = accounts.firstWhere((acc) => acc.accountNumber == accountNumber, orElse: () => BankAccount("", 0, 0));
        if (account.accountNumber != 0) {
          print("Account balance: ${account.getBalance()}");
        } else {
          print("Account not found.");
        }
        break;

      case '5':
        print("Exiting the program. Thank you!");
        return;

      default:
        print("Invalid choice. Please try again.");
        break;
    }
  }
}
