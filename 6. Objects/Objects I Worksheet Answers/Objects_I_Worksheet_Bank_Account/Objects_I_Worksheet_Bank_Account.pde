// Create two BankAccount objects
BankAccount account1 = new BankAccount("Alice Johnson", "ACC001");
BankAccount account2 = new BankAccount("Bob Smith", "ACC002");


void setup() {
  // Deposit random amounts 10 times for each account
  println("Making 10 deposits to each account...");
  println();
  
  for (int i = 0; i < 10; i++) {
    float randomAmount1 = random(100);  // Random amount 0-100
    account1.deposit(randomAmount1);
    
    float randomAmount2 = random(100);
    account2.deposit(randomAmount2);
  }
  
  // Print info for the account with the larger balance
  println("Account with larger balance:");
  if (account1.balance > account2.balance) {
    account1.getInfo();
  } else {
    account2.getInfo();
  }
}
