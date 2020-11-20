void setup()
{
  size(400,400);
  background(100);
}

void draw()
{
  background(100);
  roundel1();
}

void roundel1()
{
  noStroke();
  fill(242,124,5);
  ellipse(width/2,height/2,80,80);
  fill(17,8,116);
  ellipse(width/2,height/2,60,60);
  fill(255);
  ellipse(width/2,height/2,40,40);
  fill(155,12,12);
  ellipse(width/2,height/2,20,20);
}
