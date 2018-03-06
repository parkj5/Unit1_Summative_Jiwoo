class Japan
{  
  Pedal Firstpedal;
  PImage Jflag;
  PImage JBackground;

  Pedal[] Flower=new Pedal[20];

  Japan()
  {
    JBackground= loadImage("Japan.jpg");
    JBackground.resize(1000, 800);
    Jflag= loadImage("Japan.png");
    Jflag.resize(200, 150);    


    for (int i=0; i<20; i++)
    {
      Flower[i]= new Pedal(random(-500,0), random(-200, -100), random(5, 8), random(2, 5));
    }
  }

  void Render()
  {
    background(0, 0);
    image(JBackground, 500, 400);
    image(Jflag, 130, 100); 
    if (dist(100, 130, mouseX, mouseY)<100)
    {
      for (int i=0; i<20; i++)
      {
        Flower[i].Render();
      }
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