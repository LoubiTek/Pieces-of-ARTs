int W = 1280;
int H = 720;
String ENGINE = P3D;
byte AA = 16;
byte FPS = 120;
byte COLORMODE = RGB;

void LIGHTS_()
{
  if(AA <= 0)
  {
    lights();
  }
  else
  {
    noLights();
  }
}

void SMOOTH()
{
  AA--;
  if(AA==0)
  {AA=16;}
}
