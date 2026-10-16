class Main {
  Pupet puppet1 = new Pupet(false, width/2, height/2);
  Pupet puppet2 = new Pupet(true, width/2, height/2);
  int lastTime = millis();
  int current = 0;
  int lastSwitch = 0;
  int interval = 800;

  void display() {
    background(bgs[current]);
    stroke(#FF0000);
    strokeWeight(3);
<<<<<<< HEAD
    line(1141, 292, 1058, 450);
    line(1058, 450, 800, 532);
    line(800, 532, 390, 786);
    line(1399, 283, 1402, 450);
    line(1402, 450, 1352, 532);
    line(1352, 532, 1084, 1000);

    puppet1.display();
    puppet2.display();
=======
    // line 1
    line(1141, 292, 1058, 450);
    line(1058, 450, 800, 532);
    line(800, 532, 390, 786);
    // line 2
    line(1399, 283, 1402, 450);
    line(1402, 450, 1352, 532);
    line(1352, 532, 1084, 1000);
>>>>>>> 512e90462488ba4a92521826664d45ff702a87bf
  }

  void update() {
    float dt = (millis() - lastTime) / 1000.0;
    lastTime = millis();
    puppet1.update(dt);
    puppet2.update(dt);

    if (millis() - lastSwitch >= interval) {
      current = (current + 1) % bgs.length;
      lastSwitch = millis();
    }
  }
<<<<<<< HEAD

  void keyPressed()  { puppet1.handleKey(key, keyCode, true);  puppet2.handleKey(key, keyCode, true); }
  void keyReleased() { puppet1.handleKey(key, keyCode, false); puppet2.handleKey(key, keyCode, false); }
}
=======
}
>>>>>>> 512e90462488ba4a92521826664d45ff702a87bf
