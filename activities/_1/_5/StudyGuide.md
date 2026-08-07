# Unit 1 Study Guide: Variables and Methods

**Quiz format:** part written (trace and explain), part practical (write a sketch).

**References:** [Unit 1 Overview](../../../unit_overviews/Unit1_VariablesAndMethods.md) · [Processing Quick Reference](../../../unit_overviews/ProcessingQuickReference.md)

---

## You Should Be Able To

**Variables**
- Declare and initialize `int`, `float`, `boolean`, `char`, `String`
- Explain why `'A'` and `"A"` are different
- Use `+=`, `-=`, `*=`, `++`, `--`
- Explain why a variable that needs to change over time goes at the top of the file, not inside `draw()`

**Processing structure**
- Say what `setup()` does, what `draw()` does, and how often each runs
- Know that `size()` must be the first line of `setup()`
- Explain what happens if you leave `background()` out of `draw()`
- Use `width`, `height`, `mouseX`, `mouseY`

**Methods**
- Point to the return type, name, and parameter list in any header
- Tell a **parameter** from an **argument**
- Write a `void` method with parameters
- Write a value-returning method with the correct return type
- Explain why a `void` method's result can't be assigned to a variable
- Write overloaded methods and say what makes two overloads legal
- Explain why argument order matters and names don't

**Scope**
- Define local and global
- Say which one an animation variable needs
- Spot a shadowed variable and explain why the global didn't change

---

## The Five Things Most People Miss

**1. Declaring an animation variable inside `draw()`.**
```java
void draw() {
  float x = 0;     // rebuilt 60 times a second, so it never moves
  x += 2;
}
```

**2. Missing a `return` on some path.**
```java
String label(int n) {
  if (n > 0) { return "positive"; }
  // nothing returned when n <= 0 -- will not compile
}
```

**3. Assigning from a `void` method.**
```java
float t = drawTree(100, 200);    // void produces no value
```

**4. Argument order.**
```java
void drawTree(float x, float y, float h) { ... }
drawTree(120, 100, 380);    // compiles fine, draws the wrong thing
```

**5. Shadowing a global.**
```java
int clicks = 0;
void mousePressed() {
  int clicks = 0;    // a NEW local; the global never changes
  clicks++;
}
```

---

## Practice Traces

**A.**
```java
int x = 5;
x += 3;
x *= 2;
x--;
println(x);
```

**B.**
```java
int n = 3;

void setup() {
  grow();
  grow();
  println(n);
}

void grow() {
  n = n * 2;
}
```

**C.**
```java
float mystery(float a, float b) {
  return (a + b) / 2;
}
// what is mystery(mystery(0, 10), 20) ?
```

**D.** What's wrong with each?
```java
1.  void area(float r) { return 3.14 * r * r; }
2.  float half(float n) { n / 2; }
3.  drawBox(50);              // header is  void drawBox(float x, float y)
4.  int describe(int score) { return "A"; }
5.  void setup() { background(200); size(400, 400); }
```

<details>
<summary>Answers</summary>

**A.** `15`
**B.** `12`
**C.** `mystery(0,10)` is `5.0`, so `mystery(5, 20)` is `12.5`
**D.**
1. Header says `void` but the body returns a value — change the return type to `float`.
2. Computes `n / 2` and throws it away — needs `return n / 2;`
3. Only one argument for a two-parameter method.
4. Return type is `int` but it returns a `String` — should be `String`.
5. `size()` must be the first line of `setup()`.

</details>

---

## How to Prepare

- Redo the traces above on paper, no computer
- Reopen `MethodParameters` and `ReturnValues`, cover the method bodies, and predict what each does from its header alone
- Take `PracticeQuiz.md` under time — 25 minutes
- Bring one question to class
