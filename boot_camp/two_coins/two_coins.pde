float randomNumber;
float randomNumber2;
 
void setup()
{
  size(400, 400);
  fill(0);
  textSize(48);
  textAlign(CENTER);
 
  randomNumber = random(2.0);
  randomNumber = random(2.0);
}
 
void draw()
{
  background(230, 255, 230);
 
  String message;
  if (randomNumber < 1.0 && randomNumber2 < 1.0) 
  {
    message = "TWO TAILS";
  } 
  else if(randomNumber < 1.0 && randomNumber2 <2.0)
  {
    message = "MIXED1";
  }
  else if(randomNumber < 2.0 &&  randomNumber2 < 1.0)
  {
    message = "MIXED2";
  }
  else
  {
    message = "TWO HEADS";
  }
  text(message, width/2, height/2);
}