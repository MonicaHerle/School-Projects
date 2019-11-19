import javax.swing.JOptionPane;

String input;
String openInput;
String closedInput;

input = JOptionPane.showInputDialog("Would you like an open or closed mortgage: ");

if (input.equals("open") == true || input.equals("Open") == true) {
  openInput = JOptionPane.showInputDialog("What's the term duration you would like (1, 3, 5): ");
  int open1 = Integer.parseInt(openInput);
  if (open1 == 1) {
    println("Your mortgage rate is: 7.10%");
  } else if (open1 == 3) {
    println("Your mortgage rate is: 7.50%");
  } else if (open1 == 5) {
    println("Your mortgage rate is: Not Available");
  } else {
    println("Invalid Term Duration!");
  }
} else if (input.equals("closed") == true || input.equals("Closed") == true) {
  closedInput = JOptionPane.showInputDialog("What's the term duration you would like (1, 3, 5): ");
  int closed1 = Integer.parseInt(closedInput);
  if (closed1 == 1) {
    println("Your mortgage rate is: 5.30%");
  } else if (closed1 == 3) {
    println("Your mortagage rate is: 5.00%");
  } else if (closed1 == 5) {
    println("Your mortgage rate is: 5.75%");
  } else {
    println("Invalid Term Duration!");
  }
} else {
  println("Invalid mortgage type!");
}
