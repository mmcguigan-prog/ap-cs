// Unit 1, Lesson 4 - Demo A: Return Values
// So far every method has been void: it DOES something.
// A value-returning method ANSWERS something.

void setup() {
  size(600, 400);
  background(245);

  // ===== void vs. value-returning =====
  //
  //   void drawHouse(...)      "go do this"       -> a statement
  //   float average(...)       "what is this?"    -> an expression with a value
  //
  // The return type replaces the word void in the header. That is the only
  // change to the shape of the header.

  println("average(10, 20)     = " + average(10, 20));
  println("celsius(212)        = " + celsius(212));
  println("isOffScreen(700)    = " + isOffScreen(700));
  println("initials(\"Ada\", \"Lovelace\") = " + initials("Ada", "Lovelace"));
  println();

  // A returned value must GO somewhere: stored, printed, or used in an expression.
  float mid = average(0, 100);       // stored
  println("stored: " + mid);
  println("used:   " + (average(0, 100) * 2));   // used immediately

  // average(10, 20);                // legal, but computes the answer and throws it away

  // ===== USING RETURNED VALUES TO DRAW =====
  noStroke();
  for (int i = 0; i < 6; i++) {      // (loops are Unit 3 -- just watch what it does)
    float x = 60 + i * 90;
    fill(scoreColor(i * 20));        // a method that returns a color
    ellipse(x, 200, 70, 70);

    fill(40);
    textAlign(CENTER);
    text(i * 20, x, 260);
  }

  fill(40);
  textAlign(LEFT);
  textSize(13);
  text("Each circle's color came back from scoreColor(). Check the console too.", 20, 340);
}

// ================= VALUE-RETURNING METHODS =================

// float replaces void. Every path out of the method must return a float.
float average(float a, float b) {
  return (a + b) / 2;
}

float celsius(float fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

// A method can return a boolean. This one answers a yes/no question.
boolean isOffScreen(float x) {
  return x < 0 || x > width;    // the comparison IS a boolean -- no if needed
}

// ...or a String.
String initials(String first, String last) {
  return first.charAt(0) + "." + last.charAt(0) + ".";
}

// ...or a color, which in Processing is just a number.
color scoreColor(int score) {
  if (score >= 80) {
    return color(60, 180, 90);      // return exits the method IMMEDIATELY
  }
  if (score >= 60) {
    return color(240, 200, 60);
  }
  return color(220, 80, 80);        // this line is the "everything else" case
}

// ===== A COMMON ERROR =====
// This will not compile -- Java cannot promise a value comes back:
//
//   float half(float n) {
//     if (n > 0) {
//       return n / 2;
//     }
//     // no return when n <= 0  ->  "This method must return a result of type float"
//   }
