PImage img;


void setup()
{
  img = loadImage("xxx.JPG");
  size(img.width, img.height);
}

void draw()
{
  int imageHeight = 100*img.height/img.width;
  image(img, mouseX, mouseY, 100, imageHeight);
}
