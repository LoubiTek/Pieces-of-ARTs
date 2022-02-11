import controlP5.*;
ControlP5 cp5;

// SHOW FPS
void SHOW_FPS()
{
  cp5 = new ControlP5(this);
  cp5.addFrameRate().setInterval(1).setPosition(0,H - 16).setColor(RED);
}
