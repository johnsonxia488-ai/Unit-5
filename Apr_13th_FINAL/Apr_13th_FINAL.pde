//palette of colors
color lightseaGreen     = #00A6A6;
color paleskyBlue       = #BBDEF0;
color brgihtamberYellow = #EFCA08;
color goldenOrange      = #F49F0A;
color grapesodaPurple   = #8E5193;
color brickemberRed     = #D10000;
color white             = #FFFFFF; 
color black             = #000000; 
color selectedColor;

PImage apple;
boolean appleOn;
PImage banana; 
boolean bananaOn; 

float sliderX;
float thickness;
float stampW; 
float stampH; 
int mode = 1; 

void setup() {
  size(850, 800);
  background(255);
  apple = loadImage("apple.png");
  appleOn = false;
  banana = loadImage("banana.png"); 
  bananaOn = false; 
  selectedColor = 0;
  sliderX = 300; 
}

void draw() {
  fill(255);
  
  //toolbar
  stroke(0);
  strokeWeight(1);
  fill(200);
  rect(0, 0, 850, 100);
  //slider position to thickness
  thickness = map(sliderX, 290, 390, 1, 50);
  stampW = map(sliderX, 290, 390, 20, 200); 
  stampH = map(sliderX, 290, 390, 20, 160); 

  //slider
  stroke(255);
  line(290, 50, 390, 50);
  fill(255);
  circle(sliderX, 50, 20);
  thickness = map(sliderX, 290, 390, 1, 50);

  //clear button
  fill(255);
  rect(625, 15, 50, 20);
  fill(0);
  textAlign(CENTER, CENTER);
  text("CLEAR", 650, 25);
  
  //save button
  fill(255);
  rect(690, 15, 40, 20);
  fill(0);
  textAlign(CENTER, CENTER);
  text("SAVE", 710, 25); 
  
  //load button
  fill(255);
  rect(740, 15, 40, 20);
  fill(0);
  textAlign(CENTER, CENTER);
  text("LOAD", 760, 25);
  
  //buttons
  tactile(55, 45, 40); 
  fill(black); 
  circle(55, 45, 40); 
  
  tactile(100, 25, 40); 
  fill(lightseaGreen);
  circle(100, 25, 40);

  tactile(150, 25, 20);
  fill(paleskyBlue);
  circle(150, 25, 40);

  tactile(200, 25, 20);
  fill(brgihtamberYellow);
  circle(200, 25, 40);

  tactile(100, 70, 20);
  fill(goldenOrange);
  circle(100, 70, 40);

  tactile(150, 70, 20);
  fill(grapesodaPurple);
  circle(150, 70, 40);

  tactile(200, 70, 20);
  fill(brickemberRed);
  circle(200, 70, 40);

  //indicator
  fill(selectedColor);
  rect(240, 25, 10, 50);

  //apple button
  tactile(500, 0, 100, 80);
  appleOnOff();
  strokeWeight(1);
  rect(500, 0, 100, 80);
  image(apple, 500, 0, 100, 80);
  //banana button
  tactile(400, 0, 100, 80);
  bananaOnOff();
  strokeWeight(1);
  rect(400, 0, 100, 80);
  image(banana, 400, 0, 100, 80);
}

void mouseDragged() {

  
  if (appleOn == true && mouseY > 95) {
    //apple drawing
    image(apple, mouseX, mouseY, stampW, stampH);
  } 
  else if (bananaOn == true && mouseY > 95){
    //banana drawing
    image(banana, mouseX, mouseY, stampW, stampH); 
  }
  else if (mouseY > 95){
    //squiggly line
    strokeWeight(thickness);
    stroke(selectedColor);
    line(pmouseX, pmouseY, mouseX, mouseY);
    
  }
  
  
  //slider
  if (mouseX > 290 && mouseX < 390 && mouseY > 30 && mouseY < 70) {
    sliderX = mouseX;
  }
}
void mouseReleased() {
  if (dist(55, 45, mouseX, mouseY) < 20) {
    selectedColor = black; 
  }
  if (dist(100, 25, mouseX, mouseY) < 20) {
    selectedColor = lightseaGreen;
  }
  if (dist(150, 25, mouseX, mouseY) < 20) {
    selectedColor = paleskyBlue;
  }
  if (dist(200, 25, mouseX, mouseY) < 20) {
    selectedColor = brgihtamberYellow;
  }
  if (dist(100, 70, mouseX, mouseY) < 20) {
    selectedColor = goldenOrange;
  }
  if (dist(150, 70, mouseX, mouseY) < 20) {
    selectedColor = grapesodaPurple;
  }
  if (dist(200, 70, mouseX, mouseY) < 20) {
    selectedColor = brickemberRed;
  }
  //Clear button
  if (mouseX > 625 && mouseX < 675 && mouseY > 15 && mouseY < 35) {
    background(white);
  }
  //Save button
  if (mouseX > 690 && mouseX < 730 && mouseY > 15 && mouseY < 35) {
    selectOutput("Drawing", "saveImage");
  }
  //Load Button
  if (mouseX > 740 && mouseX < 780 && mouseY > 15 && mouseY < 35) {
    selectInput("Apple", "openImage");
  }
  //Apple toggle button 
  if (mouseX > 500 && mouseX < 600 && mouseY > 0 && mouseY < 80) {
    appleOn = !appleOn;
  }

  //Banana toggle button
  if (mouseX > 400 && mouseX < 500 && mouseY > 0 && mouseY < 80) {
    bananaOn = !bananaOn; 
  }
}
void saveImage(File f) {
  if (f != null) {
    PImage canvas = get(71, 1, width - 71, height - 1); // Use PImage
    canvas.save(f.getAbsolutePath());
  }
}

void openImage(File f) {
  if (f != null) {
    //KLUDGE
    int n = 0;
    while (n < 100) {
      PImage pic = loadImage(f.getPath());
      image(pic, 0, 0);
      n = n + 1;
    }
  }
}

void tactile(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(255);
  } else {
    stroke(0);
  }
}

void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(255, 255, 0);
  } else {
    fill(255);
  }
}

void appleOnOff() {
  if (appleOn == true) {
    stroke(255, 0, 0);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(1);
  }
}
  void bananaOnOff() {
    if(bananaOn == true) {
      stroke(255, 0, 0); 
      strokeWeight(5); 
    } else {
      stroke(0); 
      strokeWeight(1); 
    }
  }
