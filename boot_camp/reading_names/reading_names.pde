String[] names;
 
void setup()
{
  size(300,500);
  fill(0);
  textSize(18);
 
  names = loadStrings("names.txt");
}
 
void draw()
{
  background(255);
  float yPos = 25;
 
  for (String name : names)
  {
    text(name,20,yPos);
    yPos = yPos+28;
  }
}
