

void setup() {
  numberOfFrames = 10;
  gif = new PImage[numberOfFrames];

  int i = 0;
  while (i < numberOfFrames) {
    gif[i] = loadImage("frame_"+i+"_delay-0.06s.gif");
    i=i+1;
  }
}

void draw() {
}
