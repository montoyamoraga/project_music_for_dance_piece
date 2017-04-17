//streb piece
//by aaron montoya-moraga, lisa jamhoury
//commisioned by lisa jamhoury and aaron parsekian
//april 2017
//v0.0.3

Circle circle;
int startTime;
boolean timeStarted = false;
int state = 0;

//setup() runs once at the beginning
void setup() {
  //setup canvas size
  size(1400, 1050, P3D);
  //size(350, 250, P3D);
  
  //background color
  background(0);
  
  //setup osc
  oscSetup(5501);
  
  //circles = new ArrayList<Circle>();
  circle = new Circle(); 
  
}

//draw() runs after setup(), on a loop
void draw() {
  if (state == 1) run();
  if (state == 2) blackOut();
}

void keyPressed() {
  if (key == '1') {
    println("hello");
    state = 1;
    
  }
  
  if (key == '2') {
    println("goodbye");
    state = 2;
    
  }
}

void mousePressed() {
  if (heartBeatLisa == 0) {
    heartBeatLisa = 1;
  } else {
    heartBeatLisa = 0;
  }
}


void run() {
  
  // set start time once 
  if (!timeStarted) {
    timeStarted = true;
    startTime = millis();
  }
  
  // background
  fill(0,10);
  rect(0,0,width,height);

  // run heart
  circle.run();
}

void blackOut() {
  background(0);
}