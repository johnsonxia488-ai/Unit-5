void game() {
  background(paleskyBlue);

  //paddle

  fill(white);
  circle(px, py, pd);
  bx = bx + vx;
  by = by + vy;
  if (dist(bx, by, px, py) < bd/2 +pd/2) {
    vx = (bx - px)/10;
    vy = (by - py)/10;
    if (akey) px = px - 5;
    if (dkey) px = px + 5;
    
  //ball 
  fill(white); 
  circle(bx, by, bd); 
  
  bx = bx + vx; 
  by = by + vy; 
  
  //bouncing 
  if(dist(bx, by, px, py) < bd/2 + pd/2) {
    vx = (bx - px)/10; 
    vy = (bx - py)/10; 
  }
  if (by < bd/2 || by > height-bd/2) {
    vy = vy * -1; 
  }
  if (bx < bd/2 || bx > width-bd/2) {
    vx = vx * -1; 
  }
  //bricks
  circle(x[0], y[0], brickd);
  circle(x[1], y[1], brickd);
  circle(x[2], y[2], brickd);
  
  int i = 0; 
  while (i < 4) {
    cirlce(x[i], y[i], brickd); 
    i=i+1; 
}
  }  
}
void gameClicks() {
}
