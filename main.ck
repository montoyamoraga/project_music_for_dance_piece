//main interface for dance piece
//by aaron montoya-moraga
//v0.0.1

//variable for holding tempo in bpm and milliseconds
float bpm;
float msPerBeat;

//variable for storing the current ms
0 => int currentMs;

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


//start the piece
<<< "start the piece">>>;

//set bpm
setBpm(90);
<<< bpm + " bpm, " + msPerBeat + " ms per beat" >>>;

//set duration to be 5 minutes
setDuration(5);
<<< "the piece lasts " + durationMinutes + " minutes, or " + durationMs + " ms">>>;
