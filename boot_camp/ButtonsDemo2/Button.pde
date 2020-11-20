class Button
{
  boolean on;
  float centerX;
  float centerY;
  float step;
  
  
  Button(float step)
  {
    on=true;
    centerX=20;
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
    ellipse(centerX+step, centerY, 30, 30);
  }
  
}
