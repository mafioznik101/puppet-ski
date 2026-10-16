class Main {
  int current = 0;       // index of the current background
  int lastSwitch = 0;    // time (ms) of the last switch
  int interval = 800;   // time

  void display() {
    background(bgs[current]);
    stroke(#FF0000);
    strokeWeight(3);
    // line 1
    line(1141, 292, 1058, 450);
    line(1058, 450, 800, 532);
    line(800, 532, 390, 786);
    // line 2
    line(1399, 283, 1402, 450);
    line(1402, 450, 1352, 532);
    line(1352, 532, 1084, 1000);
  }

  void update() {
    if (millis() - lastSwitch >= interval) {
      current = (current + 1) % bgs.length;
      lastSwitch = millis();
    }
  }
}
