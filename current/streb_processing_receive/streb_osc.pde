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

//declare variables for storing heartbeat of danielle and lisa
int heartBeatDanielle = 0;
int heartBeatLisa = 0;

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

  //check if header matches /danielle/heartbeat
  if (newMessage.checkAddrPattern("/danielle/heartbeat")) {
    heartBeatDanielle = newMessage.get(0).intValue();
    println("danielle: " + heartBeatDanielle);
    //check if header matches /lisa/heartbeat
  } else if (newMessage.checkAddrPattern("/lisa/heartbeat")) {
    heartBeatLisa = newMessage.get(0).intValue();
   // println("lisa: " + heartBeatLisa);
  }
}