PImage background;
int consle = 0;




void setup() {
  size(700,700);
   background = loadImage("Cotrol Room.jpg");
  
   
   
 }
void draw() {
   background(background);
 if(consle == 0){
 fill(#FFF9B9);
 rect(300,79,50,50);
 
 
 }
 if(consle == 4) {
     fill(#FFF9B9);
   rect(50,50,600,600);
  textSize(80);
  fill(0);
  textAlign(CENTER,CENTER);
  text("888",350,300);
 }
 
}
void mousePressed() {
  if(mouseX > 300 && mouseX < 350 && mouseY > 79 && mouseY < 129) consle = 4;
  
}
