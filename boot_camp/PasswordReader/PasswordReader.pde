PFont f;
String welcomeMessage = "Type the password...";
String successMessage = "Welcome. Shall we play a game?";
String retryMessage = "Your password is incorrect. Please try again";
String currentMessage;
String password;
String UserString;
 
void setup() 
{
  size(400, 50);
  f = createFont("Arial", 16, true);
  textFont(f, 16);
  currentMessage = welcomeMessage;
  password="mo";
  UserString="";
}
 
void draw() 
{
  background(100);
  text(currentMessage, 20, 20);
}

void keyPressed() 
{
  if (keyPressed && keyCode!=ENTER && keyCode!=DELETE)
  {
    UserString+=key;
  }
  if (keyPressed && keyCode==BACKSPACE && UserString!="")
  {
    UserString = UserString.substring(0, UserString.length()-2);
  }
  if (keyPressed && keyCode==ENTER)
  {
    if (password.equals(UserString))
    {
      currentMessage = successMessage;
    }
    else
    {
      currentMessage = retryMessage;
    }
  }
}
