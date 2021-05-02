import processing.serial.*;

Serial myPort;    // Create object from Serial class
String sval="0";
int lf =10;       // LineFeed ASCII


void setup()
{
  size(600, 600);
  background(0);
  stroke(255);
  frameRate(30);

  println(Serial.list());
  String portName = Serial.list()[0]; // according to arduino connected serial device in the list
  myPort = new Serial(this, portName, 9600);
  myPort.clear();

}

void draw()

{
  background(0);

  while (myPort.available() > 0) {
    sval = myPort.readStringUntil(lf);
  }

  text("Received: " + sval, 10, 50);

}
