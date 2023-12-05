//variables, integers and booleans-------------------------------------------------------------------

//no. of colums and rows
int gridS = 3;
//integer for setting an ID for a lit squre
int targetID;
//score counter.  is a lighter win condition is ok? as this is a skill based game, winning/losing is a subjective topic. clarify with prof.
int score = 0;
//variable for keeping track of timer
int Tleft = 0;
//variable to track timer after a square is lit
int litT = 0;
//tracking game start with a boolean
boolean gameS = false;

//defining the start screen
void SScreen () {
  background(255);
  fill(0);
  textSize(20);
  //textFont(IF);
  textAlign(CENTER, CENTER);
  text("Press 1 for a 20 second timer", width/2,height/2-70);
  text("Press 2 for a 30 second timer", width/2,height/2-50);
  text("press 3 for a 60 second timer", width/2,height/20-10);
  text("Click on each square as quick as possible",width/2,height/2+20);
}

//timer selection
void keyPressed(){
  //learned something new! exclamation mark means that when it is NOT something. Here, ! is used to tell function what to do when it is NOT gameS. 
  if(!gameS){
    if(key =='1'){
      Tleft = 20*60;
      gameS = true;
    }
    else if(key  == '2'){
      Tleft = 30*60;
      gameS = true;
    }
    else if(key =='3'){
      Tleft = 60*60;
      gameS = true;
    }}}

//setup function------------------------------------------------------------
void setup() {
  //Pfont IF; ----------------------------------------------------------------------------ask prof on how to load fonts
  //IF = loadFont("InkFree-20.vlw");
 //textFont(IF);
  size(400,400);
  background(0);
  frameRate(30);
  text("Click on the colored square as soon as it appears!",70,10);
  constrain(mouseX, 0, 400);
  constrain(mouseY, 0, 400);
}



















//draw function-------------------------------------------------------------
void draw() {


 }
