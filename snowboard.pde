PImage[] bgs = new PImage[3];
Main main;

void setup() {
  size(1600, 1111);

  // load background1.jpeg ... background3.jpeg
  for (int i = 0; i < bgs.length; i++) {
    bgs[i] = loadImage("background" + (i + 1) + ".jpeg");
  }

  main = new Main();
  
}

void draw() {
  main.update();
  main.display();
}