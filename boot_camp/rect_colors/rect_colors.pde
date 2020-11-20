void setup()
{
  size(255, 255);
  background(254,232,134);
  fill(203,118,122);
}

void draw()
{
  background(254,232,134);
  fill(mouseX,mouseY, 0);
  rect(mouseX, mouseY,120, 80);
}