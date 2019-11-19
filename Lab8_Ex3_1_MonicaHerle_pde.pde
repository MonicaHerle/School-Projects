class Point {
  float x;
  float y;
  float z;
}

void FillPoint(Point P) {
  P.x = random(1, 100);
  P.y = random(1, 100);
  P.z = random(1, 100);
}

float DistanceBetweenPoints(Point pt1, Point pt2) {
  float d = sqrt(pow(pt1.x - pt2.x, 2) + pow(pt1.y - pt2.y, 2) + pow(pt1.z - pt2.z, 2));
  return d;
}

void setup() {
  Point a = new Point();
  Point b = new Point();
  FillPoint(a);
  FillPoint(b);
  
  float d = DistanceBetweenPoints(a, b);
  
  println("The first point is: ");
  println("(" + a.x + " , " + a.y + " , " + a.z + ")");
  println("\nThe second point is: ");
  println("(" + b.x + " , " + b.y + " , " + b.z + ")");
  println("\nThe Cartesian distance between the two points is: ");
  println(d);
}
