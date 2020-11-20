float seconds;
float minutes;
float hours;

void setup()
{
  size(300, 300);
  background(255);
  fill(255);
  
  seconds=0;
  minutes=0;
  hours=0;
}

void draw()
{
  background(255);
  if (frameCount%60==0 & frameCount>0)
  {
    seconds=seconds+1;
  }
  if (frameCount%3600==0 & frameCount>0 & seconds==60) 
  {
    seconds=0;
    minutes=minutes+1;
  }
  if (frameCount%216000==0 & frameCount>0)
  {
    minutes=0;
    hours=hours+1;
  }
  
  fill(0);
  text("seconds",20,20);
  text("minutes",20,50);
  text("hours",20,80);
  text(seconds,70,20);
  text(minutes, 70,50);
  text(hours, 70,80);
}