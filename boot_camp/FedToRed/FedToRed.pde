int red;

void setup()
{
  size(400,400);
  background(100);
  
  red=0;
}

void draw()
{
  background(100);
  fill(red, 0, 0);
  rect(100, 100, 60, 60);
  if (keyPressed)
  {
    if (key=='r')
    {
      red=red+10;
      if (red>=255)
      {
        red=255;
      }
    }
    else if (key=='b')
    {
      red=red-10;
      if (red<=0)
      {
        red=0;
      }
    }
  }
}
