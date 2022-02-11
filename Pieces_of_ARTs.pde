float FADE_FEED = 42.1618314628942; int B0B = 123; short BAD = 13; byte DADA = -127; /*IS'M?*/ short D0D0 = 0; int C0CA = 0; float DEAD = .1;

// IMPORT LOOM LIB | D00M, wtf no is no H(elle)L0N3(&&||Clown != C++lôn3 ... Né le 28/01/1994, yeah I'm préfère QuoiK <3 T(the)ime Are haîne Ah; s(h)ort, WHELL COME to my UNIVERS.
import com.corajr.loom.*;
Loom D00M; // D00M != L'H0_0Me :)
Pattern pattern;

                                                                                                    // 3D Pièces of ART's | by LoubiTek | 2022

/*LINKS <- NO NO NO, This "LINKS" is note Z0ro, What ? You say: Z0ro but you want to say probably zér0. AH AH, URL(UN(ou une)REAL) or I(H!3rR)RL ? Read .. oh,  ZELDA
  
->  https://www.soundcloud.com/LoubiTek
->  https://www.deviantart.com/LoubiTek54
->  https://www.youtube.com/LoubiTek
  
THANKS for the L00King and list[]&Ying(-_-)Yang) n0rmally. Test my own SKETCH GAME-based true L!F3 st0ry :D because hum Vandalisme All C0nn3ctick_Ethernet is <Thi3f> Hell Yeah ! I have this idea with un big playsure.
Y0U ARE READY ? 
GO ! Yeah, you need scroll_y with pmouseY | 0K :p , juste un t(R)ip.
*/

// WTF LICENCE
/*

*/

// SETTINGS
void settings()
{
  size(W,H,ENGINE); 
  print("WIDTH:"+W,"HEIGHT:"+H,"ENGINE:"+ENGINE+"|","ANTIALIASING:"+AA,"FRAMERATE:"+FPS,"COLORMODE:"+COLORMODE+"|  ");
}

// LOAD Dingue
void LOADing()
{
  // FONT
  FONT();
  
  // SOUNDS
  SOUNDS();
  
  // IMAGES
  IMAGES();
  
  // MODELS
  MODELS();
}

// SETUP
void setup()
{
  cursor(WAIT);
  /*
  mov = new Movie(this, "VIDEO/VID.mp4");
  mov.loop();
  
  webcam = new Capture(this,320,200);
  webcam.start();*/
  
  String[] WINDOW = {"2D view"};
  VIEW_2D SECOND_APP = new VIEW_2D();
  PApplet.runSketch(WINDOW, SECOND_APP);
  
  String[] WINDOW_ = {"1st Person View"};
  FPS_VIEW FUN_APP = new FPS_VIEW();
  PApplet.runSketch(WINDOW_, FUN_APP);
  
  camera3D = new Camera3D(this);
  camera3D.renderInterlaced();
  
  frameRate(FPS);
  background(BLACK);
  colorMode(COLORMODE);//,1,1,1,1); // Change HSB in RENDER
  CLOCK_AND_CALENDAR();
  
  minim = new Minim(this);
  LOADing();
  out = minim.getLineOut();
  out.setTempo(FPS); // BPM
  
  textFont(TYPO);
  textSize(SIZE_FONT);
  
  D00M = new Loom(this);
  pattern = new Pattern(D00M)
    .extend("0123")
    .loop();

  pattern.asColor(CGA_PAL[0],
                  CGA_PAL[1], 
                  CGA_PAL[2], 
                  CGA_PAL[3]);
  D00M.play();
  print("|  SKETCH by LoubiTek !  | "+minim+"|  D00M_Lone  |");
  //SHOW_FPS();
}

// DRAW
void draw()
{
  CONSOLE();
  SMOOTH();
  CAMERA();
  BORDER_CADRE();
  PLAY_SOUND();
  COORDINATES_MOUSE_AND_FPS();
  LIGHTS();//LIGHTS_();
  MATH_rd_ICE();
  VERTEX();
  AUTOR_PROGRAMMER();
  OLC(); JX9();
  SPHERE_AND_LINES();
  CROSS_LINES();
  POINTS_LOOPS();
  BOX_AND_SPHERE();
  MODEL3D();
  REWIND_SOUND();
  
  //VIDEO();
  //WEBCAM();
}
