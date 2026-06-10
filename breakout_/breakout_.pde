//Johnson 
//breakout

//mode variables 
int mode; 
final int INTRO         = 0; 
final int GAME          = 1; 
final int PUASE         = 2; 
final int GAMEOVER      = 3; 
final int OPTIONS       = 4; 
final int INTERSECTIONS = 5; 

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
  fill(255); 

  mode = GAME; 
  brickd = 50; 
  n = 28; 
  pd = 100; 
  x = new int[n]; 
  y = new int[n]; 
  alive = new boolean[n]; 
  tempx = 100; 
  tempy = 100; 

  int i = 0; 
  while (i < n) {
    x[i] = tempx; 
    y[i] = tempy; 
    alive[i] = true; 

    tempx = tempx + 100; 

    if (tempx >= width) {
      tempx = 100; 
      tempy = tempy + 100; 
    }
    i = i + 1; 
  }

  // ball
  bx = width/2; 
  by = height - 200; 
  bd = 25; 

  px = width/2; 
  py = height - 50; 
  pd = 100; 

  vx = 0; 
  vy = 3; 
}

void draw() {
  if (mode == INTRO) {
    intro(); 
  } 
  else if (mode == GAME) {
    game(); 
  }
}
