String[] stations;
int[]    availableBikes;
int[]    capacities;
 
void setup()
{
  size(600, 405);
  textAlign(LEFT,TOP);
  strokeWeight(0.5);
 
  String[] textLines = loadStrings("bikeShare.txt");
 
  // Create arrays for the data (ignoring header line).
  stations       = new String[textLines.length-1];
  availableBikes = new int[textLines.length-1];
  capacities     = new int[textLines.length-1];
 
  // Iterate and store station name, capacity and number of bikes for each station.
  for (int i=1; i<textLines.length; i=i+1)
  {
    // Split the line into values separated by a comma
    String[] values = split(textLines[i], ",");
 
    stations[i-1]       = values[1];
    availableBikes[i-1] = int(values[23]); // Column no. 23 is 9am
    capacities[i-1]     = int(values[4]);
  }
}
 
void draw()
{
  background(255);
  float yPos= 2;
 
  // Show the first 25 stations with number of bikes at 9:00am
  for (int i=0; i<25; i=i+1)
  {
    fill(0);
    text(stations[i], 5, yPos);
 
    noStroke();
    fill(50,50,200,100);
    rect(220,yPos+1,availableBikes[i]*8,14);
 
    noFill();
    stroke(0);
    rect(220,yPos+1,capacities[i]*8,14);
 
    yPos += 16;
  }
}
