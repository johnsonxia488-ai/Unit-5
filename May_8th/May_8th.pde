
//MODE VARIABLES
int mode; 
final int INTRO = 0; 
final int GAME = 1; 
final int PAUSE = 2; 
final int GAMEOVER = 3; 

//TARGET VARIABLES
float x, y, d; 
float vx, xy; //target velocity

//COLOR PALLETTE
void setup() {
  size(800, 800);  
  textAlign(CENTER, CENTER); 
  rectMode(CENTER); 
  mode = INTRO;  
  
  //target initializaton
  x = width/2; 
  y = height/2; 
  d = 100; 
  vx = random(-5, 5); 
  vy = random(-5, 5); 
  
}

void draw() {
  if (mode == INTRO) {
    intro(); 
  } else if (mode == GAME) {
    game(); 
  } else if (mode == PAUSE) {
    pause(); 
  } else if (mode == GAMEOVER) {
    gameover(); 
  } else {
    println("Mode Error: Mode = " + mode); 
  }
}
