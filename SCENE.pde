float OR = TWO_PI/(1+(1+sqrt(5))/2);

// PERSONAL COMPUTER
PVector P = new PVector(0,0,0); // HELLO !
//                                                                                                                                 / \
//                                                                                                                                /   \
//                                                                                                                               /_____\________________________
//                                                                                                                              /       \                       \
//                                                                                                                             /         \                       \
PVector C = new PVector(0,0,0); // L00K in AUDIO for ENIGMATIC ALPHANUMER(t)ICK&MORT(Y)...Um, that ok the d0_0r is -=> HERE ! [o][0]_[0][o]                       \
//                                                                                                                            -------------  -------- -------------
//                                                                                                                           |              |         \             \
//                                                                                                                           |      O       |          \             \
//                                                                                                                           |              |           \             \
//                                                                                                                           |      L       |            \             \
//                                                                                                                           |              |             \_____________\
//                                                                                                                           |      C       |             |              |
//                                                                                                                           |              |             |   FRUSTRUM   |
//                                                                                                                           |I LOVE YOU <3 |             |              |
//                                                                                                                            -------------  -------------|------------- |

PVector[] M = {new PVector(0,0,0)}; // M for MATHS and Tricks
void MATH_rd_ICE()
{
  M[0].x = W/2; M[0].y = H/2; M[0].z += P.z;
  
  for(byte i=-127; i<1; i++)
  {
    float r = random(WHITE);
    strokeWeight(1);
    stroke(r);
    point(i, r);
    for(byte j=-1; j<1; j++)
    {
      for(byte k=-1; k<1; k++)
      {
        strokeWeight(1);
        stroke(BLACK);
        point(M[0].x+i*random(W/2,H/2),M[0].y+j*random(W/2,H/2),M[0].z+k*random(W/2,H/2));
      }
    }
  }
}

// BORDER CADRE
void BORDER_CADRE()
{
  cursor(CROSS);
  
  background(bg);
  //background(0);
  OR += DEAD;
  strokeWeight(.1);
  
  alpha++;
  stroke(RANDOM++,alpha);
  if(alpha>=255)
  {alpha=0;}
  
  noFill();
  rect(0,0,W,H);
  
  if(OR>=360)
  {OR=-360;}
  
  ellipseMode(CENTER);
  scale(SCALE[0]);
  image(OLC_PGE,M[0].x++,M[0].y,W/2,H/2);
  if(M[0].x>=1)
  {M[0].x=0;}
  
  pattern.rect(0, 0, W, H);
}

// SPHERE AND LINES
void SPHERE_AND_LINES()
{
  translate(W/2,H/2);
  scale(1);
  
  rotate(radians(OR));
  
  sphereDetail(FPS);
  strokeWeight(.1*P.z);
  stroke(BLACK);
  //noFill();
  sphere(W/2+H/2);
  
  pushMatrix();
  rotateZ(radians(OR));
  
  strokeWeight(1);
  stroke(RED);
  line(-W/2,0,0,0);
  line(W/2,0,0,0);
  
  stroke(GREEN);
  line(0,-H/2,0,0);
  line(0,H/2,0,0);
  
  stroke(BLUE);
  line(-W/2,-H/2,0,0);
  line(-W/2,H/2,0,0);
  line(W/2,-H/2,0,0);
  line(W/2,H/2,0,0);
  popMatrix();
}

// CROSS LINES
void CROSS_LINES()
{
  strokeWeight(1);
  stroke(WHITE);
  
  line(-W/2,0,0,0);
  line(W/2,0,0,0);
  
  line(0,-H/2,0,0);
  line(0,H/2,0,0);
}

// VERTEX
void VERTEX()
{
  P.x += DEAD;
  P.y += DEAD;
  P.z += DEAD*random(W,H);
  
  pushMatrix();
  
  rotateX(sin(P.x));
  rotateY(cos(P.y));
  rotateZ(radians((P.z)));
  
  beginShape(TRIANGLE_FAN);
  {
    translate(W,H,P.z);
    strokeWeight(1);
    stroke(BLACK++);
    fill(RANDOM++);
    
    vertex(-P.x,-P.y,P.z);
    vertex(-P.x,P.y,P.z);
    vertex(0,0,0);
    vertex(P.x,-P.y,P.z);
    vertex(P.x,P.y,P.z);
    
    if(P.x>=W/2)
    {P.x=0;}
    
    if(P.y>=H/2)
    {P.y=0;}
    
    if(P.z>=EZ)
    {P.z=0;}
  }
  endShape(CLOSE);
  popMatrix();
}


// POINTS_LOOPS
void POINTS_LOOPS()
{
  float PHI = 1 + sqrt((5)/2);
  P.z += (FPS/2)*PHI;
  
  for(byte i=-1; i<=1; i++)
  {
    for(byte j=-1; j<=1; j++)
    {
      for(byte k=-1; k<=1; k++)
      {
        strokeWeight(OR);
        stroke(RED+BLUE,ALPHA);
        point(-P.x+i,-P.y+j,P.z+k);
        point(-P.x+i,P.y+j,P.z+k);
        point(P.x+i,-P.y+j,P.z+k);
        point(P.x+i,P.y+j,P.z+k);
        
        stroke(RED+GREEN,ALPHA);
        circle(-C.x+i,-C.y+j,C.z*k);
        circle(-C.x+i,C.y+j,C.z*k);
        circle(C.x+i,-C.y+j,C.z*k);
        circle(C.x+i,C.y+j,C.z*k);
        
        if(P.z>=W-H)
        {P.z=-W+H;}
      }
    }
  }
}


// BOX_AND_SPHERE
void BOX_AND_SPHERE()
{sphereDetail(FPS);
  
  strokeWeight(1);
  stroke(BLACK);
  fill(WHITE,alpha);
  box(W+H);
  
  pushMatrix();
  translate(-256,0);
  strokeWeight(1);
  stroke(BLACK,ALPHA);
  sphere(90);
  popMatrix();
  
  pushMatrix();
  translate(256,0);
  sphere(90);
  popMatrix();
}
