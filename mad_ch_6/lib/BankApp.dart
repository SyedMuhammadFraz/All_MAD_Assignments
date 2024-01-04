import 'dart:io';
import 'dart:math';


class BankAccount{
    double netBalance=0;
    int accountNumber=0;
    String? name;

    BankAccount(String name, int accountumber, double netBalance){
      this.name=name;
      this.accountNumber=accountumber;
      this.netBalance=netBalance;
    }



    void getAccountDetails(){
      print("Your account # is: ${accountNumber}");
      print("Your name is: ${name}\n");
    }
    void deposit(double amount){
      netBalance=netBalance+amount;
    }
    void withdraw(double amount){
      netBalance=netBalance-amount;
    }
    double getBalance(){
      return netBalance;
    }
  }

  void main(){
    List<BankAccount> accounts=[];
    List<int> accountNumbersList=[];
    while(true){
      print("1. Create account");
      print("2. Deposit amount in the account");
      print("3. Withdraw amount from the account");
      print("4. Current balance");
      print("5. Get account details");
      print("6. Exit");
      print("\nEnter the choice:");
      String choice=stdin.readLineSync()??'';

      switch(choice){
        case'1':
          print("Enter the name for account:");
          String name=stdin.readLineSync()??'';
          final random=Random();
          int? accountNumber=random.nextInt(10000);
          if(!(accountNumbersList.contains(accountNumber)) && accountNumber!=null) {
            BankAccount account=new BankAccount(name, accountNumber, 0);
            accounts.add(account);
            accountNumbersList.add(accountNumber);
            print("Account created successfully! Your account # is ${account.accountNumber}");
          }
          else{
            print("Account no. already exists. Please try later.");
          }
        case'2':
          print("Enter your account number:");
          int accountNumber=int.parse(stdin.readLineSync()??'');
          BankAccount account = accounts.firstWhere((acc) => acc.accountNumber == accountNumber, orElse: () => BankAccount("", 0, 0));
          if(accountNumbersList.contains(accountNumber)) {
            print("Enter the amount you want to deposit in the account:");
            double amount = double.parse(stdin.readLineSync() ?? '');
            account.deposit(amount);
            print("${amount} rupees have been withdrawn from your account.\n");
          }
          else {
            print("Account number is invalid");
          }
          break;
        case'3':
          print("Enter your account number:");
          int accountNumber=int.parse(stdin.readLineSync()??'');
          BankAccount account = accounts.firstWhere((acc) => acc.accountNumber == accountNumber, orElse: () => BankAccount("", 0, 0));
          if(accountNumbersList.contains(accountNumber)) {
            print("Enter the amount you want to withdraw from the account:");
            double amount = double.parse(stdin.readLineSync() ?? '');
            account.withdraw(amount);
            print("${amount} rupees have been withdrawn from your account.\n");
          }
          else {
            print("Account number is invalid");
          }
          break;
        case'4':
          print("Enter your account number:");
          int accountNumber=int.parse(stdin.readLineSync()??'');
          BankAccount account = accounts.firstWhere((acc) => acc.accountNumber == accountNumber, orElse: () => BankAccount("", 0, 0));
          if(accountNumbersList.contains(accountNumber)){
            print("The current amount in your account is: ${account.getBalance()}\n");
          }
          else {
            print("Account number is invalid");
          }
          break;
        case'5':
          print("Enter your account number:");
          int accountNumber=int.parse(stdin.readLineSync()??'');
          BankAccount account = accounts.firstWhere((acc) => acc.accountNumber == accountNumber, orElse: () => BankAccount("", 0, 0));
          print("The account details are following:");
          account.getAccountDetails();
          break;
        case'6':
          print("You are exiting the program. Thank You!");
          break;
        default:
          print("You have entered an invalid choice. Try again !");
      }
    }
  }