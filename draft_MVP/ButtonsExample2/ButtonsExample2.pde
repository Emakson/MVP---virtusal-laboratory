Buttons chemicals, containers, indicators, tools;

void setup () {
  size (1366, 768);

  surface.setLocation (30, 50);

  robotoM = createFont ("C:/Users/FSP/Downloads/Telegram Desktop/Roboto/Fonts/roboto-medium.ttf", 11);
  textFont (robotoM);
  
  chemicals = new Buttons ("CHEMICALS", #B17DFC, 56, 574);
  containers = new Buttons ("CONTAINERS", #10CCEB, 199, 574);
  indicators = new Buttons ("INDICATORS", #26C92B, 344, 574);
  tools = new Buttons ("TOOLS", #797979, 484, 574);
  
  chemicals.active = true;
}

void draw () {
  background (255);
  
  chemicals.draw ();
  containers.draw ();
  indicators.draw ();
  tools.draw();
}

void mouseReleased () {
  if (containers.hovered ()) {
    containers.active = true;
    chemicals.active = false;
  }
if (indicators.hovered ()) {
    indicators.active = true;
    chemicals.active = false; 
    containers.active = false;
}
if (tools.hovered ()) {
    tools.active = true;
    chemicals.active = false; 
    containers.active = false;
    indicators.active = false;
}
 if (chemicals.hovered ()) {
   chemicals.active = true;
   indicators.active = false;
   containers.active = false;
   tools.active = false;
 }
  if (containers.hovered ()) {
   chemicals.active = false;
   indicators.active = false;
   containers.active = true;
   tools.active = false;
 }
  if (indicators.hovered ()) {
   chemicals.active = false;
   indicators.active = true;
   containers.active = false;
   tools.active = false;
 }
  }
