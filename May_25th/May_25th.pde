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
final int OPTIONS  = 4; 

//SOUND VARIABLES
Minim minim; 
AudioPlayer FAILURE, SUCCESS, MUSIC; 

//IMAGES
PImage face_happy; 
PImage face_sad;
PImage selectedFace; 

//GAME VARIABLES
float x, y, d; 
float vx, vy; 
int score, lives, highscore; 
float sliderY; 

//COLOR PALLETTE
void setup() {
  size(800, 800);
  imageMode(CENTER); 
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
  lives = 1; 
  
  //images 
  face_happy = loadImage("happy_face.png"); 
  face_sad   = loadImage("sad_face.png");
  selectedFace = face_happy; 
  
  //sound affects 
  minim = new Minim(this);
  FAILURE = minim.loadFile("FAILURE.wav"); 
  SUCCESS = minim.loadFile("SUCCESS.wav"); 
  MUSIC   = minim.loadFile("MUSIC.mp3"); 
  
  highscore = 0; 
  
  reset(); 
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
  } else if (mode == OPTIONS) {
    options(); 
  } else {
    println("Mode Error: Mode = " + mode); 
  }
}
