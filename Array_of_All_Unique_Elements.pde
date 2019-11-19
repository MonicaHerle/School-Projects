void setup() {

  int [] arr1 = {3, 5, 4, 20, 10};
  int [] arr2 = {6, 10, 7, 27, 6};
  int i = 0;
  int j = 0;
  int x = 0;
  
  while (i < arr1.length) {
    while (j < arr1.length - 1) {
      if (arr1[i] == arr1[j + 1]) {
        x = 1;
      }
      j++;
    }
    i++;
  }

  if (x == 1) {
    println("Not Unique");
  } else {
    println("Unique");
  }

  i = 0;
  j = 0;
  x = 0;
  while (i < arr2.length) {
    while (j < arr2.length - 1) {
      if (arr2[i] == arr2[j + 1]) {
        x = 1;
      } 
      j++;
    }
    i++;
  }

  if (x ==1) {
    println("Not Unique");
  } else {
    println("Unique");
  }
}
