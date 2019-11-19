void setup()
{ 
  int[] students_id = {12757, 20001, 12334, 14332, 99999, 
    10111, 20101, 12034, 10332, 99991};
  double[] midterm_marks = {99, 67, 88, 91, 56, 90, 70, 69, 79, 59};
  double[] final_marks = {89, 76, 80, 67, 99, 98, 56, 96, 90, 60};
  String[] students_name= {"Tim", "Joe", "Ali", "Kim", "Pam", 
    "Rob", "Ben", "Ted", "Lee", "Jim"};
  char [] letter_grades = new char [10];
  double [] average_array = new double [10];

  calculate_student_average(midterm_marks, final_marks, average_array);
  letter_grade_calculation(average_array, letter_grades);

  println("Name \t" + "id \t" + "Mid" + "\t" + "Final \t" + "Average \t" + "Mark");
  println("-----------------------------------------------------------");

  print_records(students_id, midterm_marks, final_marks, students_name, average_array, letter_grades);

  println("-------------------------");
  println("Class Midterm Average is: " + nfc((float)calculate_class_average(midterm_marks), 1));
  println("Class Final Average is: " + nfc((float)calculate_class_average(final_marks), 1));

  // Array of indices will be used to indicate the order of records based on
  // students' id numbers.
  int[] indices = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

  // Insertion sort will reorder the indices based on ids in ascending order.
  // (The array students_id won't change at all.)
  sort_records_by_id(indices, students_id);

  println();  
  println("Students records after sorting id by numbers:");

  println("Name \t" + "id \t" + "Mid" + "\t" + "Final \t" + "Average \t" + "Mark");
  println("-----------------------------------------------------------");

  print_sorted_records(indices, students_id, 
    midterm_marks, final_marks, students_name, 
    average_array, letter_grades);

  println("-------------------------");
  println("Class Midterm Average is: " + nfc((float)calculate_class_average(midterm_marks), 1));
  println("Class Final Average is: " + nfc((float) calculate_class_average(final_marks), 1));

  // Search for positions of students in the array of names and print
  // their records, if available.

  // This search should succeed.
  int position = search(students_name, "Kim");
  if (position == -1) {
    println("Search failed: " + "Kim" + " NOT FOUND");
  } else {
    println(students_name[position]
      + " was found with id " + students_id[position] 
      + ", midterm mark " + midterm_marks[position]
      + ", final mark " + final_marks[position] 
      + ", term average " + average_array[position]
      + ", and overall grade " + letter_grades[position]);
  }    
  
  // This search should fail.
  position = search(students_name, "Sam");    
  if (position == -1) {
    println("Search failed: " + "Sam" + " NOT FOUND");
  } else {
    println(students_name[position]
      + " was found with id " + students_id[position] 
      + ", midterm mark " + midterm_marks[position]
      + ", final mark " + final_marks[position] 
      + ", term average " + average_array[position]
      + ", and overall grade " + letter_grades[position]);
  }
}

double calculate_class_average(double [] exam) {
  // This function is supposed to calculate a class average, for either the
  // midterm or the final exam

  double sum = 0;
  for (int i = 0; i < exam.length; i++) {
    sum += exam [i];
  }
  double average = sum / exam.length;

  return average;
}

void calculate_student_average (double [] mid_mark, double [] final_mark, double [] avg_arr) {
  // This function is supposed to calculate and return the average of
  // midterm and final exam for just one student.

  for (int i = 0; i < mid_mark.length; i++) {
    avg_arr[i] = (mid_mark[i] + final_mark[i]) / 2;
  }
}

void letter_grade_calculation (double[] student_avg, char [] grades_array) {
  // This function is supposed to calculate and return a letter grade for
  // one student's average on midterm and final exam. The grading scheme is:
  // marks >= 90 to 100    A
  // marks >= 80 to 89     B
  // marks >= 70 to 79     C
  // marks >= 60 to 69     D
  // marks < 60            F
  for (int i = 0; i < student_avg.length; i++) {

    if (student_avg[i] >= 90 && student_avg[i] <= 100) {
      grades_array[i] = 'A';
    } else if (student_avg[i] >= 80 && student_avg[i] < 90) {
      grades_array[i] = 'B';
    } else if (student_avg[i] >= 70 && student_avg[i] < 80) {
      grades_array[i] = 'C';
    } else if (student_avg[i] >= 60 && student_avg[i] < 70) {
      grades_array[i] = 'D';
    } else if (student_avg[i] < 60) {
      grades_array[i] = 'F';
    } else {
      println("This mark is invalid");
      grades_array[i] = '!';
    }
  }
}

void print_records (int[] students_id, double [] midterm_marks, double [] final_marks, String[] student_name, double[] avg_arr, char [] letters) {
  // This function is supposed to reorder the elements of indices to indicate
  // the order of id numbers in students_id. The element values in students_id
  // should not change.

  for (int i = 0; i < students_id.length; i++) {
    println(student_name[i] + "\t" + students_id[i] + "\t" + midterm_marks[i] + "\t" + final_marks[i] + "\t" + avg_arr[i] + "\t \t" + letters[i]);
  }
}

void sort_records_by_id (int[] indices, int [] students_id) {
  // This function is supposed to reorder the elements of indices to indicate
  // the order of id numbers in students_id. The element values in students_id
  // should not change.

  int counter = 0;
  for (int i = 0; i < students_id.length; i++)
  {
    for (int j = 0; j < students_id.length; j++)
    {
      if (students_id[i] > students_id[j]) {
        counter ++;
      }
    }
    indices[i] = counter;
    counter = 0;
  }
}

void print_sorted_records (int[] indices, int[] students_id, double[] midterm_marks, double[] final_marks, String[] students_name, double[] avg, char[] letters) {
  // This function is supposed to print the students' records one record
  // per line, after sorting, based on the new order of indices created by
  // sort_records_by_id.
  // It should display first Tim's record, then Rob's, followed by
  // Lee's and so on, as shown in the screenshot of program output.

  for (int i = 0; i < indices.length; i++) {
    for (int j = 0; j < indices.length; j++) {
      if (indices[j] == i) {
        println(students_name[j] + "\t" + students_id[j] + "\t" + midterm_marks[j] + "\t" + final_marks[j] + "\t" + avg[j] + "\t \t" + letters[j]);
      }
    }
  }
}

int search (String[] students_name, String target) {
  // This function is supposed to search for a particular student by
  // his/her name. The function returns the position of the student in the list.
  // For example if we are searching for Kim it should return 3.
  // If search fails and target is not found it should return -1.

  for (int i = 0; i < students_name.length; i++) {
    if (students_name[i].equals(target)) {
      return i;
    }
  }
  return -1;
}
