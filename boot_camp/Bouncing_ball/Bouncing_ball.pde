float xPos; // x-position
float yPos;
float vx; // speed in x-direction
float vy;
float radius;
float red;
float green;
float blue;
float counter;
 
void setup()
{
  size(400,300);
  fill(255,177,8);
  textSize(48);
 
  xPos = width/2;  // Initialise xPos to centre of sketch
  vx = -2; // Set speed in x-direction to -2 (moving left)
  yPos = height/2;
  vy = -1;
  radius=50;
  counter=0;
}
 
void draw()
{
  background(64);
 
  red=random(255);
  green=random(255);
  blue=random(255);
  
  xPos = xPos + vx;  // Change x-position on each redraw
  yPos = yPos + vy;
 
  ellipse(xPos,yPos,radius,radius);
  
  if ((xPos-radius)<=-25 || (xPos+radius)>=425)
  {
    vx=-vx;
    counter+=1;
  }
  
  if ((yPos-radius)<=-25 || (yPos+radius)>=325)
  {
    vy=-vy;
    counter+=1;
  }
  
  if (counter%3==0 && counter>0)
  {
    counter=0;
    fill(red,green,blue);
  }
  
}
