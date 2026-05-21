void options() {
background(255); 
 tactile(500, 0, 100, 80);
  HAPPYOnOff();
  strokeWeight(1);
  rect(500, 0, 100, 80);
  image(HAPPY, 500, 0, 100, 80);
  //banana button
  tactile(400, 0, 100, 80);
  SADOnOff();
  strokeWeight(1);
  rect(400, 0, 100, 80);
  image(SAD, 400, 0, 100, 80);
}
void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(255, 255, 0);
  } else {
    fill(255);
  }
}
void optionsClicks() {
}
