import queasycam.*;
QueasyCam cam;

public class FPS_VIEW extends PApplet
{
  public void settings()
  {
    size(W/2,H/2,ENGINE);
  }
  public void setup()
  {
    frameRate(FPS);
    background(BLACK);
    cam = new QueasyCam(this);
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
    text(ENGINE_2D,0,0,a);
    
    pushMatrix();
    {
      a += .1;
      rotate(radians(a));
      
      strokeWeight(1);
      stroke(WHITE);
      
      point(P.x,P.y);
      
      line(-W,H,0,0);
      line(W,H,0,0);
      
      noFill();
      box(W-H);
    }
    popMatrix();
    
    textSize(72);
    ADX = DADA;
    text(ARTIST_DEV,ADX,ADY++,-a);
  }
}
