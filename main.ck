//main interface for dance piece
//by aaron montoya-moraga
//v0.0.2

//variable for holding tempo in bpm and milliseconds
float bpm;
float msPerBeat;

//variable for storing the current ms, second and minute
int currentMs;
int currentSecond;
int currentMinute;

//variables for storing the duration in minutes and ms
float durationMinutes;
float durationMs;

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
  bpm * 60 * 1000 => msPerBeat;
}

function void initialize() {
  0 => currentMs;
  0 => currentSecond;
  0 => currentMinute;
}

function void displayCurrentTime() {
  currentMs / 1000 % 60 => currentSecond;
  currentMs / 1000 / 60 => currentMinute;
  <<< "current moment is " + currentMinute +  ":" + currentSecond >>>;
}

//start the piece
<<< "start the piece">>>;

//set bpm
setBpm(90);
<<< bpm + " bpm, " + msPerBeat + " ms per beat" >>>;

//set duration to be 5 minutes
setDuration(5);
<<< "the piece lasts " + durationMinutes + " minutes, or " + durationMs + " ms">>>;

//while the current time is less than the duration of the piece
while(currentMs < durationMs) {
  //let time flow
  1 :: ms => now;
  //advance 1 ms
  currentMs + 1 => currentMs;
  //display current time
  displayCurrentTime();
}

//piece ended
<<< "piece ended" >>>;
