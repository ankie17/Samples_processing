String word1 = "saxophone";
String word2 = "trombone";
String word3 = "harpsichord";
String word4 = "glockenspiel";
String word5 = "harmonica";
float used;
int number;
String word;
int letters;
int step;
int revealed;
boolean flag;

void setup()
{
  size(600,500);
  background(100);
  number=int(random(1,5));
  println(number);
  if (number==1)
  {
    word=word1;
  }
  if (number==2)
  {
    word=word2;
  }
  if (number==3)
  {
    word=word3;
  }
  if (number==4)
  {
    word=word4;
  }
  if (number==5)
  {
    word=word5;
  }
  println(word);
  letters=word.length();
  step=0;
  used=290;
  revealed=0;
  flag=false;
}

void draw()
{
  background(100);
  fill(255);
  strokeWeight(4);
  rect(10,10,300,480);
  textSize(15);
  text("Number of letters: "+letters, 320,150);
  rect(320,170,260,50);
  textSize(15);
  text("Used letters:",320,250);
  rect(320,280,260,150);
  fill(0);
  
  while (step!=9)
  {
    if (keyPressed)
    {
       for (int i=0; i<letters;i=i+1)
       {
         if (key==word{i})
         {
           reveal letter;
           flag=true;
           revealed+=1;
           if (revealed==letters)
           {
             frameRate(0);
             text("end game, u won",width/2,height/2);
           }
         }  
       }
       if (flag!=true)
       {
         step+=1;
         if (step==1)
         {
           line(30,470,285,470);  //base of gibbet
         }
         if (step==2)
         {
           line(60,470,60,40);  //upright of gibbet
         }
         if (step==3)
         {
           line(60,40,200,40);  //crosspiece of gibbet
         }
         if (step==4)
         {
           line(200,40,200,70);  //noose
           ellipse(200,80,30,30); //head
         }
         if (step==5)
         {
           ellipse(200,140,40,90); //body
         }
         if (step==6)
         {
           line(195,180,180,230);  //left leg
         }
         if (step==7)
         {
           line(205,180,220,230); //right leg
         }
         if (step==8)
         {
           line(195,110,150,130); //left hand
         }
         if (step==9)
         {
           line(205,110,250,130); //right hand
           frameRate(0);
           text("end game, u lost",width/2,height/2);
         }  
       }
       flag=false
       text(key,330,used);
       used+=10;
    } 
  }
}
