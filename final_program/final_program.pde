//variables, integers and booleans-------------------------------------------------------------------

//integers for common coordinate values
int a = 3;
int b = 76;
int c = 21;
int d = 32;
int e = 50;
int f = 60;
int g = 77;

//booleans for checking if the timer should start or not
boolean timerstarted = true;
boolean timerended = false;

//determing the random color of the squares
float randcol;



//setup function------------------------------------------------------------
void setup() {
  rectMode(CORNER);
  text("Click on the colored square as soon as it appears!",100,100);
}



















//draw function-------------------------------------------------------------
void draw() {
 randcol = random(0,255);
}

//function drawing squares
