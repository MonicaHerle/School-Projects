int xPos = 25;
int yPos = 25;
int XPos = 75;
int YPos = 75;
int aPos = 125;
int bPos = 125;

void setup() {
  size(500, 500);
}

void draw() {
  noStroke();

  if (xPos < 475 && yPos <= 25) {
    background(255, 93, 161);
  } 

  if (yPos < 475 && xPos >= 475) {
    background(255, 212, 93);
  }

  if (xPos > 25 && yPos >= 475) {
    background(93, 129, 255);
  }

  if (yPos > 25 && xPos <= 25) {
    background(93, 255, 232);
  }

  fill(0, 0, 255);
  ellipse(xPos, yPos, 50, 50);

  if (xPos < 475 && yPos <= 25) {
    xPos += 5;
  } 

  if (yPos < 475 && xPos >= 475) {
    yPos += 5;
  }

  if (xPos > 25 && yPos >= 475) {
    xPos -= 5;
  }

  if (yPos > 25 && xPos <= 25) {
    yPos -= 5;
  }

  if (XPos < 400 && YPos <= 100) {
    fill(255, 165, 28);
  } 

  if (YPos < 400 && XPos >= 400) {
    fill(230, 255, 93);
  }

  if (XPos > 100 && YPos >= 400) {
    fill(93, 232, 255);
  }

  if (YPos > 100 && XPos <= 100) {
    fill(229, 31, 240);
  }
  rect(75, 75, 350, 350);

  fill(41, 100, 255); 
  ellipse(XPos, YPos, 50, 50);

  if (XPos < 400 && YPos <= 100) {
    XPos += 5;
  } 

  if (YPos < 400 && XPos >= 400) {
    YPos += 5;
  }

  if (XPos > 100 && YPos >= 400) {
    XPos -= 5;
  }

  if (YPos > 100 && XPos <= 100) {
    YPos -= 5;
  }

  if (aPos < 325 && bPos <= 175) {
    fill(206, 162, 209);
  } 

  if (bPos < 325 && aPos >= 325) {
    fill(52, 174, 247);
  }

  if (aPos > 175 && bPos >= 325) {
    fill(38, 209, 39);
  }

  if (bPos > 175 && aPos <= 175) {
    fill(245, 123, 119);
  }
  
  rect(150, 150, 200, 200);

  fill(93, 110, 255);
  ellipse(aPos, bPos, 50, 50);

  if (aPos < 325 && bPos <= 175) {
    aPos += 5;
  } 

  if (bPos < 325 && aPos >= 325) {
    bPos += 5;
  }

  if (aPos > 175 && bPos >= 325) {
    aPos -= 5;
  }

  if (bPos > 175 && aPos <= 175) {
    bPos -= 5;
  }
}
