PImage img;
 
void setup() {
  size(720, 480);
  img = loadImage("photo.jpg");
  img.resize(img.width/4, img.height/4);
}
 
void draw() 
{
  tint(255, 0, 255); //magenta
  image(img, 0, 0);
  tint(0, 255, 0);  //green
  image(img, img.width, 0);
  tint(255, 255, 0);  //yellow
  image(img, 0, img.height);
  tint(0, 255, 255); //cyan
  image(img, img.width, img.height);
  tint(0, 0, 255); //blue
  image(img, 0, img.height*2);
  tint(255, 0, 0); //red
  image(img, img.width, img.height*2);
  filter(BLUR,constrain( mouseX / 100,0,10));
  filter(POSTERIZE, constrain(mouseY / 100,2,10));
}
