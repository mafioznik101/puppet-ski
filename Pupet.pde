class Pupet {

  char upKey, downKey, leftKey, rightKey;
  float x, y;
  float speed = 200;
  boolean arrows;
  boolean up, down, left, right;
  PImage player = loadImage("puppet1.PNG");
  boolean facingRight = true;

  Pupet(boolean arrows, float x, float y) {
    this.x = x;
    this.y = y;
    this.arrows = arrows;
    if (arrows == false) {
      upKey ='w';
      downKey = 's';
      leftKey= 'a';
      rightKey ='d';
    } else {
      upKey = UP;
      downKey = DOWN;
      leftKey= LEFT;
      rightKey =RIGHT;
    }
  }
  void handleKey(char k, int kc, boolean isDown) { //for keypressed
    int code;
    if (arrows) {
      if (k != CODED) return;
      code = kc;
    } else {
      if (k == CODED) return;
      code = Character.toLowerCase(k);
    }

    if (code == upKey)    up = isDown;
    if (code == downKey)  down = isDown;
    if (code == leftKey)  left = isDown;
    if (code == rightKey) right = isDown;
  }

 void update(float dt) {
  float dx = 0, dy = 0;
  if (left)  dx -= 1;
  if (right) dx += 1;
  if (up)    dy -= 1;
  if (down)  dy += 1;

  if (dx > 0) facingRight = true;     // new
  if (dx < 0) facingRight = false;    // new

  if (dx != 0 && dy != 0) {
    dx *= 0.7071;
    dy *= 0.7071;
  }

  x += dx * speed * dt;
  y += dy * speed * dt;
}

void display() {
  imageMode(CENTER);
  pushMatrix();
  translate(x, y);                   
  if (!facingRight) scale(-1, 1);     
  image(player, 0, 0, 600,400);                  
  popMatrix();
}
}