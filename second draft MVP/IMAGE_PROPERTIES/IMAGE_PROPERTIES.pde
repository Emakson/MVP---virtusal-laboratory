Component flask, stand, stopcock, burette, ppt;

String backgroundImagePath = "D:/Assets/background - e.png";

PImage backgroundImage;
float tableTopY = 397;
float regionx = 519, regiony= 396, regionW = 186, regionH = 142, validx = 604, validy = 477, validW = 99;
float Tregionx = 1208, Tregiony= 253, TregionW = 158, TregionH = 224, Tvalidx = 1258, Tvalidy = 477, TvalidW = 99;

void setup () {
  size (1366, 768);

  backgroundImage = loadImage (backgroundImagePath);

  flask = new Component ("D:/Assets - SVG/flask - E.svg", 744.5, 319.79);
  flask.isFillable = true;
  flask.isMovable = true;
  flask.isSelectable = true;
  flask.isShakable = true;

  stand = new Component ("D:/Assets - SVG/stand - E.svg", 485, 80);
  stand.isFillable = false;
  stand.isMovable = false;
  stand.isSelectable = false;
  stand.isShakable = false;

  stopcock = new Component ("D:/Assets - SVG/stop cock - E.svg", 744.42, 484.09);
  stopcock.isFillable = false;
  stopcock.isMovable = true;
  stopcock.isSelectable = true;
  stopcock.isShakable = false; 

  burette = new Component ("D:/Assets - SVG/buerette - E.svg", 863.54, 380.78);
  burette.isFillable = true;
  burette.isMovable = true;
  burette.isSelectable = true;
  burette.isShakable = false;

  ppt = new Component ("D:/Assets - SVG/ppt - E.svg", 910.07, 488.87);
  ppt.isFillable = false;
  ppt.isMovable = true;
  ppt.isSelectable = true;
  ppt.isShakable = false;
}

void draw () {
  background (255);

  image (backgroundImage, 0, 0);

  flask.draw ();
  stand.draw();
  burette.draw ();
  stopcock.draw();
  ppt.draw();
}

void mousePressed () {
  flask.mousePressed ();
  burette.mousePressed ();
  stopcock.mousePressed ();
  ppt.mousePressed ();
}

void mouseDragged () {
  if (flask.hovered()) {
    flask.mouseDragged();
  }
  if (burette.hovered()) {
    burette.mouseDragged();
  }
  if (stopcock.hovered()) {
    stopcock.mouseDragged();
  }
  if (ppt.hovered()) {
    ppt.mouseDragged();
  }
}

void mouseReleased () {

  flask.mouseReleased ();
  burette.mouseReleased ();
  stopcock.mouseReleased ();
  ppt.mouseReleased();
}
