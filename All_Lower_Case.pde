void setup() {
  String str = "ENGG 233, Fall 2019, UCalgary";
  String lowerStr = allLowercase (str);
  println(lowerStr);
}

String allLowercase (String a) {
  int counter = a.length();
  int index = 0;
  char character;
  String array [] = new String [a.length()];
  String answer = " ";
  
  while(counter > 0) {
    character = a.charAt(index);
    
    if(character >= 'A' && character <= 'Z') {
      character += 32;
    }
    array[index] = str(character);
    answer = join(array, "");  
    // join combines an  array of Strings into one String
    index ++;
    counter --;
  }

  return answer;
}
