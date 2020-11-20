PImage img;
int s = 25;
 
void setup() {
  size(640, 480);
  img = loadImage("photo.jpg");
  rectMode(CENTER);
  background(127);
}
 
void draw() {
  color c = img.get(mouseX, mouseY);
  float b =  (0.3 * red(c) + 0.6 * green(c) + 0.1 * blue(c))/10;
  fill(c);
  ellipse(mouseX, mouseY, b,b);
}

void keyPressed()
{
  if (key=='s' & g.stroke)
  {
    noStroke();
  }
  else if(key=='s' & g.stroke==false)
  {
    stroke(0);
  }
}
