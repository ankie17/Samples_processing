float x;

void setup()
{
  size(300, 300);
  background(255);
  fill(255);

}

void draw()
{
  x=x+1;
  background(255);
  fill(0);
  ellipse(width/2-x,height/2-x,60,60);
  fill(0,255,0);
  ellipse(width/2+x,height/2+x,60,60);
  fill(255,0,0);
  ellipse(width/2+x,height/2-x,60,60);
  fill(0,0,255);
  ellipse(width/2-x,height/2+x,60,60);
}