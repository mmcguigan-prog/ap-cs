class BankAccount {
  // Instance variables
  String accountHolder;
  String accountNumber;
  float balance;
  
  // Constructor
  BankAccount(String accountHolder, String accountNumber) {
    this.accountHolder = accountHolder;
    this.accountNumber = accountNumber;
    this.balance = 0;  // Initialize balance to 0
  }
  
  // Method to deposit money
  void deposit(float amount) {
    balance += amount;
  }
  
  // Method to print account information
  void getInfo() {
    println("Account Holder: " + accountHolder);
    println("Balance: $" + balance);
    println();
  }
}
