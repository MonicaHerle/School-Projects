import javax.swing.JOptionPane;

String input;

input = JOptionPane.showInputDialog("Please Enter a string with 4 characters (e.g. ABCD): ");

char s0 = input.charAt(0);
char s1 = input.charAt(1);
char s2 = input.charAt(2);
char s3 = input.charAt(3);

println(s3 + "" + s2 + "" + s1 + "" + s0);
