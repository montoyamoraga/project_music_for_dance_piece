//utilities for requesting intervals
//by aaron montoya-moraga
//april 2017
//for javascript in max 7.3
//v0.0.1

//inlets and outlets
inlets = 1;
outlets = 1;

//global variables for intervals
var minorSecondUpInterval = 1;
var majorSecondUpInterval = 2;
var minorThirdUpInterval = 3;
var majorThirdUpInterval = 4;
var perfectFourthUpInterval = 5;
var perfectFifthUpInterval = 7;
var majorSixthUpInterval = 9;
var majorSeventhUpInterval = 11;
var perfectOctaveUpInterval = 12;


//functions for intervals
function minorSecondUp(fundamental) {
	outlet(0, fundamental + minorSecondUpInterval);
}

function majorSecondUp(fundamental) {
	outlet(0, fundamental + majorSecondUpInterval);
}

function minorThirdUp(fundamental) {
	outlet(0, fundamental + minorThirdUpInterval);
}

function majorThirdUp(fundamental) {
	outlet(0, fundamental + majorThirdUpInterval);
}


function perfectFourthUp(fundamental) {
	outlet(0, fundamental + perfectFourthUpInterval);
}

function perfectFifthUp(fundamental) {
	outlet(0, fundamental + perfectFifthUpInterval);
}

function majorSixthUp(fundamental) {
	outlet(0, fundamental + majorSixthUpInterval);
}

function majorSeventhUp(fundamental) {
	outlet(0, fundamental + majorSeventhUpInterval);
}


function perfectOctaveUp(fundamental) {
	outlet(0, fundamental + perfectOctaveUpInterval);
}
