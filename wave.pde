/* I like this example because it reminds me of the dock bar on OSX devices. For now it is just a font but I would like
to change it to contain pictures instead. Thus giving it a bit more of a realistic look. */


String word = "Pictures will go here soon!!!";
char[] letters;
float totalOffset = 0;
PFont font;

void setup()
{
  size(300, 100);
  font = loadFont("AgencyFB-Reg-48.vlw");
  textFont(font);
  letters = word.toCharArray();
  textAlign(RIGHT);
  fill(0);
}

void draw()
{
  background(204);
  translate((width - totalOffset) / 2, 0);
  totalOffset = 0;
  float firstWidth = (width / letters.length) / 4.0;
  translate(firstWidth, 0);
  for (int i = 0; i < letters.length; i++) {
    float distance = abs(totalOffset - mouseX);
    distance = constrain(distance, 24, 60);
    textSize(84 - distance);
    text(letters[i], 0, height - 2);
    float letterWidth = textWidth(letters[i]);
    if (i != letters.length - 1) {
      totalOffset += letterWidth;
      translate(letterWidth, 0);
    }
  }
}
   
