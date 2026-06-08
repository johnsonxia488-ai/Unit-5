//Johnson 
  
//colors 
color white             = #FFFFFF; 
color lightseaGreen     = #00A6A6;
color paleskyBlue       = #BBDEF0;
color brightamberYellow = #EFCA08;
color goldenOrange      = #F49F0A; 
color grapesodaPurple   = #8E5193;
color brickemberRed     = #D10000;

//intro GUI
float a; 

//Game entities 
float bx, by, bd, vx, vy, px, py, pd; 

//keyboard variables 
boolean akey, dkey; 

//arrays 
int [] x; 
int [] y; 
boolean[] alive; 
int brickd; 
int n; 
int tempx, tempy; 

void setup() {
  size(800, 800); 
  mode = INTRO; 
  
  //set up paddle and ball
  bx = width/2; 
  by = height - 200; 
  bd = 10; 
  px = width/2; 
  py = height; 
  vx = 0; 
  vy = 1; 
  
  //set up array of bricks 
  brickd = 50; 
  x = new int[3]; 
  y = new int[3]; 
  
  x[0] = 100; 
  y[0] = 100; 
  
  x[1] = 400; 
  y[1] = 100; 
  
  x[2] = 700; 
  y[2] = 100; 
}

void draw() {
  if (mode == INTRO) {
    intro(); 
  } else if (mode == GAME) {
    game(); 
  }
}
