PGraphics pg;

void setup() {
  size(500, 500,P2D);
  pg = createGraphics(500, 500,P2D);
  smooth();
  pg.stroke(255);
  imageMode(CENTER);
  //
}


void draw() {
  float dd=dist(pmouseX, pmouseY, mouseX, mouseY);
  translate(width/2, height/2);
  background(0);
  if (keyPressed) {
    if (key == 'c' || key == 'C') {
      pg = createGraphics(500, 500,P2D);
    }
  }
  if (mousePressed==true) {
    pg.beginDraw();
    pg.smooth();
    pg.strokeWeight(4);
    pg.stroke(255);
    pg.strokeWeight(map(dd, 0, 100, 2, 12));
    pg.line(pmouseX, pmouseY, mouseX, mouseY);
    pg.endDraw();
  }



  for (int i=0; i<10; i++) {
    pushMatrix();
    rotate(radians(i*36));
    image(pg, 0, 0, 500, 500);
    popMatrix();
  }
  if (keyPressed) {
    if (key == 'S' || key == 's') {
      saveFrame("snap.png");
    }
  }
}

