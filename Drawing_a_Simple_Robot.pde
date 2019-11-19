size(500, 500);  // Size of canvas
background(#11C9D8); // Background Colour
strokeWeight(2); //Stroke Size
fill(#C1C1C1); // Robot Colour

//Head
rect(200, 50, 100, 100);
arc(250, 120, 32, 32, 0, PI); //Smile
fill(245); //Eye Colour
ellipse(225, 88, 17, 35); //Eye
ellipse(275, 88, 17, 35); //Eye
ellipse(250, 105, 10, 10); //Nose
stroke(43, 234, 98);
fill(0);
ellipse(226, 98, 10, 10); //Pupil
ellipse(276, 98, 10, 10); //Pupil
stroke(0);
fill(#C1C1C1); //Robot Colour

//Neck
line(235, 150, 235, 175);
line(265, 150, 265, 175);

//Body
rect(200, 175, 100, 125);

//Left Arm
line(200, 205, 135, 205);
line(200, 220, 135, 220);

//Left Hand
rect(110, 200, 25, 25);

//Right Arm
line(300, 205, 365, 205);
line(300, 220, 365, 220);

//Right Hand
rect(365, 200, 25, 25);

//Left Leg
line(215, 300, 215, 375);
line(230, 300, 230, 375);

//Left Foot
rect(205, 375, 30, 20);

//Right Leg
line(270, 300, 270, 375);
line(285, 300, 285, 375);

//Right Foot
rect(265, 375, 30, 20);

//Text
fill(#00746D);
text("Drawing a Simple Robot", 185, 450);
text("September 18, 2019", 190, 475);
