# Unit 1: Variables and Methods (Processing)

**Quarter 1** | Maps to AP CSA topics 1.1-1.3, 1.5-1.6 (variables/expressions) and 1.9-1.10 (methods)

> Integer division, modulus, casting, and `double` are deliberately **deferred** to a
> later unit. Semester 1 uses `float` throughout, because that is what Processing's
> drawing methods take.

---

## Conceptual Overview

Unit 1 establishes the two ideas everything else in the course rests on: **storing data**
and **naming a block of code**. Students declare typed variables, use them to move things
and to calculate, and then package repeated drawing code into methods with parameters and
return values.

We do this in Processing so that every abstract idea has something visible attached to
it. A parameter is not a mystery — it is the reason `drawFlower(100, 200, 40)` puts a
flower in a different place than `drawFlower(300, 150, 80)`.

---

## Key Terms

| Term | Definition |
|------|-----------|
| **Variable** | A named container that stores a value of a specific type |
| **Data type** | The kind of value a variable holds (`int`, `float`, `boolean`, `char`, `String`) |
| **Primitive type** | A basic type stored directly in memory (`int`, `float`, `boolean`, `char`) |
| **Reference type** | A type that stores the address of an object (`String`, arrays, classes) |
| **Declaration** | Naming a variable and giving it a type: `int score;` |
| **Initialization** | Giving a variable its first value: `int score = 0;` |
| **Expression** | Values, variables, and operators that evaluate to a single result |
| **Concatenation** | Joining strings with `+` |
| **Method** | A named, reusable block of code |
| **Method header** | The first line: return type, name, parameter list |
| **Parameter** | The variable listed in the method header |
| **Argument** | The actual value passed in when the method is called |
| **Return type** | The type a method hands back; `void` means it hands back nothing |
| **Overloading** | Two methods with the same name but different parameter lists |
| **Local variable** | Declared inside a method; only exists inside that method |
| **Global variable** | Declared outside all methods; visible to the whole sketch |
| **`setup()`** | Processing method that runs once at the start |
| **`draw()`** | Processing method that runs ~60 times per second |

---

## Syntax Reference

### Declaring Variables

```java
int score = 0;              // whole numbers
float x = 250.0;            // decimals
boolean gameOver = false;   // true or false
char grade = 'A';           // one character, SINGLE quotes
String name = "Alice";      // text, DOUBLE quotes (reference type)
```

### Arithmetic Operators

| Operator | Meaning | Example | Result |
|----------|---------|---------|--------|
| `+` | Addition | `7 + 3` | `10` |
| `-` | Subtraction | `7 - 3` | `4` |
| `*` | Multiplication | `7 * 3` | `21` |
| `/` | Division | `7.0 / 2` | `3.5` |

### Compound Assignment

```java
x += 5;   // x = x + 5
x -= 5;   // x = x - 5
x *= 2;   // x = x * 2
x /= 2;   // x = x / 2
x++;      // x = x + 1
x--;      // x = x - 1
```

### Method Structure

```java
// void method — does something, hands nothing back
void drawFlower(float x, float y, float size) {
  fill(255, 200, 0);
  ellipse(x, y, size, size);
}

// value-returning method — the return type replaces void
float average(float a, float b) {
  return (a + b) / 2;
}
```

Calling them:

```java
drawFlower(100, 200, 40);          // a statement on its own
float mid = average(10, 20);       // the result must go somewhere
println(average(10, 20));          // ...or be used immediately
```

### Processing Program Skeleton

```java
int x = 50;              // global variables go up here

void setup() {           // runs ONCE
  size(600, 400);        // must be the first line in setup()
}

void draw() {            // runs ~60 times per second
  background(220);       // repaint, or old frames smear
  ellipse(x, 200, 40, 40);
  x++;
}

// your own methods go down here
```

---

## Common Pitfalls

1. **`size()` must be the first line of `setup()`.** Processing will not accept it
   anywhere else.
2. **Forgetting `background()` in `draw()`.** Without it, every frame paints on top of
   the last one and motion turns into a smear. (Sometimes you want that — but on purpose.)
3. **Declaring a variable inside `draw()` when you meant it to persist.** A variable
   declared in `draw()` is rebuilt from scratch 60 times a second, so it never appears to
   change. Animation variables go at the top of the file.
4. **`char` vs `String` quotes.** `'A'` is a `char`; `"A"` is a `String`.
5. **Comparing Strings with `==`.** Use `.equals()`. `==` compares addresses.
6. **A `void` method cannot be assigned.** `float f = drawFlower(...)` is an error.
7. **Forgetting `return` in a value-returning method.** Every path out of the method
   needs one.
8. **Argument order.** `drawFlower(40, 100, 200)` compiles fine and draws the wrong
   thing. Parameters are matched by position, not by name.
9. **Calling a method but ignoring what it returns.** `average(10, 20);` on its own line
    computes the answer and throws it away.

---

## AP Exam Tips

- Know the difference between `print()` and `println()`.
- On the exam, methods you write are `public static` inside a class. In Processing the
  `public static` is implied — the shape of the header (return type, name, parameters) is
  identical, and that shape is what gets tested.
- Default values: `int` = 0, `float` = 0.0, `boolean` = false, reference = `null`.
