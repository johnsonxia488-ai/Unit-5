void game() { 
  background(lightseaGreen); 
  
  //center line 
  strokeWeight(5); 
  stroke(255); 
  line(width/2, 0, width/2, height); 
  
  //scoreboard
  textSize(50); 
  fill(paleskyBlue); 
  text(leftscore, width/4, 100); 
  fill(brightamberYellow); 
  text(rightscore, 3*width/4, 100); 
  
  //draw paddles 
  fill(goldenOrange); 
  circle(leftx, lefty, leftd); 
  fill(grapesodaPurple); 
  circle(rightx, righty, rightd); 
  
  //drawball
  fill(brickemberRed); 
  circle(ballx, bally, balld); 
  
  //move paddles
  if (wkey == true) lefty = lefty - 5; 
  if (skey == true) lefty = lefty + 5; 
  if (upkey == true) righty = righty - 5; 
  if (downkey == true) righty = righty +5; 
  
  //move ball
  ballx = bally +vx; 
  bally = bally +vy; 
  
  //scoring 
  if (ballx < 0) {
    rightscore ++;
    ballx = width/2; 
    bally = height/2; 
  } 
  //bouncing 
  if (bally <= balld/2 || bally >= height-balld/2) {
    vy = vy * -1; 
  }
  if (dist(ballx, bally, rightx, righty) < balld/2 + rightd) {
    vx = (ballx = rightx)/10; 
    vy = (bally = righty)/10; 
}
  if (dist(ballx, bally, leftx, lefty) < balld/2 + leftd) {
    vx = (ballx - leftx)/10; 
    vy = (bally - lefty)/10; 
  }
}
void gameClicks() {
}
