int a, b, c, d;

void setup() {
  size(800, 800);
  background(255, 13, 199);
}

void draw() {
  
  line(a, b, c, d);
  
  a = (int)random(0, 400);
  b = (int)random(0, 400);
  c = (int)random(400, 800);
  d = (int)random(400, 800);
}
