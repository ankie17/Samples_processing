float x;
float y;
float step;

void setup()
{
  size(400,400);
  background(255);
  fill(255);
  
  x=width/2;
  y=height/2;
  step=5;
}

void draw()
{
  background(255);
  fill(0);
  rect(x-30,y-30,60,60);
  if (keyPressed)
  {
    if (key=='d')
    {
      x=x+step;
      if (x>=370)
      {
        x=370;
      }
    }
    else if (key=='a')
    {
      x=x-step;
      if (x<=30)
      {
        x=30;
      }
    }
    else if (key=='w')
    {
      y=y-step;
      if (y<=30)
      {
        y=30;
      }
    }
    else if (key=='s')
    {
      y=y+step;
      if (y>=370)
      {
        y=370;
      }
    }
  }
  fill(250,38,38);
  textSize(15);
  text("x: "+x,330,375);
  text("y: "+y,330,390);
}
