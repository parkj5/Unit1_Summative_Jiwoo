class Korea
{
PImage Kflag;
PImage KBackground;

Leave[]Tree= new Leave[30];

  Korea()
  {  
    KBackground= loadImage("Korea.jpg");
    KBackground.resize(1000,800);
    Kflag= loadImage("Korea.png");
    Kflag.resize(200,150);
    

    for(int i=0; i<20; i++)
  {
    Tree[i]= new Leave(random(0, 800), random(-400, -200), random(-1,1), random(3, 7));
   }  
  }
    
    void Render()
    {
      image(KBackground,500,400);
      image(Kflag,130,100);
      for(int i=0; i<20; i++)
      {
        Tree[i].Render();
      }
      if(keyPressed)
      {
        if(key=='s'||key=='S')
       {
        Scene=0;

       }
      }
    }
}