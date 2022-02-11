byte[] SCALE = {1,64};

PShape LowArbreTestTextures;
PShape Pot;
PShape HeadStoneOfHell;
PShape Ovni;

void MODELS()
{
  LowArbreTestTextures = loadShape("OBJ/LowArbreTestTextures.obj");
  Pot = loadShape("OBJ/Pot.obj");
  HeadStoneOfHell = loadShape("OBJ/HeadStoneOfHell.obj");
  Ovni = loadShape("OBJ/Ovni.obj");
}

// MODEL3D
void MODEL3D()
{
  translate(W/2,H/2,P.z);
  scale(SCALE[1]/2+fov);
  
  //shapeMode(CENTER);
  float RX = 0, RY=0, RZ = 0;
  
  RX += -180;
  /*RY += 1;
  RZ += 1;*/
  
  rotateX(RX);
  //rotateY(RY);
  //rotateZ(RZ);
  
  scale(SCALE[0]);
  shape(LowArbreTestTextures);
  shape(Pot);
  
  
  /*scale(SCALE[0]);
  shape(HeadStoneOfHell);

  scale(SCALE[0]);
  shape(Ovni);*/
  
  
  if(RX>=1)
  {RX=0;}
  
  if(RY>=1)
  {RY=0;}
  
  if(RZ>=1)
  {RZ=0;}
}
