package demos._1._5;

// Unit 1, Lesson 5 - A class we USE in the demos (writing classes in Java comes in Unit 3).
// For now, think of this like Math or Scanner: read the constructors and methods, then use them.

public class BankAccount {

    private String owner;
    private double balance;

    // Constructor 1: BankAccount(String)
    public BankAccount(String name) {
        owner = name;
        balance = 0.0;
    }

    // Constructor 2: BankAccount(String, double)  (overloaded constructor)
    public BankAccount(String name, double startBalance) {
        owner = name;
        balance = startBalance;
    }

    public void deposit(double amount) {
        balance += amount;
    }

    public void withdraw(double amount) {
        balance -= amount;
    }

    public double getBalance() {
        return balance;
    }

    public String getOwner() {
        return owner;
    }
}
