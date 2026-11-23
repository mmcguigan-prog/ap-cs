# Using Objects

**Unit 1, Lesson 5** | Topics 1.12, 1.13, 1.14 | Demos: `ObjectsDemo`, `LibraryObjects` (uses `BankAccount`)

**Rule for today:** Predict on paper first, then run the code to check. If you were wrong, write down *why*.

You wrote classes in Processing. In Java, **writing** classes comes in Unit 3. Today is about **using** classes someone else wrote, the way the AP exam gives you a class and asks you to use it. Make two new files and paste in these classes. Don't change them.

**`BankAccount.java`**
```java
public class BankAccount {

    private String owner;
    private double balance;

    public BankAccount(String name) {
        owner = name;
        balance = 0.0;
    }

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
```

**`Die.java`**
```java
public class Die {

    private int sides;
    private int value;

    public Die() {
        sides = 6;
        value = 1;
    }

    public Die(int numSides) {
        sides = numSides;
        value = 1;
    }

    public int roll() {
        value = (int) (Math.random() * sides) + 1;
        return value;
    }

    public int getValue() {
        return value;
    }

    public int getSides() {
        return sides;
    }
}
```

---

## Warm-Up: Mark It Up (1.12, 1.13)

Copy each statement onto paper. **Circle** the `=` and the word `new`. **Underline** the variable's type and the constructor. **Draw a box** around the arguments.

```java
BankAccount savings = new BankAccount("Ana", 100.0);
Die d20 = new Die(20);
Scanner input = new Scanner(System.in);
```

1. In your own words, what's the difference between a **class** and an **object**? Use `Die` and `d20` in your answer.
2. List the **constructor signatures** for `BankAccount` and for `Die`.
3. For `BankAccount`, name one **attribute** (data it stores) and one **behavior** (something it can do).

## Level 1: Which Constructor? (1.13)

For each line, write which constructor is called. If it doesn't compile, explain why.

| # | Code | Constructor or error |
|---|---|---|
| 1 | `BankAccount x = new BankAccount("Zoe");` | |
| 2 | `BankAccount x = new BankAccount("Zoe", 25);` | |
| 3 | `BankAccount x = new BankAccount(25.0, "Zoe");` | |
| 4 | `BankAccount x = new BankAccount();` | |
| 5 | `Die x = new Die();` | |
| 6 | `Die x = new Die(12);` | |
| 7 | `Die x = new Die(6.0);` | |

## Level 2: References (1.12, 1.14)

Predict the output line by line.

```java
BankAccount a = new BankAccount("Ana", 100.0);
BankAccount b = a;
b.deposit(50.0);
System.out.println(a.getBalance());

BankAccount c = new BankAccount("Ana", 150.0);
System.out.println(a == b);
System.out.println(a == c);

b = new BankAccount("Ben");
b.deposit(20);
System.out.println(a.getBalance() + " " + b.getBalance());
System.out.println(a.getOwner() + " " + b.getOwner());
```

- `a` and `c` have the same owner and the same balance. Why is `a == c` false?
- Draw a picture: boxes for the variables, and arrows pointing to the objects. Show where each arrow points at the end.

**What happens?** Predict each, then try it.
```java
BankAccount x;
System.out.println(x.getBalance());      // (1)

BankAccount y = null;
System.out.println(y.getBalance());      // (2)

System.out.println(a);                   // (3)
```

## Level 3: Objects and Methods (1.13, 1.14)

```java
public static void main(String[] args) {
    BankAccount acct = new BankAccount("Cy", 10.0);
    bonus(acct);
    System.out.println(acct.getBalance());
    replace(acct);
    System.out.println(acct.getBalance());
}

public static void bonus(BankAccount account) {
    account.deposit(5.0);
}

public static void replace(BankAccount account) {
    account = new BankAccount("Someone else", 999.0);
}
```

1. Predict both lines of output.
2. Last class, a method that changed its `int` parameter didn't change the caller's variable. `bonus` **does** change the caller's account. What's different? (Hint: what does the parameter get a copy of?)
3. Why doesn't `replace` change `acct`?

## Level 4: Write It With Die (1.13, 1.14)

1. Make two six-sided `Die` objects. Roll them both 100,000 times and print what percent of the rolls were **doubles**. (The math says it should be about 16.7%.)
2. Which has a higher average: one 20-sided die, or the total of two 10-sided dice? Make the three dice, roll 100,000 times, and print both averages. Can you explain the answer?
3. Make an array of 5 `Die` objects with 4, 6, 8, 12, and 20 sides. Roll each one and print something like `d12 rolled 7`, using `getSides()` and `getValue()`.

## Level 5: Objects From Java's Library (1.7, 1.14)

Java's `Point` class (add `import java.awt.Point;`) stores an `int` x and y. From its API:

| Constructor / Method | What it does |
|---|---|
| `Point()` | makes the point (0, 0) |
| `Point(int x, int y)` | makes the point (x, y) |
| `double getX()`, `double getY()` | return the coordinates |
| `void translate(int dx, int dy)` | moves the point by dx and dy |
| `double distance(Point other)` | distance to another point |

Predict, then run:
```java
Point home = new Point(2, 3);
Point school = new Point(8, 11);
System.out.println(home.distance(school));
school.translate(-6, -8);
System.out.println(school);
System.out.println(home.equals(school));
System.out.println(home == school);
```

- Printing `school` shows something readable, but printing a `BankAccount` didn't. Why? (Hint: which class writes its own `toString`?)
- `home.equals(school)` and `home == school` give different answers. What does each one check?
