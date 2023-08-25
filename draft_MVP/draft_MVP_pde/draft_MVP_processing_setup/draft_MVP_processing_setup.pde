  String FilledBPath ="D:/Assets/ex Action/Solution filled Beaker.png";
  String LPath ="D:/Assets/indicators/Litmus Paper2.png";
 PImage FilledB, LP;
 
Buttons chemicals, containers, indicators, tools, litmusP;
Cards beakers, flask, testtube, Acids, neutral, Alkaline, LitmusP, Magnifier;
Container container;
Container2 container2;

void setup () {
  FilledB = loadImage (FilledBPath);
  LP = loadImage (LPath);
  size (1366, 768);

  robotoM = createFont ("C:/Users/FSP/Downloads/Telegram Desktop/Roboto/Fonts/roboto-medium.ttf", 11);
  textFont (robotoM);

  // Buttons
  chemicals = new Buttons ("CHEMICALS", #B17DFC, 57, 574);
  containers = new Buttons ("CONTAINERS", #10CCEB, 209, 574);
  indicators = new Buttons ("INDICATORS", #26C92B, 361, 574);
  tools = new Buttons ("TOOLS", #797979, 513, 574);
  chemicals.active = true;
  

  // Cards

  beakers = new Cards ("BEAKERS", "D:/Assets/Containers/Beakers.png", containers.fillColor, 49, 631);
  flask = new Cards ("FLASK", "D:/Assets/Containers/Flask.png", containers.fillColor, 201, 631);
  testtube = new Cards ("TESTTUBE", "D:/Assets/Containers/Test Tube.png", containers.fillColor, 353, 631);
  Acids = new Cards ("ACIDS", "D:/Assets/chemicals/Acids.png", chemicals.fillColor, 49, 631);
  neutral = new Cards ("NEUTRALS", "D:/Assets/chemicals/Acids.png", chemicals.fillColor, 201, 631);
  Alkaline = new Cards ("ALKALINES", "D:/Assets/chemicals/Acids.png", chemicals.fillColor, 353, 631);
  LitmusP = new Cards ("LITMUS PAPER", "D:/Assets/indicators/Litmus Paper.png", indicators.fillColor, 49, 631);
  Magnifier = new Cards ("MAGNIFIER", "D:/Assets/Tools/Magnifier.png", tools.fillColor, 49, 631);
  
  //Actions

  container = new Container (width/2, height/2);
  container2 = new Container2 (width/2 + 105.4, height/2);

}

void draw () {
  background (255);
  
  container.draw ();
  container2.draw ();
  navigationBars_draw ();
}

void mouseReleased () {
  navigationBars_mouseReleased ();
  if (containers.active) {
    containers_mouseReleased ();
  }
    if (chemicals.active) {
    chemicals_mouseReleased ();
  }
    if (indicators.active) {
    indicators_mouseReleased ();
  }
}
