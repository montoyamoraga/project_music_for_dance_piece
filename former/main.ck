//main interface for dance piece
//by aaron montoya-moraga
//v0.0.7

//variable for holding tempo in bpm and milliseconds
float bpm;
float msPerBeat;

//variables for storing the current ms, second and minute
//and current step
int currentMs;
int currentSecond;
int currentMinute;
int currentStep;

//variables for storing the duration in minutes and ms
float durationMinutes;
float durationMs;

//variable for number of steps
int numberSteps;

//variables for storing buffers of drum machine
SndBuf soundHihat;
SndBuf soundKick;
SndBuf soundSnare;

//function for setting up the number of steps
function void setSteps(int steps) {
    steps => numberSteps;
}

//function for initializing drum machine patterns
function void initDrumMachine() {
    [1, 0, 1, 0,  1, 0, 1, 0,  1, 0, 1, 0,  1, 0, 1, 0] @=> int patternHihat[];
    [1, 0, 0, 0,  1, 0, 0, 0,  1, 0, 0, 0,  1, 0, 0, 0] @=> int patternKick[];
    [0, 0, 1, 0,  0, 0, 1, 0,  0, 0, 1, 0,  0, 0, 1, 0] @=> int patternSnare[];
}

//function for setting up duration of the piece
function void setDuration(float minutes) {
  //setup duration in minutes
  minutes => durationMinutes;
  //setup duration in ms
  durationMinutes * 60 * 1000 => durationMs;
}

//function for setting up the bpm
function void setBpm(float newBpm) {
  //assigning the new bpm
  newBpm => bpm;
  //updating millis per beat
  60 * 1000 / bpm => msPerBeat;
}

function void initialize() {
  0 => currentMs;
  0 => currentSecond;
  0 => currentMinute;
  0 => currentStep;
}

//function for displaying current time
function void displayCurrentTime() {
  (currentMs / 1000) % 60 => currentSecond;
  currentMs / 1000 / 60 => currentMinute;
  if (currentSecond < 10) {
      <<< "current moment is " + currentMinute +  ":0" + currentSecond >>>;
  } else {
      <<< "current moment is " + currentMinute +  ":" + currentSecond >>>;
  }  
}

//function for loading the buffers of the drum machine
function void loadBuffers() {
    me.dir() + "/audio/hihat.wav" => soundHihat.read;
    me.dir() + "/audio/kick.wav" => soundKick.read;
    me.dir() + "/audio/snare.wav" => soundSnare.read;
}

//start the piece
<<< "start the piece">>>;

//set bpm
setBpm(120);
<<< bpm + " bpm, " + msPerBeat + " ms per beat" >>>;

//set duration to be 5 minutes
setDuration(5);
<<< "the piece lasts " + durationMinutes + " minutes, or " + durationMs + " ms">>>;

//set the number of steps
setSteps(16);

//initialize
initialize();

//init drum machine
initDrumMachine();

//while the current time is less than the duration of the piece
while(currentMs < durationMs) {
  <<< "step: " + currentStep >>>;
  //let time flow
  msPerBeat :: ms => now;
  (currentStep + 1) % 16 => currentStep;
   //advance ms according to beat
  //currentMs + msPerBeat => currentMs;
  //display current time
  displayCurrentTime();
  
}

//piece ended
<<< "piece ended" >>>;
