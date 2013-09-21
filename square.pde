// Here is a loop creating some fun squares... The goal is to ada a bit more color to it and have the squars eventually move. 
// started: 9/12/13

void setup() {

  size(600, 600);
  int count = 1;
  for (int i = 0; i < count; i++) {
    rotate(radians(10));
    fill(255);
    rect(400, 100, 50, 50);
    noFill();
    rect(0, 0, 600, 600);
    count += count;
  }
}
