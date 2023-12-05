//variables, integers and booleans-------------------------------------------------------------------

//no. of colums and rows
//integers for common coordinate values
int a = 15;//3
int b = 105;//21
int c = 155;//31
int d = 160;//32
int e = 380;//76
int f = 250;//50
int g = 300;//60
int h = 385;//77
int i = 290;//58

float score = 0;

//booleans for checking if the timer should start or not
boolean timerstarted = false;
boolean timerended = true;

//determing the random color of the squares
float randcol;



//setup function------------------------------------------------------------
void setup() {
  size(400,400);
  background(0);
  frameRate(30);
  text("Click on the colored square as soon as it appears!",70,10);
  constrain(mouseX, 0, 400);
  constrain(mouseY, 0, 400);
}



















//draw function-------------------------------------------------------------
void draw() {
 randcol = random(0,255);
 drawgraysquares();
 //starting the timer
 if(score == 1) {
 timerstarted = true;
 timerended = false;
 }
 //timer mechanic
 if(timerstarted){
   frameCount = 0;
   print(frameCount);
   if(frameCount == 900){
   timerended = true;
   timerstarted = false;
   }
 }
 }

//function drawing squares
void drawgraysquares() {
 rectMode(CORNERS);
 fill(150);
 rect(a,a,b,b);
 rect(c,a,f,b);
 rect(i,a,e,b);
 rect(a,d,b,f);
 rect(c,d,f,f);
 rect(i,d,e,f);
 rect(a,g,b,h);
 rect(c,g,f,h);
 rect(i,g,e,h);
}
