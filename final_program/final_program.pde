int a = 230;
int b = 250;
//no. of squares x3
int gridS = 3;
//array list to store Square objects
ArrayList<Square> squares;
//ID of the currently lit square
int targetID;
//score counter
int score = 0;
// timer variable
int Tleft = 0;
//timer to keep track of how long square is lit
int litT = 0;
//boolean for if the game's starting
boolean gameS = false;




//       ____       _                     _             _         _                   
//      / ___|  ___| |_ _   _ _ __    ___| |_ __ _ _ __| |_ ___  | |__   ___ _ __ ___ 
//      \___ \ / _ \ __| | | | '_ \  / __| __/ _` | '__| __/ __| | '_ \ / _ \ '__/ _ \
//       ___) |  __/ |_| |_| | |_) | \__ \ || (_| | |  | |_\__ \ | | | |  __/ | |  __/
//      |____/ \___|\__|\__,_| .__/  |___/\__\__,_|_|   \__|___/ |_| |_|\___|_|  \___|
//                           |_|                                                      




//setup function------------------------------------------------------------
void setup() {
  size(400, 400);
//initializing the array list
squares = new ArrayList<Square>();
//initialize the array list for squres
for (int i = 0; i < gridS; i++) {
for (int j = 0; j < gridS; j++) {
//add square to list
squares.add(new Square(new PVector(i * (width / gridS), j * (height / gridS)), width / gridS));
}
}
}


//       ____                           _             _         _                   
//      |  _ \ _ __ __ ___      __  ___| |_ __ _ _ __| |_ ___  | |__   ___ _ __ ___ 
//      | | | | '__/ _` \ \ /\ / / / __| __/ _` | '__| __/ __| | '_ \ / _ \ '__/ _ \
//      | |_| | | | (_| |\ V  V /  \__ \ || (_| | |  | |_\__ \ | | | |  __/ | |  __/
//      |____/|_|  \__,_| \_/\_/   |___/\__\__,_|_|   \__|___/ |_| |_|\___|_|  \___|




void draw() {
  //print(frameCount);
//this code will happen when game is starting?
if(!gameS) {
SScreen();
}else{
//Update the timer.
if (Tleft > 0) {
Tleft--;

//display grid
background(255);

//check each square for displaying
for (Square square : squares) {
square.display();}

//light up every 3 seconds
if (frameCount % (3 * 60) == 0) {
//if squre is lit reduce timer
if (litT > 0) {
litT--;
//if lit timer reaches 0, make  lit false
if (litT == 0) {squares.get(targetID).lit = false;}
}
//choose a new square
targetID = int(random(squares.size()));
//make it lit
squares.get(targetID).LUp(random(255), random(255), random(255));
//set the timer for the lit duration
litT = 3 * 60;
} else if (litT > 0) {
//if no square is lit, timer will still reduce
litT--;
//if the lit timer reaches 0, turn off the lit
if (litT == 0) {
squares.get(targetID).lit = false;}
}
//if square is lit, check if player clicks over it
if (litT > 0 && mousePressed) {
//check each square to check for click on the lit square -------------------------------------------------------- ask prof is there a better way to do this for optimizing game. I was thinking if i could do this by directly tell the lit square to inform if mouse is over? maybe. im too sleepy
for (Square square : squares) {
if (square.has(mouseX, mouseY) && square.lit) {
//player clicks lit squre and add score.
score++;
square.lit = false;
litT = 0;
break;
}
}
}
//display the score and timer  in the top right
fill(0);
textSize(20);
textAlign(RIGHT, TOP);
text("Score: " + score, width - 20, 20);
text("Time Left: " + ceil(Tleft / 60.0), width - 20, 50);
} else {
//if player's score is less than 5 he loses. ---------------------------------------------------------------------ask prof for more ideas on how i can make win/lose condition better.
if (score < 5) {
//display loser msg
background(255);  // Clear the background
textSize(20);
textAlign(CENTER, CENTER);
text("Loss! Your score was less than 5!", width / 2, height / 2 - 20);

} else {
//display score if the player doesnt lose
background(255);
textSize(20);
textAlign(CENTER, CENTER);
text("Your score is: " + score, width / 2, height / 2 - 20);
}
}
}
}




//       _____                 _   _                                  --------------------------------------------------------- ask prof is ascii ok for making code clearer.
//      |  ___|   _ _ __   ___| |_(_) ___  _ __  ___    __ _ _ __ ___ 
//      | |_ | | | | '_ \ / __| __| |/ _ \| '_ \/ __|  / _` | '__/ _ \
//      |  _|| |_| | | | | (__| |_| | (_) | | | \__ \ | (_| | | |  __/
//      |_|  _\__,_|_|_|_|\___|\__|_|\___/|_|_|_|___/  \__,_|_|  \___|
//        __| | ___ / _(_)_ __   ___  __| | | |__   ___ _ __ ___      
//       / _` |/ _ \ |_| | '_ \ / _ \/ _` | | '_ \ / _ \ '__/ _ \     
//      | (_| |  __/  _| | | | |  __/ (_| | | | | |  __/ | |  __/     
//       \__,_|\___|_| |_|_| |_|\___|\__,_| |_| |_|\___|_|  \___|     
 
 
 
//defining the start screen
void SScreen() {
background(255);
rectMode(CORNER);
fill(a, a, 250);
rect(-1,-1,401,401);
fill(0);
textSize(20);
textAlign(CENTER, CENTER);
text("Press 1 for a 20 second timer", width / 2, height / 2 - 70);
text("Press 2 for a 30 second timer", width / 2, height / 2 - 40);
text("Press 3 for a 60 second timer", width / 2, height / 2 - 10);
text("Click on each square as quick as possible!", width / 2, height / 2 + 20);
}

//changing timer
void keyPressed() {
if (!gameS) {
// makes the game more dynamic.
switch (key) {
case '1':
Tleft = 20 * 60;
gameS = true;
break;
case '2':
Tleft = 30 * 60;
gameS = true;
break;
case '3':
Tleft = 60 * 60;
gameS = true;
break;
case '5':
changeColor();
break;
case '4':
changeColorw();
    }
  }
}

void changeColor(){
  a = 250;
}

void changeColorw(){
  a = 230;
}
