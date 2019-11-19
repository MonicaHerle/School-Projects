size(500, 500);
background(180);

int x = 250;
int y = 0;
int counter;
int row = 0;

do 
{
  y = row * 10;
  counter = 0;
  
  do 
  {
    x = 250 - row * 10 + counter * 20;
    
    if (row % 2 == 0) 
    {  
      fill(0);
      
    } else {
      fill(255);
      
    }
    
    quad(x, y, x - 10, y + 10, x, y + 20, x + 10, y + 10);
    
    counter++;
    
  } while (x < 250 + 10 * row);
  
  row++;
} while (y < 240);
