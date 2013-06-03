float y = 50.0;
float speed = 1.0;
float radius = 15.0;
int direction = 1;

void setup()
{
    size(500, 500);
    smooth();
    noStroke();
    ellipseMode(RADIUS);
}

void draw()
{
    fill(0, 12);
    rect(0, 0, width, height);
    fill(255);
    ellipse(mouseX, mouseY, radius, radius);
    y += speed * direction;
    if ((y > height-radius) || (y < radius)) {
        direction = -direction;
    }
}
