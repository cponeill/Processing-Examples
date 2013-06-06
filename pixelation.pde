/* The goal here is pretty simple. I have a coffee tumbler that is pixelated with different shades of green and silver
and I wanted to replicate that with an actual image that is pixelated. You will have to upload your own picture into
the processing folder but the one I have chosen prefectly does that. Mini-project for the day. 6/6/13 */

PImage img;

void setup()
{
  size(100, 100);
  noStroke();
  // Load whatever image you would like into processing and then change the name below.
  img = loadImage("silvergreen.jpg");
}

void draw()
{
  int x = int(random(img.width));
  int y = int(random(img.height));
  color c = img.get(x, y);
  fill(c, 102);
  int xgrid = int(random(-2, 5)) * 25;
  int ygrid = int(random(-2, 5)) * 25;
  rect(xgrid, ygrid, 40, 40);
}
