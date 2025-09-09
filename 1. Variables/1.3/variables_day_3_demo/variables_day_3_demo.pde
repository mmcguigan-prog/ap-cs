
void setup() {
  size(680, 360);
  background(250);
  fill(0);
  textSize(16);

  // Casting & truncation
  int a = (int) 7.9;       // 7
  float b = (float) (7/2); // 3.0  (int division first)
  float c = 7 / 2.0;       // 3.5  (float operand)
  float d = (float)7 / 2;  // 3.5  (cast before division)

  text("int a = (int)7.9 → " + a, 20, 40);
  text("float b = (float)(7/2) → " + b, 20, 70);
  text("float c = 7/2.0 → " + c, 20, 100);
  text("float d = (float)7/2 → " + d, 20, 130);

  // Strings and length()
  String studentName = "Ada Lovelace";
  int nameLen = studentName.length();
  text("Name: " + studentName, 20, 180);
  text("Length: " + nameLen, 20, 210);

  // Label a visual with text()
  float hoursSlept = 7.5;
  float radius = hoursSlept * 12;
  fill(220, 80, 90);
  ellipse(500, 180, radius*2, radius*2);
  fill(0);
  text("hoursSlept = " + hoursSlept, 440, 320);
  text("label via text()", 470, 25);
}

void draw() { }
