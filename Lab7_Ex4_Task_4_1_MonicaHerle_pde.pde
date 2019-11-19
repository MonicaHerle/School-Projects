void setup() {
  float [] array = {6.7, 5.9, 10, 23, 44, 4.6, 9.1, 100, 79};
  float value = 255;
  int index = 3;

  //call InsertAt function here
  array = InsertAt(array, value, index);

  println(array);
}

float [] InsertAt (float [] a, float v, int i) {
  int b = a.length + 1;
  int k = 0;
  float [] arr = new float [b];
  float [] arr2 = a;
  if (i > 0 && i < arr2.length - 1) {
    for (int j = 0; j < arr.length; j++) {
      if (j == i) {
        arr[j] = v;
      } else {
        arr[j] = arr2[k];
        k ++;
      }
    }
    return arr;
  } else {
    println("Operation Couldn't Be Done");
    return a;
  }
}
