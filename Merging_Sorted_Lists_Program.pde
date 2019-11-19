void setup() {
  int n = 5;
  int m = 8;

  int [] Array1 = new int [n];
   for (int i = 0; i < n; i++) {
   Array1[i] = (int) random(0, 50);
   }
   Array1 = sort (Array1);
   
   int [] Array2 = new int [m];
   for (int j = 0; j < m; j++) {
   Array2[j] = (int) random(0, 50);
   }
   Array2 = sort (Array2);
   
  int [] Array3 = new int [m + n];
  int a = 0, b = 0, c = 0;
  
  while (b < Array1.length && c < Array2.length) {
    if (Array1[b] < Array2[c]) {
     Array3[a] = Array1[b];
     a++;
     b++;
    } else {
      Array3[a] = Array2[c];
      a++;
      c++;
    }
  }
  
  while (b < Array1.length) {
    Array3[a] = Array1[b];
    a++;
    b++;
  }
  
  while (c < Array2.length) {
    Array3[a] = Array2[c];
    c++;
    a++;
  }
  
  println(Array3);
}
