// Interactive Mandelbrot Set
// Inspired by Daniel Shiffman's Processing example.
// by Rick Companje - www.companje.nl - 6 december 2009

double xmin = -2.5;
double ymin = -2;
double wh = 4;
double downX, downY, startX, startY, startWH;
int maxiterations = 200;
boolean shift=false;

void setup() {
  size(300, 300);
  colorMode(HSB, 255);
  loadPixels();
}

void mousePressed() {
  downX=mouseX;
  downY=mouseY;
  startX=xmin;
  startY=ymin;
  startWH=wh;
}

void keyPressed() {
  if (keyCode==SHIFT) shift=true;
}

void keyReleased() {
  if (keyCode==SHIFT) shift=false;
}

void mouseDragged() {
  double deltaX=(mouseX-downX)/width;
  double deltaY=(mouseY-downY)/height;

  if (!shift) {
    xmin = startX-deltaX*wh;
    ymin = startY-deltaY*wh;
  } 
  else {
    if (wh>10) wh=10;
    if (deltaX>1) deltaX=1;
    wh = startWH-deltaX*wh;
    xmin = startX+deltaX*wh/2;
    ymin = startY+deltaX*wh/2;
  }
}

void draw() {
  double xmax = xmin + wh;
  double ymax = ymin + wh;

  // Calculate amount we increment x,y for each pixel
  double dx = (xmax-xmin) / width;
  double dy = (ymax-ymin) / height;

  double y = ymin;
  for (int j = 0; j < height; j++) {
    double x = xmin;
    for (int i = 0; i < width; i++) {
      double a = x;
      double b = y;
      int n = 0;
      while (n < maxiterations) { 
        double aa = a * a; 
        double bb = b * b; 
        b = 2.0 * a * b + y; 
        a = aa - bb + x; 
        if (aa + bb > 16.0) break;
        n++;
      }

      pixels[i+j*width] = (n==maxiterations) ? color(0) : color(n*16 % 255, 255, 255);

      x += dx;
    }
    y += dy;
  }
  updatePixels();
}
