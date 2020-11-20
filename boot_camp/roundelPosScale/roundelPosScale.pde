void setup()
{
  size(400,400);
  background(100);
}

void draw()
{
  background(100);
  roundel1(width/2,height/2,1);
  roundel1(width/4, height/4,2);
  roundel1(width*3/4,height/4,1);
  roundel1(width/4,height*3/4,1);
  roundel1(width*3/4,height*3/4,1);
}

void roundel1(float x,float y, int scale)
{
  noStroke();
  fill(242,124,5);
  ellipse(x,y,120*scale,120*scale);
  fill(17,8,116);
  ellipse(x,y,80*scale,80*scale);
  fill(255);
  ellipse(x,y,50*scale,50*scale);
  fill(155,12,12);
  ellipse(x,y,20*scale,20*scale);
}
