PImage bg;
PImage JX9;
PImage OLC_PGE;

void IMAGES()
{
  bg = loadImage("IMG/bg.png");
  JX9 = loadImage("IMG/JAVIDX9.png");
  OLC_PGE = loadImage("IMG/OLCPGE.png");
}

void JX9()
{
  //filter(INVERT);
  beginShape(POINTS);
  {
    texture(JX9);
  }
  endShape(CLOSE);
}
