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
  text(timer, 3*width/4, 550); 
  timer = timer -1; 
  
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
if (timer < 0) {
  ballx = ballx + vx;
  bally = bally + vy;
}

//wall bounce
if (bally <= balld/2 || bally >= height - balld/2) {
  vy = vy * -1;
}

//right paddle collision
float d = dist(rightx, righty, ballx, bally);
float r = rightd/2;
float R = balld/2;

if (d <= r + R) {
  vx = (ballx - rightx) * -0.1;
  vy = (bally - righty) * -0.1;
}

//left paddle collision
d = dist(leftx, lefty, ballx, bally);
r = leftd/2;

if (d <= r + R) {
  vx = (ballx - leftx) * 0.1;
  vy = (bally - lefty) * 0.1;
}

//scoring
if (ballx < 0) {
  rightscore++;
  resetBall();
}

if (ballx > width) {
  leftscore++;
  resetBall();
}
  //bouncing 
  if (bally <= balld/2 || bally >= height-balld/2) {
    vy = vy * -1; 
  }
  if (dist(ballx, bally, rightx, righty) < balld/2 + rightd/2) {
    vx = (ballx - rightx)/10; 
    vy = (bally - righty)/10; 
}
  if (dist(ballx, bally, leftx, lefty) < balld/2 + leftd/2) {
    vx = (ballx - leftx)/10; 
    vy = (bally - lefty)/10; 
  }

}
void gameClicks() {
}
