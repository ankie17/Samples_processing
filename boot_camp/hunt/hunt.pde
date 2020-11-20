float x;
float y;

void setup()
{
  size(200,200);
  background(0);
  fill(0);
  
  x=random(30,170);
  y=random(30,170);
}

void draw()
{
  background(0);
  
  if (dist(x,y,mouseX,mouseY)<=30)
  {
    fill(255);
  }
  
  if (frameCount==300)
  {
    fill(250,38,38);
    textSize(10);
    text("GAME OVER",70,90);
    fill(255);
    frameRate(0);
  }
  ellipse(x,y,30,30);
  
}
