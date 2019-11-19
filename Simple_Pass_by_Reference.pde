void setup ()
{
  float[] my_array = {0.5, 1.0, 1.5, 2.0, 2.5};

  // call square_each function here
  my_array = square_each(my_array);

  println (my_array);
}

float [] square_each (float [] input) {
  int a = input.length;
  float [] square = new float [a];

  for (int i = 0; i < input.length; i++) {
    square[i] = input[i] * input[i];
  }

  return square;
}
