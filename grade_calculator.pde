void setup()
{ 
  int[] students_id = {12757, 20001, 12334, 14332, 99999,
                       10111, 20101, 12034, 10332, 99991};
  double[] midterm_marks = {99, 67, 88, 91, 56, 90, 70, 69, 79, 59};
  double[] final_marks = {89, 76, 80, 67, 99, 98, 56, 96, 90, 60};
  String[] students_name= {"Tim", "Joe", "Ali", "Kim", "Pam",
                            "Rob", "Ben", "Ted", "Lee", "Jim"};

  print_records(students_id, midterm_marks, final_marks, students_name);
  
  // Array of indices will be used to indicate the order of records based on
  // students' id numbers.
  int[] indices = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
 
  // Insertion sort will reorder the indices based on ids in ascending order.
  // (The array students_id won't change at all.)
  sort_records_by_id(indices, students_id);

  println();  
  println("Students records after sorting id by numbers:");
  print_sorted_records(indices, students_id,
                       midterm_marks, final_marks, students_name);
  
  // Search for positions of students in the array of names and print
  // their records, if available.

  // This search should succeed.
  int position = search(students_name, "Kim");
  if (position == -1) {
    println("Search failed: " + "Kim" + " NOT FOUND");
  }
  else {
    double average = calculate_student_average(midterm_marks[position],
                                               final_marks[position]);
    println(students_name[position]
            + " was found with id " + students_id[position] 
            + ", midterm mark " + midterm_marks[position]
            + ", final mark " + final_marks[position] 
            + ", term average " + average
            + ", and overall grade " + letter_grade_calculation (average));  
  }      
    
  // This search should fail.
  position = search(students_name, "Sam");    
  if (position == -1) {
    println("Search failed: " + "Sam" + " NOT FOUND");
  }
  else {
    double average = calculate_student_average(midterm_marks[position],
                                               final_marks[position]);
    println(students_name[position]
            + " was found with id " + students_id[position] 
            + ", midterm mark " + midterm_marks[position]
            + ", final mark " + final_marks[position] 
            + ", term average " + average
            + ", and overall grade " + letter_grade_calculation (average));  
  }      
}
