int temp = 500;

public void setup() {
  size(500, 500);
  fill(0);
  rect(0, 0, 500, 500);
  sierpinski(0, 500, 500);
}

void mousePressed() {
  fill(0);
  rect(0, 0, 500, 500);
  if (temp != 1) {
    temp = temp / 2;
  }
  sierpinski(0, 500, 500);
}

void keyPressed() {
  if (key == 'r') {
    fill(0);
    rect(0, 0, 500, 500);
    temp = 500;
    sierpinski(0, 500, 500);
  }
}

public void sierpinski(int x, int y, int len) {
  fill(255);
  if (len >= temp) {
    len = len / 2;
    sierpinski(x, y, len);
    sierpinski(x + len, y, len);
    sierpinski(x + (len/2), y - len, len);
  } else {
    triangle(x, y, x + len / 2, y - len, x + len, y);
  }
}
