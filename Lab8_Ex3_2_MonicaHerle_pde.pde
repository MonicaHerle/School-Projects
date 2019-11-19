class Student {
  int id;
  float grade;
}

void PopulateArray (Student[] a) {
  for (int index = 0; index < a.length; index++) {
    a[index].id = index + 1;
    a[index].grade = random(40, 100);
    
    println(a[index].id + "     " + a[index].grade);
  }
}

float Calculate_Average (Student[] input) {
  float average = 0;
  float averageI = 0;
  for (int i = 0; i < input.length; i++) {
    averageI = average;
    average = input[i].grade + averageI;
  }
  return average / input.length;
}

void setup() {
  
  println("Id    Grade");
  
  Student[] arr = new Student[10];
  
  for (int i = 0; i < arr.length; i++) {
    arr[i] = new Student ();
  }
  
  PopulateArray(arr);
  
  float class_average = Calculate_Average(arr);
  
  println("\n\nClass Average");
  println(class_average);
  
}
