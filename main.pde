class Main {
  int current = 0;       // index of the current background
  int lastSwitch = 0;    // time (ms) of the last switch
  int interval = 800;   // time

  void display() {
    background(bgs[current]);

  }

  void update() {
    if (millis() - lastSwitch >= interval) {
      current = (current + 1) % bgs.length;
      lastSwitch = millis();
    }
  }
}