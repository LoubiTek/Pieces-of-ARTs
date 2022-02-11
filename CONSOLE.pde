Textarea DEBUG_LOG;
Println CONSOLE;

// CONSOLE and DEBUG
void CONSOLE()
{
  boolean DebugsMode = false;
  String[] ReadText;
  PrintWriter Errors;
  
  // Read Informations Text
  ReadText = loadStrings("README.txt");
  for (int Infos = 0; Infos < ReadText.length; Infos++)
  {
    println(ReadText[Infos]);
  }
  
  // Write Errors Text
  if (DebugsMode == true);
  {
    Errors = createWriter("/DetectErrors/DEBUG_LOG.txt");
    
    Errors.flush();
    
    Errors.println("...|DEBUG LOG|...");
    Errors.println("RENDER");
    Errors.println("W:"+W);
    Errors.println("H:"+H);
    Errors.println("ENGINE:"+ENGINE);
    Errors.println("ANTIALIASING:"+AA);
    Errors.println("FRAMERATE:"+FPS);
    Errors.println("COLORMODE:"+COLORMODE);
    
    Errors.println("C.x:"+C.x);
    Errors.println("C.y:"+C.y);
    Errors.println("C.z:"+C.z);
    
    Errors.println("M[0].x:"+M[0].x);
    Errors.println("M[0].y:"+M[0].y);
    Errors.println("M[0].z:"+M[0].z);
    
    Errors.close();
  }
  
  // SHOW CONSOLE LOG
  /*DEBUG_LOG = cp5.addTextarea("DEBUG")
                  .setPosition(100, 100)
                  .setSize(200, 200)
                  .setLineHeight(12)
                  .setColor(color(255))
                  .setColorBackground(color(0))
                  .setColorForeground(color(255));*/
  //CONSOLE = cp5.addConsole(DEBUG_LOG); // ADD THIS LINE FOR DELETE the RED WARNING MESSAGE ALERTE in LOOP but ADD THIS FOR SHOW DEBUG LOG IN THE SCENE
  
  // PRINTLN INSIDE CONSOLE
  println("...|DEBUG LOG|...");
  println("RENDER");
  println("W:"+W);
  println("H:"+H);
  println("ENGINE:"+ENGINE);
  println("ANTIALIASING:"+AA);
  println("FRAMERATE:"+FPS);
  println("COLORMODE:"+COLORMODE);
    
  println("C.x:"+C.x);
  println("C.y:"+C.y);
  println("C.z:"+C.z);
    
  println("M[0].x:"+M[0].x);
  println("M[0].y:"+M[0].y);
  println("M[0].z:"+M[0].z);
}
