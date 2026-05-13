import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//MODE VARIABLES
int mode; 
final int INTRO    = 0; 
final int GAME     = 1; 
final int PAUSE    = 2; 
final int GAMEOVER = 3; 

//TARGET VARIABLES
float x, y, d; 
float vx, vy; //target velocity
int score, lives; 

//SOUND VARIABLES
Minim minim; 
AudioPlayer FAILURE, SUCCESS, MUSIC; 

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
  score = 0; 
  lives = 67; 
  
  //minim
  minim = new Minim(this);
  FAILURE = minim.loadFile("FAILURE.wav"); 
  SUCCESS = minim.loadFile("SUCCESS.wav"); 
  MUSIC   = minim.loadFile("MUSIC.mp3"); 
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
