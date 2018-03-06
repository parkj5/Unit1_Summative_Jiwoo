class Light
{
  float lX;
  float lY;
  float lYspeed;
  float tX;
  PImage Lights;
  
  Light()
  {
  Lights= loadImage("Light.png");
  Lights.resize(100,100);
  lX= 400;
  lY= 800;
  lYspeed= 2;
  }
  
  Light(float _lX, float _lY, float _lYspeed)
  {
    Lights= loadImage("Light.png");
    Lights.resize(100,100);
    lX=_lX;
    lY=_lY;
    lYspeed= _lYspeed;
  }
  
    void Render()
  {
  tint(255, tX);
  image(Lights,lX,lY);
  tX=lY-255;
  tint(255,255);
  
  lY=lY-lYspeed;
  if(lY<-100)
  {
    lY=(int)random(800,1000);
    lX=(int)random(0,1000);
  }
  }
}