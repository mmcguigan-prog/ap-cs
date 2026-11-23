package demos._1._5;

// Unit 1, Lesson 5 - Demo A: Creating and Using Objects (Topics 1.12, 1.13, 1.14)
// Uses BankAccount.java from this folder.

public class ObjectsDemo {

    public static void main(String[] args) {

        // ================= CLASS vs. OBJECT (1.12) =================
        // A CLASS is the blueprint (the cookie cutter). An OBJECT is one thing made from it (a cookie).
        // BankAccount is the class. Each "new BankAccount(...)" makes a separate object.

        // ================= CREATING OBJECTS (1.13) =================
        //   type         variable   =  new  constructor(arguments)
        BankAccount   ana        =  new  BankAccount("Ana", 100.0);   // BankAccount(String, double)
        BankAccount   ben        =  new  BankAccount("Ben");          // BankAccount(String)
        // Java picks the constructor whose signature matches the arguments, just like overloaded methods.

        // ================= CALLING INSTANCE METHODS (1.14) =================
        // objectName.methodName(arguments). The method works on THAT object's data.
        ana.deposit(25.0);
        ben.deposit(10);   // the int 10 widens to a double
        System.out.println(ana.getOwner() + ": " + ana.getBalance());   // Ana: 125.0
        System.out.println(ben.getOwner() + ": " + ben.getBalance());   // Ben: 10.0
        // Compare: Math.sqrt(9) is a CLASS method (called on the class).
        //          ana.deposit(25) is an INSTANCE method (called on one object).
        System.out.println();

        // ================= A VARIABLE HOLDS A REFERENCE =================
        // ana doesn't hold the account. It holds a REFERENCE (like an address) to where the account is.
        BankAccount sameAsAna = ana;      // copies the reference, NOT the account
        sameAsAna.withdraw(100.0);
        System.out.println("Ana now has " + ana.getBalance());   // 25.0, because it's the same object
        System.out.println("Same object? " + (ana == sameAsAna)); // true
        BankAccount twin = new BankAccount("Ana", 25.0);
        System.out.println("Twin is the same object? " + (ana == twin)); // false: same data, different objects
        System.out.println();

        // ================= PRINTING AN OBJECT =================
        // Every class is a subclass of Object, so every object has a toString method.
        // BankAccount doesn't write its own, so it gets Object's version: ClassName@hexcode
        System.out.println(ana);
        System.out.println();

        // ================= null =================
        // null means "this variable doesn't refer to any object."
        BankAccount nobody = null;
        System.out.println("nobody is null? " + (nobody == null));
        // nobody.deposit(5.0);   // NullPointerException: there's no object to deposit into
    }
}
