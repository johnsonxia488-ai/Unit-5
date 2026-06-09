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
  int i = 0; 
  while ( i < n ) {
    if (alive[i] == true) {
    manageBrick(i); 
  i++; 
}
  }
  }
}
void gameClicks() {
}
void manageBrick(int i) {
  if (y[i] == 200) fill(paleskyBlue); 
  if (y[i] == 200) fill(brightamberYellow); 
  if (y[i] == 300) fill(goldenOrange); 
  if (y[i] == 400) fill(grapesodaPurple); 
  circle(x[i], y[i], brickd); 
  if (dist(bx, by, x[i], y[i]) < bd/2 + brickd/2) {
      vx = (bx - x[i])/10; 
      vy = (by - y[i])/10;
      alive [i] = false; 
  }
} 
