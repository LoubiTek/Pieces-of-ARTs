import camera3D.Camera3D;
Camera3D camera3D;

float fov = 15;

float EX = width/2;
float EY = height/2;
float EZ = 120;

float CX = 0;
float CY = 0;
float CZ = 0;

float UX = 0;
float UY = 1;
float UZ = 0;

float L = 0;
float R = 0;
float B = 0;
float T = 0;
float N = 0;
float F = 0;

boolean showPerspective = false;

/*void CAMERA_MOVE_X()
{
  EX++;
  if(EX>=W/2)
  {EX=0;}
}*/

// CAMERA
void CAMERA()
{ 
  translate(W/2,H/2);
  scale(SCALE[1]);
  
  //CAMERA_MOVE_X();
  
  camera(EX,EY,EZ,CX,CY,CZ,UX,UY,UZ); //!\\
  //frustum(L,R,B,T,N,F);
  float cameraZ = (H/2.0) / tan(fov/2.0);
  perspective(fov, float(W)/float(H), 
                  cameraZ/10.0, cameraZ*10.0);
                  /*
                  float zoom = map(mouseX/2, mouseY/2, width, 0.1, 4.5);
                  scale(zoom);*/
                  boolean CLIC = false;
                  if(mousePressed != CLIC)
                  {
                    ortho(-width/2.0, width/2.0, -height/2.0, height/2.0, cameraZ/10.0, cameraZ*10.0);
                    camera3D.renderGrayAnaglyph();
                  }
                  /*else
                  {
                    camera3D.renderDefaultAnaglyph();
                  }*/
}

// MOUSEWHEEL
void mouseWheel(MouseEvent event)
{
  int e = event.getCount();
  CZ=(CZ+e)%H*2;
}

// KEYPRESSED
void keyPressed(KeyEvent event)
{
  if(keyCode == LEFT) // 37
  {
    EX = EX - 1 + event.getKeyCode();
  }
  
  if(keyCode == UP)  // 38
  {
    EY = EY - 1 + event.getKeyCode();
  }
  
  if(keyCode == RIGHT) // 39
  {
    EX = EX + 1 - event.getKeyCode();
  }
  
  if(keyCode == DOWN) // 40
  {
    EY = EY + 1 - event.getKeyCode();
  }
}

// KEYRELEASED
void keyReleased(KeyEvent event)
{
  if(keyCode == LEFT) // 37
  {
    EX = EX - 1 + event.getKeyCode();
  }
  
  if(keyCode == UP) // 38
  {
    EY = EY - 1 + event.getKeyCode();
  }
  
  if(keyCode == RIGHT) // 39
  {
    EX = EX + 1 - event.getKeyCode();
  }
  
  if(keyCode == DOWN) // 40
  {
    EY = EY + 1 - event.getKeyCode();
  }
}
