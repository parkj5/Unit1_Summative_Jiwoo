import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer Ksong;
AudioPlayer Jsong;
AudioPlayer Isong;



Korea k;
Japan j;
India i;

PImage Map;
PImage Mapicon;

int Scene= 0;
int iX=480;
int iY=360;
int kX=725;
int kY=230;
int jX=770;
int jY=230;



void setup()
{
  size(1000, 800);
  imageMode(CENTER);
  rectMode(CENTER);
  Map= loadImage("Map.png");
  Map.resize(800, 800);
  Mapicon= loadImage("Mapicon.png");
  Mapicon.resize(50, 50);  
  j= new Japan();
  k= new Korea();
  i= new India();

 minim = new Minim(this);
  Ksong= minim.loadFile("Ksong.mp3");
  Isong= minim.loadFile("Isong.mp3");
  Jsong= minim.loadFile("Jsong.mp3");
}


void draw()
{
  background(255);
  image(Map, 500, 400);
  image(Mapicon, iX, iY);
  image(Mapicon, kX, kY);
  image(Mapicon, jX, jY);
  fill(0,0,0);
  textSize(50);
  text("The place where I lived", 200, 100);


  if (Scene==1)
  {
    k.Render();
    Ksong.play();
  }
  else
  {
    Ksong.pause();
  }
  if (Scene==2)
  {
    j.Render();
    Jsong.play();
  }
  else
  {
    Jsong.pause();
  }
  if (Scene==3)
  {
    i.Render();
    Isong.play();
  }
  else
  {
    Isong.pause();
  }
  }





void mouseReleased()
{

  if (dist(mouseX, mouseY, kX, kY)<25)
  {
    Scene=1;

  }
  if (dist(mouseX, mouseY, jX, jY)<25)
  {
    Scene=2;
  }
  if (dist(mouseX, mouseY, iX, iY)<25)
  {
    Scene=3;
  }
}

 