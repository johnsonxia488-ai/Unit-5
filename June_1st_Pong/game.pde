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
  
  //draw ball
  fill(brickemberRed); 
  circle(ballx, bally, balld); 
  
  //move paddles
  if (wkey == true) lefty = lefty - 5; 
  if (skey == true) lefty = lefty + 5; 
  if (upkey == true) righty = righty - 5; 
  if (downkey == true) righty = righty + 5; 
  
  //move ball
  ballx = ballx + vx; 
  bally = bally + vy; 
  
  //scoring
  if (ballx < 0) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
  }
  
  if (ballx > width) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
  }
  
  //bounce off 
  if (bally <= balld/2 || bally >= height - balld/2) {
    vy = vy * -1;
  }
  
  //right paddle
  collideCircle(ballx, bally, balld, rightx, righty, rightd);
  
  //left paddle
  collideCircle(ballx, bally, balld,leftx, lefty, leftd);
}

void collideCircle(float x1, float y1, float d1,float x2, float y2, float d2) {

  float r1 = d1/2;
  float r2 = d2/2;

  float dx = x1 - x2;
  float dy = y1 - y2;
  float dist = sqrt(dx*dx + dy*dy);

  if (dist <= r1 + r2) {

    // unit normal vector
    float x = dx / dist;
    float y = dy / dist;

    // dot product
    float velocityAmount = vx * x + vy * y;

    // reflect velocity
    vx = vx - 2 * velocityAmount * x;
    vy = vy - 2 * velocityAmount * y;

  
}
  }
void gameClicks() {
}
