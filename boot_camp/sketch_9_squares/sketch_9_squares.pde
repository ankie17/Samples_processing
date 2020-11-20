void setup()
{
  size(700,200);
  background(255);
}

void draw()
{
  background(255);
  fill(0);
  float x=20;
  for(int i=0; i<9; i=i+1)
  {
    rect (x,20,50,50);
    x=x+70;
    println(i);
  }
}
