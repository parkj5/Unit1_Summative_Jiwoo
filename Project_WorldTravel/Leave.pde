class Leave
{
  PImage Leaves;
  float LX;
  float LY;
  float LXspeed;
  float LYspeed;
  
  Leave()
  {
    Leaves= loadImage("Leaves4.png");
    Leaves.resize(150,150);
    LX= 500;
    LY= 300;
    LXspeed=0;
    LYspeed=12;
  }
  Leave(float _LX, float _LY, float _LXspeed, float _LYspeed)
  {
    Leaves= loadImage("Leaves4.png");
    Leaves.resize(150,150);
    LX=_LX;
    LY=_LY;
    LXspeed= _LXspeed;
    LYspeed=_LYspeed;
  }
  void Render()
  { 
    image(Leaves, LX, LY);
    LY=LY+LYspeed;
    LX=LX+LXspeed;
    if (LY>900)
    {
      LY=(int)random(-500, -100);
      LX=(int)random(0, 1000);
      LXspeed=0;
    }
    if(LX<-100 ||LX>1100)
    { 
      LY=(int)random(-500, -100);
      LX=(int)random(0, 1000);
      LXspeed=0;
    }
    if (keyPressed)
    {
      if (key== 'd' || key== 'D')
      {
        LXspeed= LXspeed+2;
      }
      if (key== 'a')
      {
        LXspeed= LXspeed-2;
      }
    }
  }
}