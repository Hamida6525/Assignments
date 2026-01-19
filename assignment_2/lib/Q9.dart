/* Exercise 9:
9. a) Create List> students with two items, each having name and grade.
b) Print the grade of the second student using index and key.
c) Add both grades and print the average grade as double. */

void main() {
  // a) Create List<Map<String, dynamic>> students
  List<Map<String, dynamic>> students = [
    {'name': 'ahmed', 'grade': 70},
    {'name': 'mohamed', 'grade': 90}
  ];

  // b) Print the grade of the second student
  print('Grade of second student: ${students[1]['grade']}');

  // c) Add both grades and print the average grade as double
  double averageGrade = (students[0]['grade'] + students[1]['grade']) / 2;
  print('Average grade: $averageGrade');
}