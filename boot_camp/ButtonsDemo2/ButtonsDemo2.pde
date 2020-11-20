Button[] buttons=new Button[5];
float step;

void setup()
{
  size(1000,1000);
  step=0;
  for (int i=0; i<5; i=i+1)
  {
    buttons[i]=new Button(step);
    step=step+20;
  }
  for (int i=0; i<5; i=i+1)
  {
    buttons[i].display();
    buttons[i].step=step;
  }
}

void draw()
{
  
}
