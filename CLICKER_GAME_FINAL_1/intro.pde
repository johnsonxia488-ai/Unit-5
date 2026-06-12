void intro() {
MUSIC.rewind();

background(255);

// title
fill(0);
textSize(100);
text("CLICKER GAME", width/2, 200);

// START button
if (mouseX > 250 && mouseX < 550 && mouseY > 330 && mouseY < 420) {
strokeWeight(5);
stroke(255, 0, 0);
fill(220);
} else {
strokeWeight(2);
stroke(0);
fill(255);
}

rect(400, 375, 300, 90);

fill(0);
textSize(50);
text("START", 400, 375);

// OPTIONS button
if (mouseX > 250 && mouseX < 550 && mouseY > 450 && mouseY < 540) {
strokeWeight(5);
stroke(255, 0, 0);
fill(220);
} else {
strokeWeight(2);
stroke(0);
fill(255);
}

rect(400, 495, 300, 90);

fill(0);
textSize(50);
text("OPTIONS", 400, 495);
}


void introClicks() {
  if (mouseX > 250 && mouseX < 550 && mouseY > 330 && mouseY < 420) {
    reset(); 
    mode = GAME;
  } else if (mouseX > 250 && mouseX < 550 && mouseY > 450 && mouseY < 540) {
    mode = OPTIONS;
  }
}
