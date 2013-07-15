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

/*

//This is code does the same as above except it was re-written using vectors. Pretty cool stuff.

PVector location;
PVector velocity;

void setup()
{
  size(200, 200);
  smooth();
  background(255);
  location = new PVector(100, 100);
  velocity = new PVector(2.5, 2);
}

void draw()
{
  background(255);
  
  location.add(velocity);
  
  if ((location.x > width) || (location.x < 0)) {
    velocity.x *= -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y *= -1;
  }
  
  stroke(0);
  fill(175);
  ellipse(location.x, location.y, 16, 16);
}

class PVector {
 
 float x;
 float y;

 PVector(float x_, float y_) {
   x = x_;
   y = y_;
 }
 
 void add(PVector v) {
   y += v.y;
   x += v.y;
 }
 
}

*/
  
