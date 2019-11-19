size(400, 400);

for (int i = 0; i < width; i+= 20)
{
  for (int j = 0; j <= i; j += 20)
  {
    if (i == j || i + j == width - 20)
    {
      fill(0);
    } else {
      fill(255);
    }

    rect(i, j, 20, 20);
  }
}
