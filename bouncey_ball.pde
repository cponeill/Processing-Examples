/* This is just a simple bouncy ball example that everyone who learns processing needs to understand */

float x = 100, y = 100;
float xs = 1, ys = 3.3;

void setup()
{
  size(200, 200);
  smooth();
  background(255);
}

void draw()
{
  background(255);
  x += xs;
  y += ys;
  
  if ((x > width) || (x < 0)) {
    xs *= -1;
  }
  if ((y > height) || (y < 0)) {
    ys *= -1;
  }
  
  stroke(0);
  fill(175);
  ellipse(x, y, 16, 16);
}

  
