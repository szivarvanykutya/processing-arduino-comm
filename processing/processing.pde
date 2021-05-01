import processing.serial.*;

Serial myPort;  // Create object from Serial class
float val;     // Data received from the serial port
String sval;

void setup()
{
  size(600,600);
  background(0);
  stroke(255);

  println(Serial.list());
  String portName = Serial.list()[0]; // according to arduino connected serial device in the list
  myPort = new Serial(this, portName, 9600);
}

void draw()

{
  background(0);
  if ( myPort.available() > 0) 
  {  // If data is available,
  //val = myPort.read();
  sval =myPort.readString();
  print(float(sval));
  rect(200,200,float(sval),float(sval));
  } 
//println(val);
delay(600);
}
