void options() {
  background(255);
  textSize(60);
  fill(0);
  text("CHOOSE YOUR FACE", width/2, 120);
  //happy face button
  rectButton(face_happy, 250, 400, 200, 200);
  //sad face button
  rectButton(face_sad, 550, 400, 200, 200);
  //selection indicator
  noFill();
  strokeWeight(8);
  stroke(0, 255, 0);

  if (selectedFace == face_happy) {
    rect(250, 400, 220, 220);
  } else if (selectedFace == face_sad) {
    rect(550, 400, 220, 220);
  }

  //back button
  fill(255);
  stroke(0);
  rect(400, 700, 200, 80);

  fill(0);
  textSize(40);
  text("BACK", 400, 700);

  //play button
  fill(255);
  stroke(0);
  rect(400, 600, 200, 80);

  fill(0);
  textSize(40);
  text("PLAY", 400, 600);

  //indicator
  image(selectedFace, 200, 650, 100, 100);
  
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
