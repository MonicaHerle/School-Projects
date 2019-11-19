int a, b, c, d;

void setup() {
  
  size(800, 800);
  background(227, 87, 201);
  
}


void draw() {
  
  line(a, b, c, d);
  
  a = (int) random(0, 800);
  b = (int) random(0, 800);
  
  line(c, d , a, b);
  
  c = (int) random(0, 800);
  d = (int) random(0, 800);
}
