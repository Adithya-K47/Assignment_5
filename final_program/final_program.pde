//variables, integers and booleans-------------------------------------------------------------------
int aa;
int bb;
int cc;
int dd;

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

int bd = int(random(1,9));

//booleans for checking if the timer should start or not
boolean timerstarted = false;
boolean timerended = true;

//determing the random color of the squares



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
 randcol1 = random(0,255);
 randcol2 = random(0,255);
 randcol3 = random(0,255);
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

void getsquare(){

if( bd == 1){
  aa = a;
  bb = a;
  cc = b;
  dd = b;
}
if( bd == 2){
  aa = c;
  bb = a;
  cc = f;
  dd = b;
}
if( bd == 3){
  aa = i;
  bb = a;
  cc = e;
  dd = b;
}
if( bd == 4){
  aa = a;
  bb = d;
  cc = b;
  dd = f;
}
if( bd == 5){
  aa = c;
  bb = d;
  cc = f;
  dd = f;
}
if( bd == 6){
  aa = i;
  bb = d;
  cc = e;
  dd = f;
}
if( bd == 7){
  aa = a;
  bb = g;
  cc = b;
  dd = h;
}
if( bd == 8){
  aa = c;
  bb = g;
  cc = f;
  dd = h;
}
if( bd == 9){
  aa = i;
  bb = g;
  cc = e;
  dd = h;
}


fill(randcol1,randcol2,randcol3);
rect(aa,bb,cc,dd);
}

void mouseClicked (){
if(mouseX>aa && mouseX<cc && mouseY>bb && mouseY<dd){
  getsquare();
}
}

void keyPressed(){
  if (key == 'w'){
    getsquare();
  }
}
