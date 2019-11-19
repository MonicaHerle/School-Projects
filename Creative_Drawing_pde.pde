int y = 395;
int yPos = -200;

void setup() {
  size(500, 500);
}

boolean goingUp = true;
boolean goingDown = true;

void draw() {
  background(0);

  noStroke();

  //Left Eye
  fill(255);
  triangle(125, 225, 125, 125, 35, 175);
  triangle(125, 225, 125, 125, 215, 175);
  fill(4, 93, 0);
  ellipse(125, 175, 100, 100);
  fill(5, 113, 0);
  ellipse(125, 175, 90, 90);
  fill(6, 139, 0);
  ellipse(125, 175, 80, 80);
  fill(7, 162, 0);
  ellipse(125, 175, 70, 70);
  fill(8, 188, 0);
  ellipse(125, 175, 60, 60);
  fill(9, 211, 0);
  ellipse(125, 175, 50, 50);
  fill(11, 252, 0);
  ellipse(125, 175, 40, 40);
  fill(105, 255, 98);
  ellipse(125, 175, 30, 30);
  fill(0);
  ellipse(125, 175, 20, 70);

  //Right Eye
  fill(255);
  triangle(375, 225, 375, 125, 465, 175);
  triangle(375, 225, 375, 125, 285, 175);
  fill(0, 4, 93);
  ellipse(375, 175, 100, 100);
  fill(0, 5, 113);
  ellipse(375, 175, 90, 90);
  fill(0, 6, 139);
  ellipse(375, 175, 80, 80);
  fill(0, 7, 162);
  ellipse(375, 175, 70, 70);
  fill(0, 8, 188);
  ellipse(375, 175, 60, 60);
  fill(0, 9, 211);
  ellipse(375, 175, 50, 50);
  fill(0, 11, 252);
  ellipse(375, 175, 40, 40);
  fill(25, 21, 255);
  ellipse(375, 175, 30, 30);
  fill(0);
  ellipse(375, 175, 20, 70);

  //Blink
  if (goingDown) {
    yPos -= 2;
  } else {
    yPos += 2;
  }

  if (yPos <= -200) {
    goingDown = false;
  } else if (yPos >= 120) {
    goingDown = true;
  }

  fill(0);
  rect(15, yPos, 450, 110);

  //Tongue
  if (goingUp) {
    y ++;
  } else {
    y --;
  }

  if (y >= 395) {
    goingUp = false;
  } else if (y <= 375) {
    goingUp = true;
  }

  fill(242, 174, 234);
  triangle(250, y - 35, 255, y - 20, 245, y - 20);
  rect(245, y - 20, 10, 10);
  ellipse(250, y - 10, 10, 10);
  stroke(0);
  strokeWeight(1.5);
  line(250, y - 18, 250, y);
  fill(0);
  rect(240, 347, 20, 21);

  //Mouth
  noFill();
  stroke(60);
  strokeWeight(3);
  line(250, 340, 250, 360);
  arc(230, 360, 40, 40, 0, 5 * PI / 8);
  arc(270, 360, 40, 40, PI / 4, PI);

  //Nose
  noStroke();
  fill(227, 89, 213);
  triangle(225, 300, 275, 300, 250, 340);
  fill(240, 114, 227);
  triangle(235, 305, 265, 305, 250, 330);
  fill(0);
  ellipse(235, 325, 22, 22);
  ellipse(265, 325, 22, 22);
  stroke(60);
  strokeWeight(3);
  line(227, 298, 215, 240);
  line(273, 298, 285, 240);

  //Whiskers
  noFill();
  strokeWeight(2);
  stroke(255);
  arc(100, 360, 250, 200, -2 * PI / 3, - PI / 5);
  arc(100, 380, 250, 200, -3 * PI / 4, - PI / 5);
  arc(120, 400, 210, 200, -4 * PI / 5, - PI / 5);
  arc(400, 360, 250, 200, -4 * PI / 5, - PI / 3);
  arc(400, 380, 250, 200, -4 * PI / 5, - PI / 4);
  arc(380, 400, 210, 200, -4 * PI / 5, - PI / 5);
  
  //Display time
  fill(255);
  text(hour() + " : " + minute() + " : " + second(), 225, 475);
  text(month() + " / " + day() + " / " + year(), 218, 490);
}
