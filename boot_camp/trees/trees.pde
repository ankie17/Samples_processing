color leafColour,trunkColour;
 
void setup()
{
  size(800, 500);
  noStroke();
  leafColour  = color(82, 144, 97);
  trunkColour = color(95, 57, 26);
  
}
 
void draw()
{
  background(157, 238, 247);   // Sky
  fill(156, 245, 170);         // Ground.
  rect(0, height/2, width, height/2);
  float yPos=180;
  float x=0;
  for (int i=0; i<3; i=i+1)
  {
    for (float xPos=50; xPos<width-50; xPos=xPos+100)
    {
      drawTree(xPos+x,yPos);
    }
    yPos=yPos+100;
    x=x+20;
  }
}
 
// Draws a single tree at the given position.
void drawTree(float treeX, float treeY)
{
  fill(trunkColour);
  rect(treeX, treeY, 20, 70);
  fill(leafColour);
  ellipse(treeX+10, treeY-30, 70, 90);
}
