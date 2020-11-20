void setup()
{
  size(400,400);
  background(100);
}

void draw()
{
  background(100);
  roundel1(width/2,height/2);
  roundel1(width/4, height/4);
  roundel1(width*3/4,height/4);
  roundel1(width/4,height*3/4);
  roundel1(width*3/4,height*3/4);
}

void roundel1(float x,float y)
{
  noStroke();
  fill(242,124,5);
  ellipse(x,y,120,120);
  fill(17,8,116);
  ellipse(x,y,80,80);
  fill(255);
  ellipse(x,y,50,50);
  fill(155,12,12);
  ellipse(x,y,20,20);
}
