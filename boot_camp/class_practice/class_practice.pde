void setup()
{
  String message = "Bootcamp week one is nearly over";
 
  println(message.toUpperCase());
  println(message.toLowerCase());
  println(message.length());
  println(message.substring(3,4));
  String[] part=match(message," day ");
  if (part!=null)
  {
    println("day found");
  }
  else
  {
    println("no match found");
  }
}
