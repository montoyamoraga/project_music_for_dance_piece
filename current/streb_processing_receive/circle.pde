class Circle {
  float x = width/2;
  float y = height/2;
  float base = width/4;
  float initSize = base;
  float size = base;
  
  // calculations for growing heart over time 
  float targetSize = width-base;
  float timeToTarget = 300000; //5 mins in millis = 300000
  float inc = targetSize/timeToTarget;
  
  
  void growHeart() {
    int elapsedM = millis();
    initSize = base + (inc * elapsedM);    
  }
  
  void updateHeart() {
    // if beat grow heart, if no beat make smaller
    if (heartBeatLisa == 1) {    //CHANGE LISA/DANIELLE HERE
      size = lerp(size, initSize, 0.1);
    } else {
      size = lerp(size, initSize*0.5, 0.05);
    }
  }
  
  void drawHeart() {
    fill(255, 50);
    noStroke();
    ellipse(x, y, size, size);
    ellipse(x, y, size/2, size/2);
    ellipse(x, y, size/3, size/3);
  }

  void run() {
    updateHeart();
    drawHeart();
    growHeart();
  }
}

////Pulse bpm timing
//int pulseTimeCtr; // count time elapsed since last calculation
//int pulseCtr = 0; // count number of pulses
//int BPMTIMESPAN = 5000; // take bpm every 5 seconds 
//int ONEMINUTE = 60000;
//int lastPulseSensorVal;
//int currentBpm;
//int LOWBPM = 30; // reset for perfomer!!
//int HIGHBPM = 120; // reset for perfomer!!

//void calculateBpm() {
// int timeElapsed = millis() - pulseTimeCtr; 

// if (pulseSensor == 1 && lastPulseSensorVal == 0) {
//   pulseCtr++;
// }
  
// if (timeElapsed > BPMTIMESPAN) {
//  currentBpm = (ONEMINUTE/BPMTIMESPAN)*pulseCtr; 
//  currentBpm = limitBpm(currentBpm, LOWBPM, HIGHBPM);
//  pulseTimeCtr = millis();
//  pulseCtr = 0;
// }
// lastPulseSensorVal = pulseSensor;
//}


//// Keep bpm within range so all are drawn
//int limitBpm(int bpm, int lowerBound, int upperBound) {
//  if (bpm < lowerBound) {
//    bpm = lowerBound;
//  }
  
//  if (bpm > upperBound) {
//    bpm = upperBound;
//  }
  
//  return bpm;  
//}