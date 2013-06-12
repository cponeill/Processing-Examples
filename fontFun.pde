/* This is just a quick sketch that I through together to see how I could work with both fonts and images together. I also wanted to test out the filter function for images and see what it could do. Pretty cool stuff. 6/11/13 */

PImage img;
PFont font;

void setup()
{
  size(640, 480);
  img = loadImage("XXXXX.jpg");
  font = loadFont("XXXXX.vlw");
  textFont(font, 50);
}

void draw()
{
  image(img, 0, 0);
  filter(THRESHOLD, 0.8);
  fill(255, 0, 100);
  text("text here", 50, 150);
}
