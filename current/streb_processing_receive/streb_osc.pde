//import osc library
import netP5.*;
import oscP5.*;

//declare osc handler
OscP5 oscHandler;

//declare array for storing ip addresses
//of computers that receive osc from max
NetAddress[] addresses = new NetAddress[2];

//declare ports for send and receive osc
int portSend;
int portReceive;

//declare function for osc setup
void oscSetup(int setPortReceive) {
  
  //set port for receiving
  portReceive = setPortReceive;
  
  //receive object
  //start oscP5 handler object
  oscHandler = new OscP5(this, portReceive);
  
  println("yo " + portReceive);
}

//function for handling new osc event
//this function is part of the oscP5 library
void oscEvent(OscMessage newMessage) {
  println("hey new event " + newMessage);
}