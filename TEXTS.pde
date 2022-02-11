// COORDINATES MOUSE AND FPS
void COORDINATES_MOUSE_AND_FPS()
{
  String COORDS_M = "MOUSE X:"+mouseX+"  MOUSE Y:"+mouseY;
  textSize(FPS);
  fill(BLACK);
  text(COORDS_M,0,0);
  //println(COORDS_M);
  text("FPS:"+FPS,0,H);
}

String ARTIST_DEV = "LoubiTek";
float AD_X = 0, AD_Y = H-FPS*2;

// AUTOR PROGRAMMER
void AUTOR_PROGRAMMER()
{
  scale(1);
  fill(GREEN);
  text(ARTIST_DEV,AD_X++,AD_Y,D0D0);
  if(AD_X>=W)
  {AD_X=0;}
}

String OLC = "ONE LONE CODER";
int OLC_X = 0, OLC_Y = 0;
boolean OLC_WEBSITE = false;

// ONE LONE CODER
void OLC()
{
  textAlign(CENTER);
  fill(WHITE);
  text(OLC,OLC_X,OLC_Y);
  
  if(OLC_WEBSITE == true)
  {
    tint(GREEN);
  }
  else
  {
    tint(RED);
  }
  image(JX9,OLC_X,OLC_Y);
}

void mousePressed()
{
  if (OLC_WEBSITE)
  { 
    link("https://community.onelonecoder.com/");
  }
}

// CHECK LINK
void checkLink()
{
  if (mouseX == W/2 || mouseY == H/2)
  {
    OLC_WEBSITE = true;
    cursor(HAND);
  }
  else
  {
    OLC_WEBSITE = false;
    //cursor(CROSS);
  }
}

void mouseMoved()
{ 
  checkLink(); 
}
  
void mouseDragged()
{
  checkLink(); 
}
