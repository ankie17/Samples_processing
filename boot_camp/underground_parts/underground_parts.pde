float x;
float y;

void setup()
{
  size(300,200);
  background(0);
  fill(0);
  x=random(300);
  if (x>245)
  {
    x=245;
  }
  else if (x<55)
  {
    x=55;
  }
  y=random(200);
  if (y>250)
  {
    x=250;
  }
  else if (x<50)
  {
    x=50;
  }
}

void draw()
{
  background(0);
  
  if ((dist(x,y,mouseX,mouseY)<50) && (mouseY<(y-10) || mouseY>(y+10)))
  {
    fill(255,0,0);
  }
  else
  {
    fill(255);
  }
  ellipse(x,y,100,100);
  
  if (mouseX>(x-55) && mouseX<(x+55) && mouseY>(y-10) && mouseY<(y+10))
  {
    fill(0,0,255);
  }
  else
  {
    fill(255);
  }
  
  rect(x-55,y-10,110,20);
 
}
