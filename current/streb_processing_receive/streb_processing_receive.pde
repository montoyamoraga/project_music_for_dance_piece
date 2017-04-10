//streb piece
//by aaron montoya-moraga, lisa jamhoury
//commisioned by lisa jamhoury and aaron parsekian
//april 2017
//v0.0.3

Circle circle;

//setup() runs once at the beginning
void setup() {
  //setup canvas size
  size(1400, 1050, P3D);
  //size(700, 500, P3D);
  
  //background color
  background(0);
  
  //setup osc
  oscSetup(5501);
  
  //circles = new ArrayList<Circle>();
  circle = new Circle(); 
  
}

//draw() runs after setup(), on a loop
void draw() {
  // background
  fill(0,10);
  rect(0,0,width,height);

  // run heart
  circle.run();
}