size(600, 600);
background(#2024B2);

import javax.swing.JOptionPane;

String xInput;
xInput = JOptionPane.showInputDialog("Enter value of x coordinate: ");

int xPos = Integer.parseInt(xInput);

String radInput;
radInput = JOptionPane.showInputDialog("Enter value of circle's radius: ");

int radius = Integer.parseInt(radInput);

String yInput;
yInput = JOptionPane.showInputDialog("Enter value of y coordinate: ");

int yPos = Integer.parseInt(yInput);

double area = PI * (radius * radius);

ellipse(xPos, yPos, 2 * radius, 2 * radius);

line(xPos, yPos, xPos, yPos - radius);

fill(0);
text("Area = " + area, xPos, yPos + 10);
text("radius = " + radius, xPos, yPos / 1.5);
