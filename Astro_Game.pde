PImage background;
int consle = 0;
PFont ConsleFont ;
String textString = "";
boolean consle1D = false;
boolean consle2D = false;
boolean consle3D = false;
int Levels = 1;
int WireWidth = 50;

void setup() {
  size(700, 700);
  background = loadImage("Cotrol Room.jpg");
  textSize(48);
  ConsleFont = loadFont("Monospaced.bold-48.vlw");
}
void draw() {
  background(background);
  if (Levels == 1) {
    drawroom1();
    if (consle1D && consle2D && consle3D) {
      Levels = 2;
      background = loadImage( "Space Walk level 2.jpg");
      consle1D = false;
      consle2D = false;
      consle3D = false;
      consle = 0;
    }
  }
  if (Levels == 2)
    drawroom2();
  if(Levels == 3)
     drawroom3();
}
void mousePressed() {
  if (Levels ==  1) {
    if (mouseX > 300 && mouseX < 350 && mouseY > 79 && mouseY < 129) consle = 4;
    if (mouseX > 400 && mouseX < 500 && mouseY > 500 && mouseY < 600) consle = 1;
    if (mouseX > 600 && mouseX < 700 && mouseY > 100 && mouseY < 200) consle = 2;
    if (mouseX > 50 && mouseX < 150 && mouseY > 100 && mouseY < 150) consle =3;
  }
  if (Levels == 2) {
    if (mouseX > 500 && mouseX < 600 && mouseY > 300 && mouseY < 400) consle = 1;
    if (mouseX > 600 && mouseX < 700 && mouseY > 400 && mouseY < 500) consle = 2;
    if (mouseX > 600 && mouseX < 700 && mouseY > 600 && mouseY < 700)  consle = 3; 
    if (consle == 3) {
      if (mouseX > 350 && mouseX < 550 && mouseY > 500 && mouseY < 703) {consle = 0;
      consle3D = true;
    }
    }
  }
}
void keyPressed() {
  if (consle ==1) {    

    if (key != CODED) {
      String aloud = "0123456789";
      String keyString = "" + key;
      if (aloud.contains(keyString))
        textString += keyString;
      else  if (key == BACKSPACE)
        textString = textString.substring(0, textString.length()-1);
      else if (key == ENTER || key == RETURN) {
        if (textString.equals("888")) consle1D = true;
        textString = "";
        consle = 0;
      }
    }
  }
  if (consle == 4) {
    consle =0;
  }
  if (consle ==2) {
    String aloud ="qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJLZXCVBNM ";
    String keyString = "" + key;
    if (aloud.contains(keyString))
      textString += keyString;
    else if (key == BACKSPACE)
      textString = textString.substring(0, textString.length()-1);
    else if (key == ENTER || key == RETURN) {     
      if ((textString.equals("AsDnY") && Levels == 1) || (textString.toLowerCase().equals("double agent") && Levels == 2)) consle2D = true;
      textString = "";
      consle = 0;
    }
  }
  if (consle ==3) {
    String aloud ="qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJLZXCVBNM ";
    String keyString = "" + key;
    if (aloud.contains(keyString))
      textString += keyString;
    else if (key == BACKSPACE)
      textString = textString.substring(0, textString.length()-1);
    else if (key == ENTER || key == RETURN) {
      if (textString.toLowerCase().equals("fence")) consle3D = true;

      textString = "";
      consle = 0;
    }
  }
}
void drawroom1() {
  if (consle == 0) {
    fill(#FFF9B9);

    rect(300, 79, 50, 50);
    if (consle2D)
      fill(0, 255, 0);
    else fill(255, 0, 0);
    rect(600, 100, 100, 100);

    if (consle1D)
      fill(0, 255, 0);
    else fill(255, 0, 0);
    rect(400, 500, 100, 100);

    if (consle3D)
      fill(0, 255, 0);
    else fill(255, 0, 0); 
    rect(50, 50, 100, 100);
  }
  if (consle == 4) {
    fill(#FFF9B9);
    rect(50, 50, 600, 600);
    textSize(80);
    fill(0);
    textAlign(CENTER, CENTER);
    text("888", 350, 300);
  }
  if (consle == 1) {
    fill(#A2A2A2);
    rect(50, 50, 600, 600);
    textSize(80);
    textAlign(CENTER, TOP);
    fill(0);
    textFont(ConsleFont);
    text("Enter Code", 350, 100);
    if (consle1D) {
      text("AsDnY", 350, 350);
    } else {
      text(textString, 350, 350);
    }
  }
  if (consle == 2) {
    fill(#A2A2A2);
    rect(50, 50, 600, 600);
    textSize(80);
    textAlign(CENTER, TOP);
    fill(0);
    textFont(ConsleFont);
    if (consle2D) {     
      text("What runs around\nthe whole yard\nwithout moving?", 350, 350);
    } else {
      text("Enter Letters", 350, 100);
      text(textString, 350, 350);
    }
  }
  if (consle == 3) {
    fill(#A2A2A2);
    rect(50, 50, 600, 600);
    textSize(80);
    textAlign(CENTER, TOP);
    fill(0);
    textFont(ConsleFont);
    text("Answer Riddle", 350, 100);
    text(textString, 350, 350);
  }
}

void drawroom2() {

 
  if(consle1D)
    fill(0,255,0);
  else
    fill(255,0,0);
   rect(500, 300, 100, 100);
 
  if(consle2D)
    fill(0,255,0);
  else
    fill(255,0,0);
  rect(600, 400, 100, 100);
   
   if(consle3D)
    fill(0,255,0);
  else
    fill(255,0,0);
  rect(600, 600, 100, 100);



  if (consle == 1) {
    fill(#A2A2A2);
    rect(50, 50, 600, 600);
    textSize(80);
    textAlign(CENTER, TOP);
    fill(0);
    textFont(ConsleFont);
    text("Conect Wires", 350, 100);
     if(mousePressed && abs(mouseX - (50 + WireWidth)) < 30 && mouseY > 400 && mouseY < 450) { 
     WireWidth = mouseX -50;
     
     
     }
     rect(50,400,WireWidth,50);
     rect(600,400,50,50);
    if(WireWidth >= 500){
    consle1D = true;
     consle = 0;
    }    
  }
  if (consle == 2) {
    fill(#A2A2A2);
    rect(50, 50, 600, 600);
    textSize(80);
    textAlign(CENTER, TOP);
    fill(0);
    textFont(ConsleFont);

    text("Solve puzzle \n \n Agent Agent", 350, 100);
    text(textString, 350, 350);
  }
  if (consle == 3) {
    fill(#A2A2A2);
    rect(50, 50, 600, 600);
    textSize(80);
    textAlign(CENTER, TOP);
    fill(0);
    textFont(ConsleFont);
    text("Find The One \n is Bigger", 350, 100);

    fill(#FC4573);
    ellipse(200, 350, 200, 200);
    ellipse(350, 500, 200, 203);
  }
  if(consle1D && consle2D && consle3D){
    Levels = 3;
    
}
}
  void drawroom3() {
    background(#9B9B9B);
    fill(0);
    textAlign(CENTER,TOP);
    textSize(100);
    text("You Have \n Escaped!!",350,250);
    
  }
