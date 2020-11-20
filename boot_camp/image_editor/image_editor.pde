PImage img;
boolean mouseDown = false;
   
void setup() {
  size(640, 480);
  img = loadImage("Holiday.png");
  image(img, 0, 0);
  strokeWeight(5);
  stroke(0);
}
   
void draw() {
  if (mouseDown) {
    line(pmouseX, pmouseY, mouseX,mouseY);
  }
}
   
void mousePressed() {
  mouseDown = true;
}
  
void mouseReleased() {
  mouseDown = false;  
}

void keyPressed() {
  if (key == 's')
  {
    save("drawing.jpg");
  }
  else if (key == '1')
  {
    stroke(0,0,0,255);
  }
  else if (key == '2')
  {
    stroke(0,255,0,30);
  }
  else if (key =='3')
  {
    stroke(255,0,255,200);
  }
  else if(key =='c')
  {
    image(img, 0, 0);
  }
}
