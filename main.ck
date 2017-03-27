//main interface for dance piece
//by aaron montoya-moraga
//v0.0.1

//variable for holding tempo
90 => float bpm;
//

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

//function for
function void bpmToms(float bpm) {
}
