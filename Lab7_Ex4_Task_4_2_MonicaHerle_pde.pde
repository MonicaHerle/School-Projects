void setup()
{
  float [] first_array = {6.7, 5.9, 10, 23, 44, 4.6, 9.1};
  float [] second_array = {11, 12, 13, 14, 15, 16, 17};

  //call SwapArrays function here
  float [] f = SwapArrays(first_array, second_array);
  float [] s = SwapArrays(second_array, first_array);

  first_array = f;
  second_array = s;

  println ("The first array is: ");
  println (first_array);
  println ("The second array is: ");
  println (second_array);
}

float [] SwapArrays(float [] f, float [] s) {
  float [] arrF = f;
  float [] arrS = s;
  float [] arr = new float [arrF.length];
  if (arrF.length == arrS.length) {
    for (int i = 0; i < arrF.length; i ++) {
      arr = arrS;
    }
    return arr;
  } else {
    println("Operation Couldn't Be Done");
    return f;
  }
}
