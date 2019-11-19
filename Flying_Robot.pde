int x;

void setup() {
  size(500, 500);  // Size of canvas
}

void draw() {
  background(#11C9D8); // Background Colour
  strokeWeight(2); //Stroke Size
  fill(#C1C1C1); // Robot Colour

  //Head
  rect(200 + x, 50 - x, 100, 100);
  arc(250 + x, 120 - x, 32, 32, 0, PI); //Smile
  fill(245); //Eye Colour
  ellipse(225 + x, 88 - x, 17, 35); //Eye
  ellipse(275 + x, 88 - x, 17, 35); //Eye
  ellipse(250 + x, 105 - x, 10, 10); //Nose
  stroke(43, 234, 98);
  fill(0);
  ellipse(226 + x, 98 - x, 10, 10); //Pupil
  ellipse(276 + x, 98 - x, 10, 10); //Pupil
  stroke(0);
  fill(#C1C1C1); //Robot Colour

  //Neck
  line(235 + x, 150 - x, 235 + x, 175 - x);
  line(265 + x, 150 - x, 265 + x, 175 - x);

  //Body
  rect(200 + x, 175 - x, 100, 125);

  //Left Arm
  line(200 + x, 205 - x, 135 + x, 205 - x);
  line(200 + x, 220 - x, 135 + x, 220 - x);

  //Left Hand
  rect(110 + x, 200 - x, 25, 25);

  //Right Arm
  line(300 + x, 205 - x, 365 + x, 205 - x);
  line(300 + x, 220 - x, 365 + x, 220 - x);

  //Right Hand
  rect(365 + x, 200 - x, 25, 25);

  //Left Leg
  line(215 + x, 300 - x, 215 + x, 375 - x);
  line(230 + x, 300 - x, 230 + x, 375 - x);

  //Left Foot
  rect(205 + x, 375 - x, 30, 20);

  //Right Leg
  line(270 + x, 300 - x, 270 + x, 375 - x);
  line(285 + x, 300 - x, 285 + x, 375 - x);

  //Right Foot
  rect(265 + x, 375 - x, 30, 20);
  
  x++;
}
