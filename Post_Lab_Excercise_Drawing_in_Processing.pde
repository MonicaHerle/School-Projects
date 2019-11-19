// FUNCTIONS TO MANAGE THE SIZE AND BACKGROUND OF A DISPLAY WINDOW
size(800, 800);                  // Creates Display Window of Size 800 by 800 pixels
background(255);                 // set the Display Window background to white

// VARIABLE DECLARATIONS
int x = 50;                      // Create a variable x with the value of 50
int y = 60;                      // Create a variable y with the value of 60
float width = 40, height = 80;

// USE fill FUNTION TO SET THE COLOR FOR SHAPES (RED IS 0, GREEN IS 102, BLUE IS 153)
fill(0, 102, 153);
ellipse(x + 20, y, height, height); // draw a circle with diameter of 80 at x + 20, y
fill(0);                        // set fill value to black
rect(x, 110, width, height);
noFill();                       // set fill to none
rect(x + 20, 130, 40, 80);

// ADDING TEXT ON THE DISPLAY WINDOW
textSize(10);                   // set the text size to 10
text( "Rectangles", 100, 120);
float area;
area = x * y + 100;

// DISPLAY OUTPUT ON THE CONSOLE PANE
String s = "Rectangle's Area is " + area;
println("here is some output on the console pane...");
println("The area of the rectangle= " + area);
text(s, 50, 250);
