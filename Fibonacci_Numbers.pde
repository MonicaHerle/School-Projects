import javax.swing.JOptionPane;

int sum = 0;
int sum1 = 0;
int sum2 = 1;
int sumi = 0;

void draw() {
  String input = JOptionPane.showInputDialog("Please enter a positive Integer greater than or equal to three: ");

  int n = Integer.parseInt(input);

  if (n >= 3) {
    while (sumi <= n - sum) {
      sumi = sum;
      sum = sum1 + sum2;
      sum1 = sumi;
      sum2 = sum;
      println(sum);
    }
    noLoop();
  } else {
    loop();
  }
}
