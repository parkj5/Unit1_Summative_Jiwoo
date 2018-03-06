class India
{
  PImage Iflag;
  PImage IBackground;
  
  Light[]Shine= new Light[20];
  
  India()
  {
  IBackground= loadImage("IBackground.jpg");
  IBackground.resize(1000,800);
  Iflag=loadImage("India.png");
  Iflag.resize(200,150);
    for (int i=0; i<20; i++)
    {
      Shine[i]= new Light(random(0,1000), random(100, 1100), random(1, 2));
    }
  }
  void Render()
 {
   background(0);
   image(IBackground, 500, 400);
   image(Iflag, 130, 100); 
   for(int i=0; i<20; i++)
      {
        Shine[i].Render();
      }
       if (keyPressed)
    {
      if (key=='s'||key=='S')
      {
        Scene=0;
      }
    }
 }
 
}