class Button
{
  boolean on;
  float centerX;
  float centerY;
  
  
  Button()
  {
    on=true;
    centerX=width/2;
    centerY=height/2;
  }
  
  void display()
  {
    if (on==true)
    {
      fill(102,162,234);
    }
    else
    {
      fill(237,231,29);
    }
    noStroke();
    ellipse(centerX, centerY, 30, 30);
  }
  
}
