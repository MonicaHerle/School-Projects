import javax.swing.JOptionPane;

void setup() {
  int max, column, row, x = 20, y = 20;
  background(0);
  size(850, 850); // The size 500*500 would not fit a 16*16 multiplication table

  do {
    String answer = JOptionPane.showInputDialog("How many rows would you like in your times table?" + "\nEnter a number between 1 and 16.");
    max = Integer.parseInt(answer);
  } while (max < 1 || max > 16);

  // Display the header of the table.
  text("X", x, y);
  x += 50;

  for (column = 1; column <= max; column++) {
    text (Integer.toString(column), x, y);
    x += 50;
  }

  // Display all the other rows of the table, using a nested loop.
  x = 20;
  y = 20;

  y += 50;

  for (row = 1; row <= max; row++) {
    text (Integer.toString(row), x, y);
    y += 50;
  }

  x = 20;
  y = 20;

  x += 50;
  y += 50;

  for (column = 1; column <= max; column++) 
  {
    for (row = 1; row <= max; row++)
    {
      if (row <= column) {
      int product = row * column;
      text(product, row * 50 + 20, column * 50 + 20);
      }
    }
  }
}
