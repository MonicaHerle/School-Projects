void setup()
{
  int x, y, z, counter = 0;
  do {
    x = (int) random(1, 5);
    y = (int) random(1, 5);
    z = (int) random(1, 5);
    println("3 random numbers: ", x, y, z);

    if (allTheSame (x, y, z))
      println("The three numbers are the same");
    else
      printResult(leastOf3(x, y, z), greatestOf3(x, y, z));
    counter ++;
  } while (counter < 10);
}

boolean allTheSame (int x, int y, int z)
{
  boolean a;
  if (x == y && y == z && x == z) 
  {
    a = true;
  } else {
    a = false;
  }
  return a;
}

int greatestOf3 (int x, int y, int z)
{
  int a = maxOf2(x, y);
  int b = maxOf2(a, z);
  return b;
}

int maxOf2 (int x, int y)
{
  if (x >= y)
  {
    return x;
  } else {
    return y;
  }
}

int leastOf3 (int x, int y, int z)
{
  int a = minOf2(x, y);
  int b = minOf2(a, z);
  return b;
}

int minOf2 (int x, int y) 
{
  if (x <= y)
  {
    return x;
  } else {
    return y;
  }
}

void printResult (int x, int y) 
{
  println("Minimum is", x, "and maximum is", y);
}
