//Pong!
//Johnson Xia

//colors
color lightseaGreen     = #00A6A6;
color paleskyBlue       = #BBDEF0;
color brightamberYellow = #EFCA08;
color goldenOrange      = #F49F0A; 
color grapesodaPurple   = #8E5193;
color brickemberRed     = #D10000;

//mode framework
int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
float vx, vy; 

//scoring 
int leftscore, rightscore, timer; 

//keyboard variables 
boolean wkey, skey, upkey, downkey; 
 
void setup() {
  size(800, 600);
  mode = GAME;
 
  //initalization paddles
  leftx = 0; 
  lefty = height/2; 
  leftd = 200; 
  
  rightx = width; 
  righty = height/2; 
  rightd = 200; 
  
  //initialize ball
  ballx = width/2; 
  bally = height/2; 
  balld = 100; 
  
  vx = 10; 
  vy = 10; 
  //initialize keyboard vars
  wkey = skey = upkey = downkey = false; 
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
    println("Mode error: " + mode);
  }
}
