float minradius;
float maxradius;
float radius;
float x;
float y;

void setup()
{
  size (300,300);
  background(100);
  
  minradius=10;
  maxradius=70;
  radius=random(minradius,maxradius);
  x=random(radius,300-radius);
  y=random(radius,300-radius);
}

void draw()
{
  background(100);
  fill(255);
  ellipse(x,y,radius,radius);
  if (mousePressed && dist(x,y,mouseX,mouseY)<=radius)
  {
    radius=random(minradius,maxradius);
    x=random(radius,300-radius);
    y=random(radius,300-radius);
    ellipse(x,y,radius,radius);
  }
}
