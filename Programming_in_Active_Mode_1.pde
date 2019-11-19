int value = 0;
int r = 30;
void setup(){
  size(600, 600);
}
void draw(){
  if(mousePressed){
    fill(value, 100, 100);
    ellipse(mouseX, mouseY, r, r);
  }
}

void mousePressed(){
 value = (int) random (1, 255); //look at the notes on fucntion random in processing.org/reference
}

void mouseReleased() {
  r *= 2;
}
