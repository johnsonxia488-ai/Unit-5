void options() {
  
  background(255);
  textSize(60);
  fill(0);
  text("CHOOSE YOUR FACE", width/2, 120);
  
  // happy face button
  if (mouseX > 150 && mouseX < 350 && mouseY > 300 && mouseY < 500) {
    strokeWeight(5);
    stroke(255, 0, 0);
  } else {
    strokeWeight(2);
    stroke(0);
  }

  fill(255);
  rect(250, 400, 200, 200);
  image(face_happy, 250, 400, 150, 150);

  // sad face button
  if (mouseX > 450 && mouseX < 650 && mouseY > 300 && mouseY < 500) {
    strokeWeight(5);
    stroke(255, 0, 0);
  } else {
    strokeWeight(2);
    stroke(0);
  }

  fill(255);
  rect(550, 400, 200, 200);
  image(face_sad, 550, 400, 150, 150);

  // play button
  if (mouseX > 300 && mouseX < 500 && mouseY > 560 && mouseY < 640) {
    strokeWeight(5);
    stroke(255, 0, 0);
    fill(220);
  } else {
    strokeWeight(2);
    stroke(0);
    fill(255);
  }

  rect(400, 600, 200, 80);

  fill(0);
  textSize(40);
  text("PLAY", 400, 600);

  // back button
  if (mouseX > 300 && mouseX < 500 && mouseY > 660 && mouseY < 740) {
    strokeWeight(5);
    stroke(255, 0, 0);
    fill(220);
  } else {
    strokeWeight(2);
    stroke(0);
    fill(255);
  }

  rect(400, 700, 200, 80);

  fill(0);
  textSize(40);
  text("BACK", 400, 700);
  
  // slider track
line(700, 100, 700, 300);

// move slider
if (mousePressed &&
    mouseX > 680 && mouseX < 720 && mouseY > 100 && mouseY < 300) {
  sliderY = mouseY;
}

// slider knob
circle(700, sliderY, 20);

// preview face
d = map(sliderY, 100, 300, 50, 200);
image(selectedFace, 200, 650, d, d);
}
void optionsClicks() {
  // happy
  if (clickOnRect(250, 400, 200, 200)) {
    selectedFace = face_happy;
  }
  //choose sad
  if (clickOnRect(550, 400, 200, 200)) {
    selectedFace = face_sad;
  }
  //back button
  if (clickOnRect(400, 700, 200, 80)) {
    mode = INTRO;
  }
  if (clickOnRect(400, 600, 200, 80)) {
    mode = GAME;
  }
}
