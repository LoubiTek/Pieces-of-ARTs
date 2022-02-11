import processing.javafx.*;

String ENGINE_2D = FX2D;

float a = 0;

float ADX = 0; float ADY = H/4-255;

public class VIEW_2D extends PApplet
{
 
  public void settings()
  {
    size(W/2,H/2,ENGINE_2D);
  }
  public void setup()
  {
    frameRate(FPS);
    background(BLACK);
  }
  public void draw()
  {
    SMOOTH();
    
    background(BINARY_PAL[0]);
    translate(W/4,H/4);
    scale(1);
    
    strokeWeight(1);
    stroke(BINARY_PAL[1]);
    textSize(16);
    text(ENGINE_2D,0,0);
    
    pushMatrix();
    {
      a += .1;
      rotate(radians(a));
      
      point(P.x,P.y);
      
      line(-W,H,0,0);
      line(W,H,0,0);
    }
    popMatrix();
    
    textSize(72);
    ADX = DADA;
    text(ARTIST_DEV,ADX,ADY++,D0D0);
    
    if(ADY>=H/2)
    {ADY=-H/2;}
    
    if(a>=360)
    {a=0;}
  }
}
