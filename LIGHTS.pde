// LIGHTS
void LIGHTS()
{
  lights();
  
  directionalLight(0,0,255,P.x,P.y,P.z);
  
  pointLight(0,255,0,P.x,P.y,P.z);
  
  //spotLight(255,0,0,P.x,P.y,P.z,0,0,0,OR,W-H);
  
  //ambientLight(255,0,0);
  
  //emissive(0,255,0);
  
  //shininess(255);
  
  ambient(255,0,0);
  
  //specular(255,0,0);
  
  //lightFalloff(1.0, 0.001, 0.0);
}
