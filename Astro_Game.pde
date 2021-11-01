PImage background;
int consle = 0;
PFont ConsleFont ;
String textString = "";
boolean consle1D = false;
boolean consle2D = false;


void setup() {
  size(700,700);
   background = loadImage("Cotrol Room.jpg");
  textSize(48);
  ConsleFont = loadFont("Monospaced.bold-48.vlw");
   
   
 }
void draw() {
   background(background);
 if(consle == 0){
 fill(#FFF9B9);
 
 rect(300,79,50,50);
 if(consle2D)
 fill(0,255,0);
 else fill(255,0,0);
 rect(600,100,100,100);
 
 if(consle1D)
 fill(0,255,0);
 else fill(255,0,0);
 rect(400,500,100,100);
 
 }
 if(consle == 4) {
     fill(#FFF9B9);
   rect(50,50,600,600);
  textSize(80);
  fill(0);
  textAlign(CENTER,CENTER);
  text("888",350,300);
  
 }
 if(consle == 1) {
  fill(#A2A2A2);
  rect(50,50,600,600);
  textSize(80);
  textAlign(CENTER,TOP);
  fill(0);
  textFont(ConsleFont);
  text("Enter Code",350,100);
  text(textString,350,350);
 }
 if(consle == 2) {
   fill(#A2A2A2);
   rect(50,50,600,600);
   textSize(80);
   textAlign(CENTER,TOP);
   fill(0);
   textFont(ConsleFont);
   text("Enter Letters",350,350);
   text(textString,350,350);
 }
 
}
void mousePressed() {
  if(mouseX > 300 && mouseX < 350 && mouseY > 79 && mouseY < 129) consle = 4;
  if(mouseX > 400 && mouseX < 500 && mouseY > 500 && mouseY < 600) consle = 1;
  if(mouseX > 600 && mouseX < 100 && mouseY > 200 && mouseY < 100) consle = 2;
}
void keyPressed() {
  if(consle ==1) {
    
  
    if(key != CODED){
      String aloud = "0123456789";
      String keyString = "" + key;
      if(aloud.contains(keyString))
        textString += keyString;
      else  if(key == BACKSPACE)
        textString = textString.substring(0,textString.length()-1);
      else if(key == ENTER || key == RETURN){
        if(textString.equals("888")) consle1D = true;
        textString = "";
        consle = 0;
        
      }
    }
    
  }  
}
