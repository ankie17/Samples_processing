void setup()
{
  size(600, 400);
  background(254, 232, 134);
  fill(203,118,122);
  
}

void draw()
{
  background(254, 232, 134);
  
  fill(245,64,64);
  //ellipse(mouseX, mouseY, 300, 300);
  ellipse(mouseX,mouseY,mouseX+150,mouseX+150);
  
  fill(255,255,255);
  //ellipse(mouseX,mouseY,180,180);
  ellipse(mouseX,mouseY,mouseX+50,mouseX+50);
  
  fill(108,22,247);
  //rect(100,170,400,70);
  rect(mouseX-200,mouseY-30,400,70);
  //rect(mouseX-200,mouseY-30,mouseX+100,mouseY+70);
  
  fill(mouseX,mouseY,0);
  textSize(48);
  text("UNDERGROUND", mouseX-185,mouseY+20);
}