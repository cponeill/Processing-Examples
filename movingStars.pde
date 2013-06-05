/* This program looks like little stars moving across the sky quickly when it is run. Any image can be loaded and you 
will get mostly the same thing. Stars... moving across the sky */

int num = 400;
float[] x = new float[num];
float[] y = new float[num];
PImage img;

void setup()
{
  size(400, 400);
  img = loadImage("Desert.jpg");
  for (int i = 0; i < num; i++) {
    x[i] = random(width);
    y[i] = random(height);
  }
  stroke(255);
}

void draw()
{
  background(0);
  for (int i = 0; i < num; i++) {
    color c = img.get(int(x[i]), int(y[i]));
    float b = brightness(c) / 255.0;
    float speed = pow(b, 2) + 0.05;
    x[i] += speed;
    if (x[i] > width) {
      x[i] = 0;
      y[i] = random(height);
    }
    point(x[i], y[i]);
  }
}
