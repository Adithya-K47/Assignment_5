//making square class
//inventory skill 28 and 30
class Square {
//position of square
PVector pos;
float size;
//random color var
color Fcolor;
//boolean to check if square is lit
boolean lit;

//constructor
Square(PVector pos, float size) {
this.pos = pos;
this.size = size;
//inventory skill 2
this.Fcolor = color(150);
this.lit = false;
 }

//display the square
void display() {
if (lit) {
//if the square is lit, randomize and fill color
fill(Fcolor);
} else {
//if not lit, make it white
fill(255);
}
//draw squre
rect(pos.x, pos.y, size, size);
}

//randomizing color
void LUp(float r, float g, float b) {
lit = true;
Fcolor = color(r, g, b);
}
//check mouse pos
boolean has(float x, float y) {
float centerX = pos.x + size / 2;
float centerY = pos.y + size / 2;
float distance = dist(x, y, centerX, centerY);
return distance < size / 2;
}
}  
