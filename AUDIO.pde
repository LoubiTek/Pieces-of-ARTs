// IMPORT MINIM LIB
import ddf.minim.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer GROW;
AudioPlayer OLC_GC;
AudioPlayer music;
AudioOutput out;

void SOUNDS()
{
  // SOUNDS
  GROW = minim.loadFile("AUDIO/GROW.wav",255);
  GROW.setGain(.1);
  
  OLC_GC = minim.loadFile("AUDIO/OLC_GC.wav",255);
  
  // MUSIC
  music = minim.loadFile("AUDIO/421618314628942.mp3",255);
  music.setGain(1);
}

// PLAY SOUND
void PLAY_SOUND()
{
  OLC_GC.play();
  
  if(P.x>=1)
  {P.x=-1;P.y++;GROW.play();strokeWeight(1.618);stroke(255,0,0,ALPHA);text("GROW",0,H/2);}
  
  if(P.x==0)
  {GROW.loop();}
  
  if(P.z==0)
  {music.play();}
  
  if(P.z>=FADE_FEED && P.z == (B0B * BAD + DADA - D0D0 + C0CA * DEAD)) // Oh no the music in inside of this loop.
  {music.loop();}
  //print("FADE_FEED:"+FADE_FEED+"B0B:"+B0B+"BAD:"+BAD+"DADA:"+DADA+"D0D0:"+D0D0+"C0CA:"+C0CA+"DEAD:"+DEAD);
}

// REWIND SOUND and MUSIC
void REWIND_SOUND()
{
  if(mousePressed || keyPressed)
  {
    GROW.rewind();
    //music.rewind();
  }
}
